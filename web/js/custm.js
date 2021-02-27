var map;

function initMap() {
    var myLatLng = {lat: 54.214618, lng: 37.622021};

    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 18,
        center: myLatLng
    });

    var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,

    });
}


$('#myModal').on('shown.bs.modal', function () {

    $('#myInput').trigger('focus');

});


$(document).scroll(function (e) {
    let scroll = document.documentElement.scrollTop;

    if (scroll >= 50) {
        $('.nav-fix').addClass('active');
        $('.menwer').addClass('active');
    } else {
        $('.nav-fix').removeClass('active');
        $('.menwer').removeClass('active');
    }
});


$('.owl-top-services').owlCarousel({
    loop: false,
    margin: 100,
    items: 3,
    smartSpeed: 550,
    autoplay: true,
    nav: true,
    responsive: {
        0: {
            items: 1
        },
        700: {
            items: 1
        },
        768: {
            items: 2
        },
        992: {
            items: 3
        }
    }
});


$('.owl-all-services').owlCarousel({
    loop: true,
    margin: 0,
    autoplay: true,
    smartSpeed: 550,
    nav: false,
    responsive: {
        0: {
            items: 1
        },
        700: {
            items: 1
        },
        768: {
            items: 2
        },
        992: {
            items: 3
        }
    }
});


$('.one-list').owlCarousel({
    loop: true,
    margin: 5,
    autoplay: true,
    smartSpeed: 950,
    items: 1,
    nav: false,
});


$('.one-list1').owlCarousel({
    loop: true,
    autoplay: true,
    smartSpeed: 950,
    margin: 5,
    items: 1,
    nav: false,
});


/*
 $(document).ready(function () {
      urlCheck();
  });

 function urlCheck() {

}
*/
