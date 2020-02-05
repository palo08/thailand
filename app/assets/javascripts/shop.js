$(function(){

  // function appendShop(shop){
  //   let html = 
  //   `<div class="shop" data-area="${shop.area_id}">
  //     <div class="shop__image">
  //       <img src="${shop.images[0].image}" alt="Gahag 0095707393 1" width="354" height="279">
  //     </div>
  //     <div class="shop__info">
  //       <div class="shop__info__name">
  //         <a class="shop__info__name__text" href="/shops/${shop.id}">${shop.name}</a>
  //       </div>
  //       <div class="shop__info__genre">
  //         ジャンル: ${shop.genre}
  //       </div>
  //        <div class="shop__info__address">
  //         住所: ${shop.address}
  //       </div>
  //       <div class="shop__info__business-times">
  //         営業時間: ${shop.open_hours}時〜${shop.close_hours}時
  //       </div>
  //       <div class="shop__info__holiday">
  //         休日: ${shop.holiday}
  //       </div>
  //       <div class="shop__info__japanese-staff">
  //         日本人スタッフ: ${shop.japanese_staff}
  //       </div>
  //     </div>
  //   </div>`
  //   $(".shop-lists").append(html);
  // }

  // function appendNothing(ntg){
  //   let html = `<div>${ntg}</div>`
  //   $(".shop-lists").append(html);
  // }

  
  // $('.search-lists :checkbox').on('click', function(){
  //   let checkbox = $(this).val();
    
  //   // console.log(checkbox);
  //   $.ajax({
  //     type: 'GET',
  //     url: '/shops/search',
  //     date: { area_id: checkbox },
  //     dataType: 'json'
  //   })
  //   .done(function(shops) {
  //     // console.log(shops);
  //     $(".shop-lists").empty();
  //     if (shops.length !== 0){
  //       shops.forEach(function(shop){
  //         appendShop(shop);
  //       });
  //     }
  //     else{
  //       appendNothing("一致するお店がありません");
  //     }
  //   })
  //   .fail( function(){
  //     alert("error");
  //   })
  // }); 

  // スライドショー用js
  var page=0;
  var lastPage =parseInt($("#slide img").length-1);
  $("#slide img").css("display","none");
  $("#slide img").eq(page).css("display","block");
  function changePage(){
    $("#slide img").fadeOut(1000);
    $("#slide img").eq(page).fadeIn(1000);
  };
  var Timer;
  function startTimer(){
    Timer =setInterval(function(){
      if(page === lastPage){
        page = 0;
        changePage();
      }
      else{
        page ++;
        changePage();
      };
    },5000);
  }
  function stopTimer(){
    clearInterval(Timer);
    }
  startTimer();
});


