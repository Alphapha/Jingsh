//插入图片
function change(ev){       
					var event = window.event || ev;
					var files = event.target.files[0];
					var myimg = document.getElementById("wximg");
					myimg.src = URL.createObjectURL(files);
				}

//打印按钮
function doPrint() {
	document.getElementById("hide").style.display="none"
	// document.getElementById("hide2").style.display="none"
	// document.getElementById("hide3").style.display="none"
	window.print(); 
} 
//隐藏按钮
function hide1() {
	document.getElementById("fh").style.display="none"
}
//显示按钮
function display1() {
	document.getElementById("fh").style.display="inline"
}

