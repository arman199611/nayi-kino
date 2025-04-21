let link = 'https://kp.kinobox.tv/films/popular?films=true&released=true&page=';
let link1 = 'https://kp.kinobox.tv/films/popular?series=true&released=true&page=';
let page = $('#next').attr('val');

let popfilm = fetch(link + page)
    .then(response => response.json());

popfilm.then(data => {
    let films = data.data.films
    for (let i = 0; i < films.length; i++) {
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
        });

    }
});


popser = fetch(link1 + page)
    .then(response => response.json());
popser.then(data => {
    let films = data.data.films
    for (let i = 0; i < films.length; i++) {
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
        });
    }
});


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
                kbox('.kinobox_player', {
                    search: {
                        kinopoisk: films[i]['id'],
                        title: films[i]['title']['russian']
                    }
                });
            });
        }
    });
});


