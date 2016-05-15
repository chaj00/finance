$(window).ready(function () {

    //var iwinsize = $(window).height();
    var iwinsize = window.innerHeight + 80;
    var idocsize = $(document).height();

    if (iwinsize > idocsize) {
        $(".resize_box").css("height", iwinsize - idocsize);
        //$(".resize_inbox").css("background-color", "red");
    }

});