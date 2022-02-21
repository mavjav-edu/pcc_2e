---
layout: default
title: Survey
nav_order: 100
has_children: false
parent: Home
has_toc: false
---

## Feedback a survey

The author wants to know what you think of *Python Crash Course*!
{: .fs-6 .fw-300 }

<iframe title="Python Crash Course - Reader Survey" alt="Google Survey Python Crash Course Reader Survey" src="https://docs.google.com/forms/d/e/1FAIpQLSez7B3mKB9hmOKoiE7LS5ZmpaWME_KNOiLsznH4zb0UtSoxsA/viewform?embedded=true" width="100%" height="5501px" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe>
{: .fs-6 .fw-300 }

The author uses the survey results to refine what's offered in the book, and in these online resources. Your feedback will also help the author decide what to focus on in his next Python book.
<script type="application/javascript">
const buffer = 20; //scroll bar buffer
const iframe = document.getElementById('survey');

function pageY(elem) {
    return elem.offsetParent ? (elem.offsetTop + pageY(elem.offsetParent)) : elem.offsetTop;
}

function resizeIframe() {
    var height = document.documentElement.clientHeight;
    height -= pageY(document.iframe) + buffer ;
    height = (height < 0) ? 0 : height;
    iframe.style.height = height + 'px';
}

// .onload doesn't work with IE8 and older.
if (iframe.attachEvent) {
    iframe.attachEvent("onload", resizeIframe);
} else {
    iframe.onload=resizeIframe;
}

window.onresize = resizeIframe;
</script>