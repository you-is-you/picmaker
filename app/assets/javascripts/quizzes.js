var result = []

$(".answers span").click(function() {
    $(this).parent().removeClass("current");
    $(this).parent().parent().hide();
    $(".question1").fadeIn();
    $("#question_list").fadeIn();
    $(".question1").addClass("current");
})

$(function(){
    
})

//質問系　選択肢クリック
$(".answers li").click(function() {
    //ページナビ動かす
    var app = $(".apppager .current").next();
    $(".apppager .current").removeClass("current");
    app.addClass("current");
    
    //選択した選択肢のスコアを変数に格納
    var ansno = $(this).parent().data("ansno");
    console.log(ansno);
    result[ansno] = $(this).data("resultscore");
    result.forEach(elm => {
        Object.keys(elm).forEach(key => {
            console.log(`key: ${key} value: ${elm[key]}`)
        })
    })

    if($(this).parent().parent().next().length === 1){
        $(this).parent().parent().removeClass("current");
        $(this).parent().parent().hide();
        $(this).parent().parent().next().fadeIn();
        $(this).parent().parent().next().addClass("current");
        
        //もし.questionlistimgクラスが存在したら、質問画像がある前提の処理
        if($(".questionlistimg").length){
            var q_img = $(this).parent().parent().next().attr('data-qno');
            $(".questionlistimg .current").hide();
            $(".questionlistimg .current").removeClass("current");
            $(".questionlistimg li[data-qimgno='" + q_img + "']").fadeIn();
            $(".questionlistimg li[data-qimgno='" + q_img + "']").addClass("current");
            
        }
        //質問に画像が設定されている場合、ページ内リンクで#resulttopへスムーススクロール
        var position = $("#resulttop").offset().top;
        $("html, body").animate({scrollTop:position}, 400, "swing");
        //console.log();

        
    }else{
        //結果表示のスクリプト
        var kekkano = Object.keys(result[0]).length;
        var kekka = new Array();
        //点数計算
        $.each(result, function(key,value){
            console.log(value);
            $.each(value, function(key2,value2){
                if(kekka[key2]===undefined){
                    kekka[key2] = value2; 
                }else{
                    kekka[key2] += value2; 
                }
            });
        });
        var saisyukey;
        var saisyuvalue;
        var saisyuvaluearr = new Array();
        var i = 0;
        
                    for (var key in kekka){
            console.log(key + ' ' + kekka[key]);
            if(i === 0){
                saisyukey = key;
                saisyuvalue = kekka[key];
                saisyuvaluearr[key] = kekka[key];
            }else{
                if(parseInt(saisyuvalue) == parseInt(kekka[key])){
                    saisyuvaluearr[key] = kekka[key];
                    
                }else if(parseInt(saisyuvalue) < parseInt(kekka[key])){
                    saisyukey = key;
                    saisyuvalue = kekka[key];
                    
                    saisyuvaluearr = [];
                    saisyuvaluearr[key] = kekka[key];
                }
            }
            i++;
        };
        
        console.log(saisyuvaluearr);
        
        if(Object.keys(saisyuvaluearr).length === 1){
            //点数のダブりが無い場合は、配列の値をそのまま取り出す
            var aryKeys = Object.keys(saisyuvaluearr);
            var aryind = aryKeys[0];
            
            saisyukey = aryind;
            saisyuvalue = saisyuvaluearr[aryind];
            
        }else{
            //点数のダブりがある場合は、配列の値をランダムに取り出す
            var aryKeys = Object.keys(saisyuvaluearr);
            var aryind = aryKeys[Math.floor(Math.random() * aryKeys.length)];
            saisyukey = aryind;
            saisyuvalue = saisyuvaluearr[aryind];
        }
        saisyukey = saisyukey.replace("result", "");
        console.log(saisyukey + ': ' + saisyuvalue);
        $("#result_value").val(saisyukey);
        // $.get( '/quizzes', {user_name:user_name, result:saisyukey} );
        // $('.appcheck').attr('action','https://4ndan.com/app/320/result/あなた/' + saisyukey + '/' + saisyuvalue + '#resulttop');
        $('.quiz_action').submit();        
    }
})