BackTop=function(btnId,DynamicDisplay){
	var btn = document.getElementById(btnId);
	var d = document.documentElement;
	window.onscroll = set;
	btn.onclick = function(){
		btn.style.display = "none";
		window.onscroll = null;
		this.timer = setInterval(function(){
			d.scrollTop-= Math.ceil(d.scrollTop * 0.1);
			if(d.scrollTop == 0)clearInterval(btn.timer,window.onscroll=set);
		},10);
	};
	function set(){
		if(DynamicDisplay)btn.style.display = d.scrollTop?'block':"none";
	};
};
BackTop('gotop',true);
