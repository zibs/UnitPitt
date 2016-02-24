$(document).ready(function() {
    var fonts = ["VT323", "Berkshire Swash", "Reenie Beanie", "Bonbon", "Rock Salt", "Audiowide", "Poiret One", "Raleway", "Open Sans", "Playball", "Cinzel Decorative", "Codystar", "Monofett"];

    $(".project-font").hover(function() {
        var random_font = fonts[(Math.floor(Math.random() * 12))];
        $(this).css({
            "font-family": random_font
        });
    });
});

$(document).ready(function() {
    // Load up Image Links
    var imagesWrapper = document.getElementsByClassName("why-swap-images");
    var images        = $(imagesWrapper).children();
    var colors = ["rgba(135, 251, 67, 0.6)", "rgba(150, 69, 254, 0.6)", "rgba(252, 199, 76, 0.7)", "rgba(231, 62, 39, 0.7)", "rgba(49, 117, 244, 0.7)"];
    $(".whyami").mousemove(function() {
        // With EACH HOVER get the MAIN imagelink
        var mainImageWrapper = document.getElementsByClassName("whyami");
        var mainImage       = $(mainImageWrapper).children()[0];
        // GET THE RANDOM ATTRS
        var randomImage = images[(Math.floor(Math.random() * 40))];
        var random_alt      = randomImage.alt;
        var random_src      = randomImage.src;
        // GET RANDOM COLOR
        var randomColor = colors[(Math.floor(Math.random() * 5))];
        // SWITCH THEM
        $(mainImage).attr( { src: random_src, alt: random_alt} );
        $(".whyami").css({"background-color": randomColor });
        $(this).css({"transform": "rotate" + "(" + (Math.random() * 300) + "deg)"});
        // yahoo :)
    });
});

// rotatimg
// I want to, upon HOVERING,
// CHANGE and MATCH the IMAGE with the LINK to the appropriate PAGE
// to do so I will need to create a association between IMAGELINKPAGE
// this association will then be switched upon hovering.

$(document).ready(function() {
    // Load up Image Links
    var imageLinkWrapper = document.getElementsByClassName("swap-images");
    var imageLinks        = $(imageLinkWrapper).children();

    $(".archive-link").hover(function() {
        // With EACH HOVER get the MAIN imagelink
        var mainLinkWrapper = document.getElementsByClassName("rotatimg");
        var mainLink        = $(mainLinkWrapper).children()[0];
        var mainImage       = mainLink.children[0];

        // GET THE RANDOM ATTRS
        var randomImageLink = imageLinks[(Math.floor(Math.random() * 7))];
        var random_href     = randomImageLink.href;
        var random_alt      = randomImageLink.children[0].alt;
        var random_src      = randomImageLink.children[0].src;

        // SWITCH THEM
        $(mainLink).attr( { alt: random_alt, href: random_href} );
        $(mainImage).attr( { src: random_src, alt: random_alt}  );
        // yahoo :)
    });
});


$(document).ready(function() {
    $("#musikklub_poster").hover(function() {
         $("#musikklub_poster_link").fadeToggle("fast");
    });

    $("#wishbone_poster").hover(function() {
         $("#wishbone_poster_link").fadeToggle("fast");
    });

    $("#library_poster").hover(function() {
         $("#library_poster_link").fadeToggle("fast");
    });

     $("#archive_posters").hover(function() {
         $("#archive_posters_link").fadeToggle("fast");
    });
});

// JAMIE
// var w = Math.max(document.documentElement.clientWidth, window.innerWidth || 0)
// var h = Math.max(document.documentElement.clientHeight, window.innerHeight || 0)
// ZEB
//
$(document).ready(function() {
$(".backbone").click(function() {
    var clicked_image_path = $(this).attr("src");
    $(".joels-statement").css({"background-image": "url(" + clicked_image_path + ")"});
    });
});


$(document).ready(function(){
  $('.wishboneimages').draggable();
});

$(document).ready(function(){
  $('.wishboneimages').click(function() {
        $(this).css({"-webkit-animation": "drip 20s 2 alternate", "animation" : "drip 20s 2 alternate"});
        $(this).addClass("animating");
  });
});


$(document).ready(function() {
         $(".wishboneimages").click(function () {
             if ($(this).hasClass('paused')) {
                 $(this).removeClass('paused');
                 return;
             }
             $(this).addClass('paused');
             $(this).on('webkitAnimationEnd', function () {
                 this.style.webkitAnimationPlayState = "paused";
             });
         });
});

// BORING ART
$(document).ready(function() {
    $(".boringart").click(function() {
        $(this).css({
            "background-size": "175%"
        });
        $(this).click(function() {
            $(this).css({
                "background-size": "100%"
            });
            $(this).click(function() {
                $(this).css({
                    "background-size": "contain",
                    "background-position": "0%",
                    "height": "100%",
                    "width": "100%",
                    "cursor": "initial",
                    "background-repeat": "repeat-x"
                });
            });
        });
    });
});

// PICTOGRAPHIX

$(document).ready(function() {
    $(".pictographix").animate({
        width: "50%",
        height: "100vh"
    }, 10000);
    $(".pictographix").fadeOut(5000);
});

// SUBLIMESHOW
$(document).ready(function() {
    $(".ingrids-sublime").click(function() {
        $(this).css({
            "display": "none"
        });
    });
});

// $(".unit-font").hover(function() {
// var random_font = fonts[(Math.floor(Math.random()*12))]
// $(this).css({"font-family": random_font});
// });
// height
// var h = Math.max(document.documentElement.clientHeight, window.innerHeight || 0)

// Directory Javascripts

// scroll
// $(document).ready(function() {
    // $("#enter-site").click(function() {
        // $('html, body').animate({
            // scrollTop: $("#musikklub_poster").offset().top
        // }, 2000);
    // });
// });

// $(document).ready(function() {
    // var possible_background = ["joelzeb3.jpg", "joelzeb9.jpg", "joelzeb10.jpg", "joelzeb11.jpg"];
    // $(".joels-statement").click(function() {
    // $(".zebjoel-wrap").css({"background-image": "url(" + background + ")"});
    // });
// });

// WHY AM I AFRAID TO LOVE
// $(document).ready(function() {
//     var img_names = ["wpizza.png", "wrobin.png"];
//     $(".whyami").hover(function() {
//       var random_img  = img_names[(Math.floor(Math.random() * 2))];
//       $(this).css({
//         "background-image": "image-url(" + random_img + ")"
//       });
//     });
// });
// Generated by CoffeeScript 1.3.3
