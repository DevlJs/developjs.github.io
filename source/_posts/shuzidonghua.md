title: javascript 数字动画、递增特效
date: 2015-12-01 02:36:10
tags: javascript 数字动画、递增特效
---

* 效果
<p data-height="266" data-theme-id="19960" data-slug-hash="WQVKoQ" data-default-tab="result" data-user="ZhouHengYi" class='codepen'>See the Pen <a href='http://codepen.io/ZhouHengYi/pen/WQVKoQ/'>javascript 数字动画、递增特效</a> by henry (<a href='http://codepen.io/ZhouHengYi'>@ZhouHengYi</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
<script async src="//assets.codepen.io/assets/embed/ei.js"></script>

___
* HTML

```
<h2 class="images">0</h2>
<input type="text" value="0" id="txt_end"/>
-
<input type="text" value="0" id="txt_start" />
<input type="button" value="+500" onclick="setNum(500);"/>
```

* JavaScript

```
var countToNumber = function (element, number, suffix, duration) {
  $({count: parseInt(element.text().split("+")[0].replace(/\,/g, ''))}).animate({count: number}, {
    duration: duration ? duration : 1000,
    easing: 'swing',
    step: function (now) {
      element.text((Math.floor(now) + suffix).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,"));
    },
    complete: function () {
      countingFromZero = false;
    }
  });
}

//调用
countToNumber($('.images'), 500, '', 200);

function setNum(){
  countToNumber($('.images'), $("#txt_start").val(), '', $("#txt_end").val());
}
```

* 依赖 jquery
