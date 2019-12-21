(function($){
    class Manager {
        constructor(data,root) {
            this.data = data;
            this.root = root;
            this.oBox = this.render();
        }
        init() {
            this.render();
            this.insertView();
            this.addEvent();
        }
        render() {
            // this.data.src
            
            let oBoxHtml = document.createElement("div");
            oBoxHtml.className = "imgbox";
            oBoxHtml.innerHTML = `
            <div class="minImg">
                <img src="${this.data.src}">
                <div class="img-mask" style="display:none"></div>
            </div>
            <div class="maxImg" style="display:none">
                <img src="${this.data.src}">
            </div>
            `
            return oBoxHtml;
        }
        insertView(){
            this.root.appendChild(this.oBox)
        }
        addEvent() {
            var imgBox = this.oBox;
            var minBox = this.oBox.querySelector('.minImg');
            var minImg = this.oBox.querySelector('.minImg img');
            var mask =  this.oBox.querySelector('.img-mask');
            var maxBox = this.oBox.querySelector('.maxImg');
            var maxImg = this.oBox.querySelector('.maxImg img');
    
            // 小图片盒子绑定鼠标移入事件
    
            minBox.onmouseenter = function () {
                mask.style.display = "block";
                maxBox.style.display = "block";
            }
    
            minBox.onmousemove = function (e) {
                // 为什么不用ev.clientY而用ev.pageY
                // console.log(e.clientY, imgBox.offsetTop);
                var moveX = e.pageX - imgBox.offsetLeft - mask.offsetWidth / 2;
                var moveY = e.pageY - imgBox.offsetTop - mask.offsetHeight / 2;
    
                // 遮罩可以运动的最大X方向的距离
                var maxX = minBox.offsetWidth - mask.offsetWidth;
                // 遮罩可以运动的最大Y方向的距离
                var maxY = minBox.offsetHeight - mask.offsetHeight;
    
                // 设置最大可以移动距离
                if (moveX >= maxX) {
                    moveX = maxX;
                }
                if (moveY >= maxY) {
                    moveY = maxY;
                }
    
                // 设置最小可以移动距离
                if (moveX <= 0) {
                    moveX = 0;
                }
    
                if (moveY <= 0) {
                    moveY = 0;
                }
                // 大图片可以移动的最大距离
                var biliX = (maxImg.offsetWidth - maxBox.offsetWidth) / maxX;
                // 这个比例相当于是 遮罩移动一像素，大图片需要移动的距离
                var biliY = (maxImg.offsetHeight - maxBox.offsetHeight) / maxY;
    
                // 给遮罩添加移动
                mask.style.top = moveY + 'px';
                mask.style.left = moveX + 'px';
    
                // 因为大图片移动的方向是相反的所以要加负号
                maxImg.style.top = -moveY * biliY + 'px';
                maxImg.style.left = -moveX * biliX + 'px';
    
            }
            minBox.onmouseleave = function () {
                mask.style.display = "none";
                maxBox.style.display = "none";
            }
        }
    }
    $.prototype.extend({
        Zoom(data){
            this.each(function(){
                let manager = new Manager(data,this);
                manager.init()
            })
        }
    })
})(jQuery)