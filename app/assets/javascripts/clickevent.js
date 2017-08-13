console.log("Whatever")


$(document).ready(function () {
    console.log($(".banner").length);
    if ($('.banner').length) {
        console.log("Try me");
    }
})