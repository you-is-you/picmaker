$(function(){
  $('#image_text').keyup(function(){
    var content = $("#image_text").val();
    $('#preview-font').html(content);
  });
});

$(function(){
    var white_word = ["black", "kokuban", "endo2"]
    if (white_word.includes(this.value)){
      $('#preview-font').css('color', 'white');
    } else {
      $('#preview-font').css('color', 'black');
    }
});

$(function(){
  $("#save-button").on("click", function () {

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
  $("#vertical").on("click", function () {
    if($('#preview-font').css('writing-mode') === 'horizontal-tb'){
      $('#preview-font').css({
        '-webkit-writing-mode': 'vertical-rl',
        '-ms-writing-mode': 'tb-rl',
        'writing-mode': 'vertical-rl',
        'text-orientation': 'upright'
      });
    } else {
      $('#preview-font').css({
        '-webkit-writing-mode': '',
        '-ms-writing-mode': '',
        'writing-mode': '',
        'text-orientation': ''
      });
    }
  });
  $("#font-color").on("click", function () {
    if($('#preview-font').css('color') === 'rgb(0, 0, 0)'){
      $('#preview-font').css('color', 'white');
    } else {
      $('#preview-font').css('color', 'black');
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