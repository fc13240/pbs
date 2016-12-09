function newTopslider(p) {
    var n = jQuery(p);
    if (n.length < 1) {
        return
    }
    var l = n.find(".index_topbanner_fold");
    var v = n.find(".big_topbanner");
    var s = jQuery("#smallTopBanner");
	setTimeout(function(){v.slideDown();},1000)
	setTimeout(function(){
		l.removeClass("index_topbanner_unfold").html("展开<i></i>");
		v.slideUp();
		s.slideDown();
	},4000)
    l.click(function() {
        if ($(this).hasClass("index_topbanner_unfold")) {
            $(this).removeClass("index_topbanner_unfold");
            $(this).html("展开<i></i>");
            v.slideUp();
            s.slideDown();
        } else {
            $(this).addClass("index_topbanner_unfold");
            $(this).html("收起<i></i>");
            v.slideDown();
            s.slideUp();
        }
    });
    var u = v.find("img");
    u.eq(0).load(function() {
        var d = window.navigator.userAgent.toLowerCase();
        var c = /msie ([\d\.]+)/;
        if (c.test(d)) {
            var a = parseInt(c.exec(d)[1]);
            if (a <= 6) {
                var b = $(this).height();
                if (b > 400) {
                    $(this).css("height", 400)
                }
            }
        }
        n.slideDown();
        lamuSlidUpAuto(l)
    });
}
function lamuSlidUpAuto(e) {
    var f = function() {
        e.trigger("click")
    };
    var d = setTimeout(f, 5000);
    e.click(function() {
        clearInterval(d)
    })
}