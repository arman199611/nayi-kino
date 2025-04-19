let response =  fetch('https://cdn.kulik.uz/api/iptvcors?kultv_get=30')
                      .then(response => response.json());
response.then(data=> {
  let canels = data.playlist.channels;
  let grups = data.playlist.menu;
  for (let i=0;i<canels.length; i++) {
       let html = "<div class='col all mb-4 d-block "+canels[i]['group']+"'><div class='card'  id='cn"+i+"'><img class='card-img-top mt-4' src='"+canels[i]['logo']+"'><div class='card-body'><h5 class='card-title'>"+canels[i]['name']+"</h5></div></div></div>";
        $('.row').append(html);
        $('#cn'+i).click(function(){
          let player = videojs('hls-example');
          player.src(canels[i]['url']);
          $('.card').removeClass('card-active');
          $('#cn'+i).addClass('card-active');
        });
      }; 
  $('#all').html('Все : '+grups[0]['count']);
  for (i=1;i<grups.length; i++) {
       let grup = "<a class='dropdown-item' id='gr"+grups[i]['name']+"'>"+grups[i]['name']+" : "+grups[i]['count']+"</a>";
        $('.dropdown-menu').append(grup);
        $('#gr'+grups[i]['name']).click(function(){
          $('.all').removeClass('d-block');
          $('.all').addClass('d-none');
          $('.'+grups[i]['name']).addClass('d-block');
        });
      };
});



