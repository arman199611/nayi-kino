// let link = 'https://kp.kinobox.tv/films/popular?films=true&released=true&page=';
// let link1 = 'https://kp.kinobox.tv/films/popular?series=true&released=true&page=';
let page = $('#next').attr('val');
let year = new Date().getFullYear();
let link = 'https://api.kinopoisk.dev/v1.4/movie?year=' + year + '&page=' + page + '&limit=100&type=movie';
let link1 = 'https://api.kinopoisk.dev/v1.4/movie?year=' + year + '&page=' + page + '&limit=100&type=tv-series';
let linksearch = 'https://api.kinopoisk.dev/v1.4/movie/search?page=1&limit=100&query=';
let watchfilm = 'https://iframe.cloud/iframe/';
let ifo = 'https://api.kinopoisk.dev/v1.4/movie/';
let altifo = 'https://api.imdbapi.dev/titles:batchGet?';
let pathName = $('#pathName').attr('val');
let finnd = [];

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
                $('#watchfilm').attr("src", "" + watchfilm + films[i]['id'] + '/');
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
    const options = {
        method: 'GET',
        headers: {accept: 'application/json', 'X-API-KEY': '6M3VFC5-FR34F7A-QW7J0X6-R38720S'}
    };
    let popser = fetch(link1, options)
        .then(response => response.json());
    popser.then(data => {
        let films = data.docs
        for (let i = 0; i < films.length; i++) {
            if (films[i].poster) {
                let html = "<div class='col-md-2 col-5 all mb-4 d-block'><div class='card bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top   bg-dark' src='" + films[i].poster['url'] + "'><div class='card-body  bg-dark'>Сериал<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['name'] + "</h5></div></div></div>";
                $('.films').append(html);
            }
            $('#cn' + films[i]['id']).click(function () {
                $('.films').addClass('d-none');
                $('.pages').addClass('d-none');
                $('.player').removeClass('d-none');
                $('#watchfilm').attr("src", "" + watchfilm + films[i]['id'] + '/');

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
if (pathName == 'search') {
    let searchword = encodeURIComponent($('#filmname').val());
    let link = linksearch + searchword;
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
        for (let i = 0; i < films.length; i++) {
            if (films[i].poster != null && (films[i].poster['url'] != null)) {
                if (films[i]['type'] == 'movie') {
                    let html = "<div class='col-md-2 col-4 all mb-4 d-block'><div class='card h-auto bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top h-auto bg-dark' src='" + films[i].poster['url'] + "'><div class='card-body  bg-dark'>Фильм<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['name'] + "</h5></div></div></div>";
                    $('.films').append(html);
                } else if (films[i]['type'] == 'tv-series') {
                    let html = "<div class='col-md-2 col-4 all mb-4 d-block'><div class='card h-auto bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top h-auto bg-dark' src='" + films[i].poster['url'] + "'><div class='card-body  bg-dark'>Сериал<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['name'] + "</h5></div></div></div>";
                    $('.films').append(html);
                } else {
                    let html = "<div class='col-md-2 col-4 all mb-4 d-block'><div class='card h-auto bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top h-auto bg-dark' src='" + films[i].poster['url'] + "'><div class='card-body  bg-dark'>Мультфильм<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['name'] + "</h5></div></div></div>";
                    $('.films').append(html);
                }
            } else {
                if (films[i].externalId != null && films[i].externalId['imdb'] != null) {
                    finnd.push("titleIds=" + films[i].externalId['imdb'] + "&");
                    if (finnd.length == 5) {
                        let newstr = '';
                        for (let i = 0; i < finnd.length; i++) {
                            let str = '' + finnd;
                            newstr = str.replace(/,/g, "");
                            newstr = newstr.slice(0, -1);
                        }
                        let altsearch = fetch(altifo + newstr)
                            .then(response => response.json());
                        altsearch.then(altdata => {
                            let altfilms = altdata.titles;
                            for (let i = 0; i < altfilms.length; i++) {
                                console.log(altfilms[i].primaryImage['url'])
                                if (films[i]['type'] == 'movie') {
                                    let html = "<div class='col-md-2 col-4 all mb-4 d-block'><div class='card h-auto bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top h-auto bg-dark' src='" + altfilms[i].primaryImage['url'] + "'><div class='card-body  bg-dark'>Фильм<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['name'] + "</h5></div></div></div>";
                                    $('.films').append(html);
                                } else if (films[i]['type'] == 'tv-series') {
                                    let html = "<div class='col-md-2 col-4 all mb-4 d-block'><div class='card h-auto bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top h-auto bg-dark' src='" + altfilms[i].primaryImage['url'] + "'><div class='card-body  bg-dark'>Сериал<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['name'] + "</h5></div></div></div>";
                                    $('.films').append(html);
                                } else {
                                    let html = "<div class='col-md-2 col-4 all mb-4 d-block'><div class='card h-auto bg-dark' id='cn" + films[i]['id'] + "'><img class='card-img-top h-auto bg-dark' src='" + altfilms[i].primaryImage['url'] + "'><div class='card-body  bg-dark'>Мультфильм<h5 class='card-title  bg-dark'>" + films[i]['year'] + "<br>" + films[i]['name'] + "</h5></div></div></div>";
                                    $('.films').append(html);
                                }
                            }
                        });
                        finnd = [];
                    }
                }
            }

            $('#cn' + films[i]['id']).click(function () {
                $('.films').addClass('d-none');
                $('.pages').addClass('d-none');
                $('#watchfilm').attr("src", "" + watchfilm + films[i]['id'] + '/');
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
}
$('#word').on('keypress', function (e) {
    if (e.key === 'Enter') {
        window.location.replace("https://stackoverflow.com");
    }
});


