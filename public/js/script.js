let link = 'https://kp.kinobox.tv/films/popular?films=true&released=true&page=';
let link1 = 'https://kp.kinobox.tv/films/popular?series=true&released=true&page=';
let ifo = 'https://api.kinopoisk.dev/v1.4/movie/';


let page = $('#next').attr('val');
let pathName = $('#pathName').attr('val');
if (pathName == 'homepage' || pathName == 'page') {
    let popfilm = fetch(link + page)
        .then(response => response.json());

    popfilm.then(data => {
        let films = data.data.films
        for (let i = 0; i < films.length; i++) {
            if (films[i]['posterUrl']) {
                let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top   bg-dark' src='" + films[i]['posterUrl'] + "'><div class='card-body  bg-dark'>Фильм<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
                $('.films').append(html);
            }
            $('#cn' + films[i]['id']).click(function () {
                $('.films').addClass('d-none');
                $('.pages').addClass('d-none');
                $('.player').removeClass('d-none');
                kbox('.kinobox_player', {
                    search: {
                        kinopoisk: films[i]['id'],
                        title: films[i]['title']['russian']
                    }
                });
                const options = {
                    method: 'GET',
                    headers: {accept: 'application/json', 'X-API-KEY': '6M3VFC5-FR34F7A-QW7J0X6-R38720S'}
                };
                let filminfo = fetch(ifo+films[i]['id'], options)
                    .then(res => res.json());
                filminfo.then(data => {
                    console.log(data);
                    $('#poster').removeAttr("src");
                    $('#name').empty();
                    $('#year').empty();
                    $('#countries').empty();
                    $('#genres').empty();
                    $('#desc').empty();
                    $('#poster').attr("src", data.poster.previewUrl);
                    $('#name').append(data.name);
                    $('#year').append('Год:   ');
                    $('#year').append(data.year+' ,');
                    $('#countries').append('Страна:  ');
                    for (let i = 0; i < data.countries.length; i++) {
                        $('#countries').append(data.countries[i].name+'  ,   ');
                    }
                    $('#genres').append('Жанр:    ');
                    for (let i = 0; i < data.genres.length; i++) {
                        $('#genres').append(data.genres[i].name+'  ,   ');
                    }
                    $('#desc').append('Описание:<br>');
                    $('#desc').append(data.description);
                })
            });
        }
    });
}

if (pathName == 'serials' || pathName == 'serialpage') {

    let popser = fetch(link1 + page)
        .then(response => response.json());
    popser.then(data => {
        let films = data.data.films
        for (let i = 0; i < films.length; i++) {
            if (films[i]['posterUrl']) {
                let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top   bg-dark' src='" + films[i]['posterUrl'] + "'><div class='card-body  bg-dark'>Сериал<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
                $('.films').append(html);
            }
            $('#cn' + films[i]['id']).click(function () {
                $('.films').addClass('d-none');
                $('.pages').addClass('d-none');
                $('.player').removeClass('d-none');
                kbox('.kinobox_player', {
                    search: {
                        kinopoisk: films[i]['id'],
                        title: films[i]['title']['russian']
                    }
                });
                const options = {
                    method: 'GET',
                    headers: {accept: 'application/json', 'X-API-KEY': '6M3VFC5-FR34F7A-QW7J0X6-R38720S'}
                };
                let filminfo = fetch(ifo+films[i]['id'], options)
                    .then(res => res.json());
                filminfo.then(data => {
                    console.log(data);
                    $('#poster').removeAttr("src");
                    $('#name').empty();
                    $('#year').empty();
                    $('#countries').empty();
                    $('#genres').empty();
                    $('#desc').empty();
                    $('#poster').attr("src", data.poster.previewUrl);
                    $('#name').append(data.name);
                    $('#year').append('Год:   ');
                    $('#year').append(data.year+' ,');
                    $('#countries').append('Страна:  ');
                    for (let i = 0; i < data.countries.length; i++) {
                        $('#countries').append(data.countries[i].name+'  ,   ');
                    }
                    $('#genres').append('Жанр:    ');
                    for (let i = 0; i < data.genres.length; i++) {
                        $('#genres').append(data.genres[i].name+'  ,   ');
                    }
                    $('#desc').append('Описание:<br>');
                    $('#desc').append(data.description);
                })
            });
        }
    });
}

$('#word').on('input', function () {
    let searchword = encodeURIComponent($('#word').val());
    let link = "https://kp.kinobox.tv/films/search/?query=" + searchword;
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
                let html = "<div class='col-md-2 col-4 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top bg-dark' src='https:" + films[i]['gallery']['posterUrl'] + "/1920x'><div class='card-body  bg-dark'>Фильм<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
                $('.films').append(html);
            } else {
                let html = "<div class='col-md-2 col-4 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top bg-dark' src='https:" + films[i]['gallery']['posterUrl'] + "/1920x'><div class='card-body  bg-dark'>Сериал<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
                $('.films').append(html);
            }
            $('#cn' + films[i]['id']).click(function () {
                $('.films').addClass('d-none');
                $('.pages').addClass('d-none');
                $('.player').removeClass('d-none');
                kbox('.kinobox_player', {
                    search: {
                        kinopoisk: films[i]['id'],
                        title: films[i]['title']['russian']
                    }
                });
                const options = {
                    method: 'GET',
                    headers: {accept: 'application/json', 'X-API-KEY': '6M3VFC5-FR34F7A-QW7J0X6-R38720S'}
                };
                let filminfo = fetch(ifo+films[i]['id'], options)
                    .then(res => res.json());
                filminfo.then(data => {
                    console.log(data);
                    $('#poster').removeAttr("src");
                    $('#name').empty();
                    $('#year').empty();
                    $('#countries').empty();
                    $('#genres').empty();
                    $('#desc').empty();
                    $('#poster').attr("src", data.poster.previewUrl);
                    $('#name').append(data.name);
                    $('#year').append('Год:   ');
                    $('#year').append(data.year+' ,');
                    $('#countries').append('Страна:  ');
                    for (let i = 0; i < data.countries.length; i++) {
                        $('#countries').append(data.countries[i].name+'  ,   ');
                    }
                    $('#genres').append('Жанр:    ');
                    for (let i = 0; i < data.genres.length; i++) {
                        $('#genres').append(data.genres[i].name+'  ,   ');
                    }
                    $('#desc').append('Описание:<br>');
                    $('#desc').append(data.description);
                })
            });
        }
    });
});


