$(function(){
  $('#image_text').keyup(function(){
    var content = $("#image_text").val();
    $('#preview-font').html(content);
  });
});

$(function(){
  $("#save-button").on("click", function () {
try {
      // 処理前に Loading 画像を表示
      dispLoading('画像作成中です。しばしお待ちください。');
    html2canvas($('#screenshot-target').get(0)).then( function (canvas) {
    var picture = canvas.toDataURL();    
    removeLoading();
        if(document.getElementById("logout") != null) {
            console.log("ログインしている")
            Swal.fire({
                title: 'こちらの画像でよろしいですか？',
                imageUrl: picture,
                showCloseButton: true,
                imageAlt: 'Custom image',
                confirmButtonText: '画像をツイートする',
                footer: "<a href='"+picture+"' class=share_btn2 download='commented.png'>画像をダウンロード</a>",
                allowOutsideClick: () => !Swal.isLoading()
                }).then((result) => {
                    if (result.value) {
                        picture = picture.split( "," )[1];
                        $.ajax({
                            url: '/images/tweet',
                            type: 'post',
                            async: true,
                            data: {picture:picture}
                        }).done(function(data) {
                        　　console.log("success");
                        }).fail(function(XMLHttpRequest, textStatus, errorThrown) {
                        　　console.log("XMLHttpRequest : " + XMLHttpRequest.status);
                        　　console.log("textStatus     : " + textStatus);
                        　　console.log("errorThrown    : " + errorThrown.message);
                        });         
                    }
                });
        } else {
            console.log("ログインしてない")
            Swal.fire({
                title: 'こちらの画像でよろしいですか？',
                imageUrl: picture,
                imageAlt: 'Custom image',
                showCloseButton: true,
                confirmButtonText: 'twitterでログインすると、直接ツイートできるぞ',
                footer: "<a href='"+picture+"' class=share_btn2 download='commented.png'>画像をダウンロード</a>",
                allowOutsideClick: () => !Swal.isLoading()
                }).then((result) => {
                    if (result.value) {
                        window.location.href = "/auth/twitter";
                } 
            });
        }
    });
    } catch( e ) {
        console.log(e);
    }
  });
});

$(function(){
  $("#word-bigger").on("click", function () {
    $('#preview-font').css('font-size', '+=5');
  });
  $("#word-smaller").on("click", function () {
    $('#preview-font').css('font-size', '-=5');
  });
  $("#up").on("click", function () {
    $('#preview-font').css('top', '-=10');
  });
  $("#down").on("click", function () {
    $('#preview-font').css('top', '+=10');
  });
  $("#left").on("click", function () {
    $('#preview-font').css('left', '-=10');
  });
  $("#right").on("click", function () {
    $('#preview-font').css('left', '+=10');
  });

  $("#font-color").on("click", function () {
    if($('#preview-font').css('color') === 'rgb(0, 0, 0)'){
        $('#preview-font').css('color', 'white');
    } else if ($('#preview-font').css('color') === 'rgb(255, 255, 255)'){
      $('#preview-font').css('color', 'aqua');
    } else if ($('#preview-font').css('color') === 'rgb(0, 255, 255)'){
        $('#preview-font').css('color', 'yellow');
    }else if ($('#preview-font').css('color') === 'rgb(255, 255, 0)'){
        $('#preview-font').css('color', 'lime');
    }else if ($('#preview-font').css('color') === 'rgb(0, 255, 0)'){
        $('#preview-font').css('color', 'red');
    }else{
        $('#preview-font').css('color', 'black');
    }
  });
  
  $("#font-lighter").on("click", function () {
      console.log($('#preview-font').css('font-weight'))
    if($('#preview-font').css('font-weight') == '100'){
      $('#preview-font').css('font-weight', 'normal');
    } else{
      
    }
  });
  
  $("#font-bolder").on("click", function () {
    if($('#preview-font').css('font-weight') === '100'){
      $('#preview-font').css('font-weight', 'normal');
    } else if($('#preview-font').css('font-weight') === '400'){
      $('#preview-font').css('font-weight', 'bold');
    }else{
        $('#preview-font').css('font-weight', 'lighter');
    }
  });

    $("#twitter").on("click", function () {
    if($('#screenshot-target').css('height') === '253px'){
        $('#screenshot-target').css('width', '');
        $('#screenshot-target').css('height', '');
    } else{
        $('#screenshot-target').css('width', '506px');
        $('#screenshot-target').css('height', '253px');
    }
  });

    var angle = 1; 
    $("#font-rotate").on("click", function () {
        console.log(angle);
       if (angle < 11){
        angle += 1;
       }else{
        angle = 0;
       }
        $('#preview-font').css('transform', 'rotate(' + 30 * angle + 'deg)');
    });

    $("#font-family").on("click", function () {
        if($('#preview-font').css('font-family')=== 'Verdana'){
            $('#preview-font').css('font-family', 'sans-serif');
        }else if($('#preview-font').css('font-family')=== 'sans-serif'){
            $('#preview-font').css('font-family', 'Arial');
        }else if($('#preview-font').css('font-family')=== 'Arial'){
            $('#preview-font').css('font-family', 'Courier');
        }else if($('#preview-font').css('font-family')=== 'Courier'){
            $('#preview-font').css('font-family', 'Georgia');
        }else if($('#preview-font').css('font-family')=== 'Georgia'){
            $('#preview-font').css('font-family', 'Times New Roman');
        }else if($('#preview-font').css('font-family')=== 'Times New Roman'){
            $('#preview-font').css('font-family', 'Trebuchet MS');
        }else{
            $('#preview-font').css('font-family', 'Verdana');
        }     
  });

      $("#font-style").on("click", function () {
          console.log($('#preview-font').css('font-style'));
        if($('#preview-font').css('font-style') === 'italic'){
            $('#preview-font').css('font-style', 'normal');
        }else{
            $('#preview-font').css('font-style', 'italic');
        }     
  });

});

$(function(){
  $('input[name="image[kind]"]:radio').change( function(){
    try {
    var kind = this.value;
    switch(kind){
      case 'white_paper':
        dataUrl = 'assets/white_paper.jpg';
        break;
      case 'black_paper':
        dataUrl = 'assets/black_paper.jpg';
        break;
      case 'water_paper':
        dataUrl = 'assets/water_paper.jpg';
        break;
      case 'pink_paper':
        dataUrl = 'assets/pink_paper.jpg';
        break;
      case 'light_frame':
        dataUrl = 'assets/light_frame.jpg';
        break;
      case 'brown_frame':
        dataUrl = 'assets/brown_frame.jpg';
        break;
      case 'dark_frame':
        dataUrl = 'assets/dark_frame.jpg';
        break;
      case 'gold_frame':
        dataUrl = 'assets/gold_frame.jpg';
        break;
      case 'border_paper':
        dataUrl = 'assets/border_paper.jpg';
        break;
      case 'cork_board_papper':
        dataUrl = 'assets/cork_board_papper.jpg';
        break;
      case 'light_wood_paper':
        dataUrl = 'assets/light_wood_paper.jpg';
        break;
      case 'brown_wood_paper':
        dataUrl = 'assets/brown_wood_paper.jpg';
        break;
      case 'dark_wood_paper':
        dataUrl = 'assets/dark_wood_paper.jpg';
        break;
      case 'water_wafu_paper':
        dataUrl = 'assets/water_wafu_paper.jpg';
        break;
      case 'gold_wafu_paper':
        dataUrl = 'assets/gold_wafu_paper.jpg';
        break;
      case 'collage_notebook':
        dataUrl = "assets/collage_notebook.jpg";
        break;
      case 'side_sketchbook':
        dataUrl = 'assets/side_sketchbook.jpg';
        break;
      case 'spread_sketchbook':
        dataUrl = 'assets/spread_sketchbook.jpg';
        break;
      case 'vertical_sketchbook':
        dataUrl = 'assets/vertical_sketchbook.jpg';
        break;
    }
    $("#img1").attr('src',dataUrl);
    } catch( e ) {
        console.log(e);
    }
  });
});


$(function(){
  $('#image_picture').change(function(e){
    //ファイルオブジェクトを取得する
    var file = e.target.files[0];
    var reader = new FileReader();
    //画像でない場合は処理終了
    if(file.type.indexOf("image") < 0){
      alert("画像ファイルを指定してください。");
      return false;
    }
    //アップロードした画像を設定する
    reader.onload = (function(file){
      return function(e){
        $("#img1").attr("src", e.target.result);
        $("#img1").attr("title", file.name);
      };
    })(file);
    reader.readAsDataURL(file);
  });
});

// 遅延ロード(トップページのサムネイル画像に適用)
$(function(){
  $("img.lazy").lazyload();
});

/* ------------------------------
 Loading イメージ表示関数
 引数： msg 画面に表示する文言
 ------------------------------ */
function dispLoading(msg){
  // 引数なし（メッセージなし）を許容
  if( msg == undefined ){
    msg = "";
  }
  // 画面表示メッセージ
  var dispMsg = "<div class='loadingMsg'>" + msg + "</div>";
  // ローディング画像が表示されていない場合のみ出力
  if($("#loading").length == 0){
    $("body").append("<div id='loading'>" + dispMsg + "</div>");
  }
}

/* ------------------------------
 Loading イメージ削除関数
 ------------------------------ */
function removeLoading(){
  $("#loading").remove();
}