// let link = 'https://kp.kinobox.tv/films/popular?films=true&released=true&page=';
let link = 'https://api.kinopoisk.dev/v1.4/movie?year=2024&limit=40';
// let link1 = 'https://kp.kinobox.tv/films/popular?series=true&released=true&page=';
let link1 = 'https://kp.kinobox.tv/api/v2/films/popular?type=series';
let watchfilm ='https://flcksbr.top/film/';
let ifo = 'https://api.kinopoisk.dev/v1.4/movie/';


let page = $('#next').attr('val');
let pathName = $('#pathName').attr('val');
if (pathName == 'homepage' || pathName == 'page') {
    const options = {
        method: 'GET',
        headers: {accept: 'application/json', 'X-API-KEY': '6M3VFC5-FR34F7A-QW7J0X6-R38720S'}
    };
    let popfilm = fetch(link, options)
        .then(response => response.json());

    popfilm.then(data => {
        console.log(data);
        let films = data.docs
        for (let i = 0; i < films.length; i++) {
            if (films[i].poster) {
                let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top   bg-dark' src='" + films[i].poster['url'] + "'><div class='card-body  bg-dark'>Фильм<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['name'] + "</h5></div></div></div>";
                $('.films').append(html);
            }
            $('#cn' + films[i]['id']).click(function () {
                $('.films').addClass('d-none');
                $('.pages').addClass('d-none');
                $('.player').removeClass('d-none');
                $('#watchfilm').attr("src", ""+watchfilm+films[i]['id']+'/');
                // kbox('.kinobox_player', {
                //     search: {
                //         kinopoisk: films[i]['id'],
                //         title: films[i]['title']['russian']
                //     },
                //     events: {
                //         playerLoaded: function (status, sources) {
                //             // code
                //             // status - статус поиска
                //             // sources - массив источников
                //             console.log(sources);
                //         }
                //     }
                // });
                const options = {
                    method: 'GET',
                    headers: {accept: 'application/json', 'X-API-KEY': '6M3VFC5-FR34F7A-QW7J0X6-R38720S'}
                };
                let filminfo = fetch(ifo + films[i]['id'], options)
                    .then(res => res.json());
                filminfo.then(data => {
                    $('#poster').removeAttr("src");
                    $('#name').empty();
                    $('#year').empty();
                    $('#countries').empty();
                    $('#genres').empty();
                    $('#desc').empty();
                    $('#poster').attr("src", data.poster.previewUrl);
                    $('#name').append(data.name);
                    $('#year').append('Год:   ');
                    $('#year').append(data.year + ' ,');
                    $('#countries').append('Страна:  ');
                    for (let i = 0; i < data.countries.length; i++) {
                        $('#countries').append(data.countries[i].name + '  ,   ');
                    }
                    $('#genres').append('Жанр:    ');
                    for (let i = 0; i < data.genres.length; i++) {
                        $('#genres').append(data.genres[i].name + '  ,   ');
                    }
                    $('#desc').append('Описание:<br>');
                    $('#desc').append(data.description);
                })
            });
        }
    });
}


if (pathName == 'serials' || pathName == 'serialpage') {

    let popser = fetch(link1)
        .then(response => response.json());
    popser.then(data => {
        let films = data.data.items
        for (let i = 0; i < films.length; i++) {
            if (films[i].gallery['posterUrl']) {
                let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top   bg-dark' src='" + films[i].gallery['posterUrl'] + "'><div class='card-body  bg-dark'>Сериал<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['title']['russian'] + "</h5></div></div></div>";
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
                let filminfo = fetch(ifo + films[i]['id'], options)
                    .then(res => res.json());
                filminfo.then(data => {
                    $('#poster').removeAttr("src");
                    $('#name').empty();
                    $('#year').empty();
                    $('#countries').empty();
                    $('#genres').empty();
                    $('#desc').empty();
                    $('#poster').attr("src", data.poster.previewUrl);
                    $('#name').append(data.name);
                    $('#year').append('Год:   ');
                    $('#year').append(data.year + ' ,');
                    $('#countries').append('Страна:  ');
                    for (let i = 0; i < data.countries.length; i++) {
                        $('#countries').append(data.countries[i].name + '  ,   ');
                    }
                    $('#genres').append('Жанр:    ');
                    for (let i = 0; i < data.genres.length; i++) {
                        $('#genres').append(data.genres[i].name + '  ,   ');
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
    let link = "https://api.kinopoisk.dev/v1.4/movie/search?page=1&limit=10&query=" + searchword;
    $('.films').empty();
    $('.pages').empty();
    $('.films').removeClass('d-none');
    $('.player').addClass('d-none');
    const options = {
        method: 'GET',
        headers: {accept: 'application/json', 'X-API-KEY': '6M3VFC5-FR34F7A-QW7J0X6-R38720S'}
    };
    let search = fetch(link, options)
        .then(response => response.json());
    search.then(data => {
        let films = data.docs
        console.log(films);
        for (let i = 0; i < films.length; i++) {
            if (films[i]['type'] == 'movie') {
                let html = "<div class='col-md-2 col-4 all mb-4 d-block'><div class='card h-auto bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top h-auto bg-dark' src='" + films[i].backdrop['previewUrl'] + "'><div class='card-body  bg-dark'>Фильм<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['name'] + "</h5></div></div></div>";
                $('.films').append(html);
            } else {
                let html = "<div class='col-md-2 col-4 all mb-4 d-block'><div class='card h-auto bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top h-auto bg-dark' src='" + films[i].backdrop['previewUrl'] + "'><div class='card-body  bg-dark'>Сериал<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['name'] + "</h5></div></div></div>";
                $('.films').append(html);
            }
            $('#cn' + films[i]['id']).click(function () {
                $('.films').addClass('d-none');
                $('.pages').addClass('d-none');
                $('#watchfilm').attr("src", ""+watchfilm+films[i]['id']+'/');
                // kbox('.kinobox_player', {
                //     search: {
                //         kinopoisk: films[i]['id'],
                //         title: films[i]['name']
                //     }
                // });
                const options = {
                    method: 'GET',
                    headers: {accept: 'application/json', 'X-API-KEY': '6M3VFC5-FR34F7A-QW7J0X6-R38720S'}
                };
                let filminfo = fetch(ifo + films[i]['id'], options)
                    .then(res => res.json());
                filminfo.then(data => {
                    $('#poster').removeAttr("src");
                    $('#name').empty();
                    $('#year').empty();
                    $('#countries').empty();
                    $('#genres').empty();
                    $('#desc').empty();
                    $('#poster').attr("src", data.poster.previewUrl);
                    $('#name').append(data.name);
                    $('#year').append('Год:   ');
                    $('#year').append(data.year + ' ,');
                    $('#countries').append('Страна:  ');
                    for (let i = 0; i < data.countries.length; i++) {
                        $('#countries').append(data.countries[i].name + '  ,   ');
                    }
                    $('#genres').append('Жанр:    ');
                    for (let i = 0; i < data.genres.length; i++) {
                        $('#genres').append(data.genres[i].name + '  ,   ');
                    }
                    $('#desc').append('Описание:<br>');
                    $('#desc').append(data.description);
                })
                $('.player').removeClass('d-none');
            });
        }
    });
});


