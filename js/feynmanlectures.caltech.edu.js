$(document).ready(function () {
    $('body').css({
        fontFamily: 'freight-sans-pro, Optima',
        fontSize: '20px',
        backgroundColor: '#fefefe'
    });
    $('.document').css({
        paddingLeft: '10px',
        paddingRight: '10px',
        margin: '0 auto',
        maxWidth: '600px'
    });
    $('.document').removeClass('document');
    $('.floating-menu').remove();
});

// Typekit
(function(d) {
    var config = {
        kitId: 'nkv4ssz',
        scriptTimeout: 3000
    },
    h=d.documentElement,t=setTimeout(function(){h.className=h.className.replace(/\bwf-loading\b/g,"")+" wf-inactive";},config.scriptTimeout),tk=d.createElement("script"),f=false,s=d.getElementsByTagName("script")[0],a;h.className+=" wf-loading";tk.src='//use.typekit.net/'+config.kitId+'.js';tk.async=true;tk.onload=tk.onreadystatechange=function(){a=this.readyState;if(f||a&&a!="complete"&&a!="loaded")return;f=true;clearTimeout(t);try{Typekit.load(config)}catch(e){}};s.parentNode.insertBefore(tk,s)
})(document);
