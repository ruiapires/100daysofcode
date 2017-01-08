$(document).ready(function() {
    $('ul.nav').on('click', 'a', function(e) {
        e.preventDefault();
        $('html, body').animate({
            scrollTop: $( $.attr(this, 'href') ).offset().top
        }, 500);
    });
});
