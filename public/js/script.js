$('#prev').addClass('d-none')
let page = 1;
let link = 'https://kp.kinobox.tv/films/popular?films=true&released=true&page=';
let link1 = 'https://kp.kinobox.tv/films/popular?series=true&released=true&page=';
let popfilm = fetch(link + page)
    .then(response => response.json());

popfilm.then(data => {
    let films = data.data.films
    for (let i = 0; i < films.length; i++) {
        if (films[i]['posterUrl']) {
            if (films[i]['type'] == 'Film') {
                let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top pt-4  bg-dark' src='" + films[i]['posterUrl'] + "'><div class='card-body  bg-dark'>Фильм<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
                $('.films').append(html);
            } else {
                let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top pt-4  bg-dark' src='" + films[i]['posterUrl'] + "'><div class='card-body  bg-dark'>Сериал<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
                $('.films').append(html);
            }
            $('#cn' + films[i]['id']).click(function () {
                $('.films').addClass('d-none');
                $('.pages').addClass('d-none');
                $('.player').removeClass('d-none');
                $('.watch').attr("src", 'https://pandahd.lat/film/' + films[i]['id'] + '/');
                $('.watch').attr("id", 'wch' + films[i]['id']);
            });

        }
    }
    ;
});



$('#next').click(function () {
    $('.films').empty();
    $('#prev').removeClass('d-none');
    $('.films').removeClass('d-none');
    page++
    popfilm = fetch(link + page)
        .then(response => response.json());
    popfilm.then(data => {
        let films = data.data.films
        for (let i = 0; i < films.length; i++) {
            if (films[i]['posterUrl']) {
                if (films[i]['type'] == 'Film') {
                    let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top pt-4  bg-dark' src='" + films[i]['posterUrl'] + "'><div class='card-body  bg-dark'>Фильм<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
                    $('.films').append(html);
                } else {
                    let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top pt-4  bg-dark' src='" + films[i]['posterUrl'] + "'><div class='card-body  bg-dark'>Сериал<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
                    $('.films').append(html);
                }
                $('#cn' + films[i]['id']).click(function () {
                    $('.films').addClass('d-none');
                    $('.pages').addClass('d-none');
                    $('.player').removeClass('d-none');
                    $('.watch').attr("src", 'https://pandahd.lat/film/' + films[i]['id'] + '/');
                    $('.watch').attr("id", 'wch' + films[i]['id']);
                });
            }
        }
        ;
    });
});

$('#prev').click(function () {
    $('.films').empty();
    $('.films').removeClass('d-none');
    if (page > 1) {
        page--
        if (page == 1) {
            $('#prev').addClass('d-none')
        }
    }
    popfilm = fetch(link + page)
        .then(response => response.json());
    popfilm.then(data => {
        let films = data.data.films
        for (let i = 0; i < films.length; i++) {
            if (films[i]['posterUrl']) {
                if (films[i]['type'] == 'Film') {
                    let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top pt-4  bg-dark' src='" + films[i]['posterUrl'] + "'><div class='card-body  bg-dark'>Фильм<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
                    $('.films').append(html);
                } else {
                    let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top pt-4  bg-dark' src='" + films[i]['posterUrl'] + "'><div class='card-body  bg-dark'>Сериал<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
                    $('.films').append(html);
                }
                $('#cn' + films[i]['id']).click(function () {
                    $('.films').addClass('d-none');
                    $('.pages').addClass('d-none');
                    $('.player').removeClass('d-none');
                    $('.watch').attr("src", 'https://pandahd.lat/film/' + films[i]['id'] + '/');
                    $('.watch').attr("id", 'wch' + films[i]['id']);
                });
            }
        }
        ;
    });
});


$('#word').on('input', function () {

    let searchword = encodeURIComponent($('#word').val());
    let link = "https://kp.kinobox.tv/films/search/?query=" + searchword

    $('.films').empty();
    $('.pages').empty();
    $('.films').removeClass('d-none');
    $('.player').addClass('d-none');


    let search = fetch(link)
        .then(response => response.json());
    search.then(data => {
        let films = data.data.items
        for (let i = 0; i < films.length; i++) {
            if (films[i]['type'] == 'Film') {
                let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top pt-4  bg-dark' src='https:" + films[i]['gallery']['posterUrl'] + "/1920x'><div class='card-body  bg-dark'>Фильм<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
                $('.films').append(html);
            } else {
                let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top pt-4  bg-dark' src='https:" + films[i]['gallery']['posterUrl'] + "/1920x'><div class='card-body  bg-dark'>Сериал<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
                $('.films').append(html);
            }
            $('#cn' + films[i]['id']).click(function () {
                $('.films').addClass('d-none');
                $('.pages').addClass('d-none');
                $('.player').removeClass('d-none');
                $('.watch').attr("src", 'https://pandahd.lat/film/' + films[i]['id'] + '/');
                $('.watch').attr("id", 'wch' + films[i]['id']);
            });
        }
        ;

    });

});


$('#serials').click(function () {
    $('.films').empty();
    $('.pages').empty();
    $('.player').addClass('d-none');
    $('.films').removeClass('d-none');
    $('.pages').removeClass('d-none');
    popfilm = fetch(link1 + page)
        .then(response => response.json());
    popfilm.then(data => {
        let films = data.data.films
        for (let i = 0; i < films.length; i++) {
            if (films[i]['posterUrl']) {
                if (films[i]['type'] == 'Film') {
                    let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top pt-4  bg-dark' src='" + films[i]['posterUrl'] + "'><div class='card-body  bg-dark'>Фильм<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
                    $('.films').append(html);
                } else {
                    let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top pt-4  bg-dark' src='" + films[i]['posterUrl'] + "'><div class='card-body  bg-dark'>Сериал<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
                    $('.films').append(html);
                }
                $('#cn' + films[i]['id']).click(function () {
                    $('.films').addClass('d-none');
                    $('.pages').addClass('d-none');
                    $('.player').removeClass('d-none');
                    $('.watch').attr("src", 'https://pandahd.lat/film/' + films[i]['id'] + '/');
                    $('.watch').attr("id", 'wch' + films[i]['id']);
                });
            }
        }
        ;
        let page = 1;
        let html1 = "<button type='button' class='btn btn-dark mr-2' id='serprev'>prev</button><button type='button' class='btn btn-dark' id='sernext'>next</button></div>"
        $('.pages').append(html1);
        $('#serprev').addClass('d-none');
        $('#sernext').click(function () {
            $('.films').empty();
            $('#serprev').removeClass('d-none');
            $('.films').removeClass('d-none');
            page++
            popfilm = fetch(link1 + page)
                .then(response => response.json());
            popfilm.then(data => {
                let films = data.data.films
                for (let i = 0; i < films.length; i++) {
                    if (films[i]['posterUrl']) {
                        if (films[i]['type'] == 'Film') {
                            let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top pt-4  bg-dark' src='" + films[i]['posterUrl'] + "'><div class='card-body  bg-dark'>Фильм<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
                            $('.films').append(html);
                        } else {
                            let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top pt-4  bg-dark' src='" + films[i]['posterUrl'] + "'><div class='card-body  bg-dark'>Сериал<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
                            $('.films').append(html);
                        }
                        $('#cn' + films[i]['id']).click(function () {
                            $('.films').addClass('d-none');
                            $('.pages').addClass('d-none');
                            $('.player').removeClass('d-none');
                            $('.watch').attr("src", 'https://pandahd.lat/film/' + films[i]['id'] + '/');
                            $('.watch').attr("id", 'wch' + films[i]['id']);
                        });
                    }
                }
                ;
            });
        });

        $('#serprev').click(function () {
            $('.films').empty();
            $('.films').removeClass('d-none');
            if (page > 1) {
                page--
                if (page == 1) {
                    $('#serprev').addClass('d-none')
                }
            }
            popfilm = fetch(link1 + page)
                .then(response => response.json());
            popfilm.then(data => {
                    let films = data.data.films
                    for (let i = 0; i < films.length; i++) {
                        if (films[i]['posterUrl']) {
                            if (films[i]['type'] == 'Film') {
                                let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top pt-4  bg-dark' src='" + films[i]['posterUrl'] + "'><div class='card-body  bg-dark'>Фильм<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
                                $('.films').append(html);
                            } else {
                                let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top pt-4  bg-dark' src='" + films[i]['posterUrl'] + "'><div class='card-body  bg-dark'>Сериал<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
                                $('.films').append(html);
                            }
                            $('#cn' + films[i]['id']).click(function () {
                                $('.films').addClass('d-none');
                                $('.pages').addClass('d-none');
                                $('.player').removeClass('d-none');
                                $('.watch').attr("src", 'https://pandahd.lat/film/' + films[i]['id'] + '/');
                                $('.watch').attr("id", 'wch' + films[i]['id']);
                            });
                        }
                    }
                    ;
                }
            );
        });
    });
});

