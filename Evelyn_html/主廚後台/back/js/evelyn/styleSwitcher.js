
jQuery(window).on('load', function () {



});
(function ($) {
    "use strict"
    addSwitcher();


    const body = $('body');
    const html = $('html');


    //change the container layout controller
    containerLayoutSelect.on('change', function () {
        if (this.value === "boxed") {

            if (body.attr('data-layout') === "vertical" && body.attr('data-sidebar-style') === "full") {
                body.attr('data-sidebar-style', 'overlay');
                body.attr('data-container', this.value);
                return;
            }
        }

        body.attr('data-container', this.value);
    });

});