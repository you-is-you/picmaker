var result = []

if("/quizzes/new" == location.pathname) {
  $(document).ready(function(){
    for (var x=1; x<11; x++) {
        for (var y=1; y<6; y++) {
            for (var z=1; z<9; z++) {
                var id = "#question" + x + "_option" + y + "_result" + z + "_score"
                $(id).val("0");
            }    
        }    
    }    
  });
}

if("edit" == location.pathname.split('/')[3]) {
  $(document).ready(function(){
    if($("#result2_title").val() != "") {
        $("#result2").css('display','inline');
        $(".result2_score").css('display','inline');
    }
    if($("#result3_title").val() != "") {
        $("#result3").css('display','inline');
        $(".result3_score").css('display','inline');
    }
    if($("#result4_title").val() != "") {
        $("#result4").css('display','inline');
        $(".result4_score").css('display','inline');
    }
    if($("#result5_title").val() != "") {
        $("#result5").css('display','inline');
        $(".result5_score").css('display','inline');
    }
    if($("#result6_title").val() != "") {
        $("#result6").css('display','inline');
        $(".result6_score").css('display','inline');
    }
    if($("#result7_title").val() != "") {
        $("#result7").css('display','inline');
        $(".result7_score").css('display','inline');
    }
    if($("#result8_title").val() != "") {
        $("#result8").css('display','inline');
        $(".result8_score").css('display','inline');
    }
     if($("#question1_option2_form").val() != "") {
        $(".question1_option2_area").css('display','inline');
     }
     if($("#question1_option3_form").val() != "") {
        $(".question1_option3_area").css('display','inline');
     }
     if($("#question1_option4_form").val() != "") {
        $(".question1_option4_area").css('display','inline');
     }
     if($("#question1_option5_form").val() != "") {
        $(".question1_option5_area").css('display','inline');
     }

     if($("#question2_option2_form").val() != "") {
        $(".question2_option2_area").css('display','inline');
     }
     if($("#question2_option3_form").val() != "") {
        $(".question2_option3_area").css('display','inline');
     }
     if($("#question2_option4_form").val() != "") {
        $(".question2_option4_area").css('display','inline');
     }
     if($("#question2_option5_form").val() != "") {
        $(".question2_option5_area").css('display','inline');
     }

     if($("#question3_option2_form").val() != "") {
        $(".question3_option2_area").css('display','inline');
     }
     if($("#question3_option3_form").val() != "") {
        $(".question3_option3_area").css('display','inline');
     }
     if($("#question3_option4_form").val() != "") {
        $(".question3_option4_area").css('display','inline');
     }
     if($("#question3_option5_form").val() != "") {
        $(".question3_option5_area").css('display','inline');
     }

     if($("#question4_option2_form").val() != "") {
        $(".question4_option2_area").css('display','inline');
     }
     if($("#question4_option3_form").val() != "") {
        $(".question4_option3_area").css('display','inline');
     }
     if($("#question4_option4_form").val() != "") {
        $(".question4_option4_area").css('display','inline');
     }
     if($("#question4_option5_form").val() != "") {
        $(".question4_option5_area").css('display','inline');
     }

     if($("#question5_option2_form").val() != "") {
        $(".question5_option2_area").css('display','inline');
     }
     if($("#question5_option3_form").val() != "") {
        $(".question5_option3_area").css('display','inline');
     }
     if($("#question5_option4_form").val() != "") {
        $(".question5_option4_area").css('display','inline');
     }
     if($("#question5_option5_form").val() != "") {
        $(".question5_option5_area").css('display','inline');
     }

     if($("#question6_option2_form").val() != "") {
        $(".question6_option2_area").css('display','inline');
     }
     if($("#question6_option3_form").val() != "") {
        $(".question6_option3_area").css('display','inline');
     }
     if($("#question6_option4_form").val() != "") {
        $(".question6_option4_area").css('display','inline');
     }
     if($("#question6_option5_form").val() != "") {
        $(".question6_option5_area").css('display','inline');
     }

     if($("#question7_option2_form").val() != "") {
        $(".question7_option2_area").css('display','inline');
     }
     if($("#question7_option3_form").val() != "") {
        $(".question7_option3_area").css('display','inline');
     }
     if($("#question7_option4_form").val() != "") {
        $(".question7_option4_area").css('display','inline');
     }
     if($("#question7_option5_form").val() != "") {
        $(".question7_option5_area").css('display','inline');
     }

     if($("#question8_option2_form").val() != "") {
        $(".question8_option2_area").css('display','inline');
     }
     if($("#question8_option3_form").val() != "") {
        $(".question8_option3_area").css('display','inline');
     }
     if($("#question8_option4_form").val() != "") {
        $(".question8_option4_area").css('display','inline');
     }
     if($("#question8_option5_form").val() != "") {
        $(".question8_option5_area").css('display','inline');
     }

     if($("#question9_option2_form").val() != "") {
        $(".question9_option2_area").css('display','inline');
     }
     if($("#question9_option3_form").val() != "") {
        $(".question9_option3_area").css('display','inline');
     }
     if($("#question9_option4_form").val() != "") {
        $(".question9_option4_area").css('display','inline');
     }
     if($("#question9_option5_form").val() != "") {
        $(".question9_option5_area").css('display','inline');
     }

     if($("#question10_option2_form").val() != "") {
        $(".question10_option2_area").css('display','inline');
     }
     if($("#question10_option3_form").val() != "") {
        $(".question10_option3_area").css('display','inline');
     }
     if($("#question10_option4_form").val() != "") {
        $(".question10_option4_area").css('display','inline');
     }
     if($("#question10_option5_form").val() != "") {
        $(".question10_option5_area").css('display','inline');
     }

     if($("#question2_content").val() != "") {
        $("#question2").css('display','inline');
     }
     if($("#question3_content").val() != "") {
        $("#question3").css('display','inline');
     }
     if($("#question4_content").val() != "") {
        $("#question4").css('display','inline');
     }
     if($("#question5_content").val() != "") {
        $("#question5").css('display','inline');
     }
     if($("#question6_content").val() != "") {
        $("#question6").css('display','inline');
     }
     if($("#question7_content").val() != "") {
        $("#question7").css('display','inline');
     }
     if($("#question8_content").val() != "") {
        $("#question8").css('display','inline');
     }
     if($("#question9_content").val() != "") {
        $("#question9").css('display','inline');
     }
     if($("#question10_content").val() != "") {
        $("#question10").css('display','inline');
     }



  });
}

$(".answers span").click(function() {
    $(this).parent().removeClass("current");
    $(this).parent().parent().hide();
    $(".question1").fadeIn();
    $("#question_list").fadeIn();
    $(".question1").addClass("current");
    $("#page1").addClass("current_page");
})

$("#prev_button").click(function() {
    if($(".current").prev().length === 0){
        $(".current").hide();
        $(".question1").fadeIn();
    }else{
        $(".current").hide();
        $(".current").prev().fadeIn();
        $(".current").prev().addClass("currentprev");
        $(".current").removeClass("current");
        $(".currentprev").addClass("current");
        $(".current").removeClass("currentprev");

        $(".current_page").prev().addClass("current_page_next");
        $(".current_page").removeClass("current_page");
        $(".current_page_next").addClass("current_page");
        $(".current_page").removeClass("current_page_next");
    }
})

$("#page1").click(function() {
    if($(".current").prev().length === 0){
        $(".current").hide();
        $(".question1").fadeIn();
    }else{
        $(".current").hide();
        $(".question1").fadeIn();
        $(".question1").addClass("currentprev");
        $(".current").removeClass("current");
        $(".currentprev").addClass("current");
        $(".current").removeClass("currentprev");

        $("#page1").addClass("current_page_next");
        $(".current_page").removeClass("current_page");
        $(".current_page_next").addClass("current_page");
        $(".current_page").removeClass("current_page_next");
    }
})

$("#page2").click(function() {
    $(".current").hide();
    $(".question2").fadeIn();
    $(".question2").addClass("currentprev");
    $(".current").removeClass("current");
    $(".currentprev").addClass("current");
    $(".current").removeClass("currentprev");

    $("#page2").addClass("current_page_next");
    $(".current_page").removeClass("current_page");
    $(".current_page_next").addClass("current_page");
    $(".current_page").removeClass("current_page_next");
})

$("#page3").click(function() {
    $(".current").hide();
    $(".question3").fadeIn();
    $(".question3").addClass("currentprev");
    $(".current").removeClass("current");
    $(".currentprev").addClass("current");
    $(".current").removeClass("currentprev");

    $("#page3").addClass("current_page_next");
    $(".current_page").removeClass("current_page");
    $(".current_page_next").addClass("current_page");
    $(".current_page").removeClass("current_page_next");
})

$("#page4").click(function() {
    $(".current").hide();
    $(".question4").fadeIn();
    $(".question4").addClass("currentprev");
    $(".current").removeClass("current");
    $(".currentprev").addClass("current");
    $(".current").removeClass("currentprev");

    $("#page4").addClass("current_page_next");
    $(".current_page").removeClass("current_page");
    $(".current_page_next").addClass("current_page");
    $(".current_page").removeClass("current_page_next");
})

$("#page5").click(function() {
    $(".current").hide();
    $(".question5").fadeIn();
    $(".question5").addClass("currentprev");
    $(".current").removeClass("current");
    $(".currentprev").addClass("current");
    $(".current").removeClass("currentprev");

    $("#page5").addClass("current_page_next");
    $(".current_page").removeClass("current_page");
    $(".current_page_next").addClass("current_page");
    $(".current_page").removeClass("current_page_next");
})

$("#page6").click(function() {
    $(".current").hide();
    $(".question6").fadeIn();
    $(".question6").addClass("currentprev");
    $(".current").removeClass("current");
    $(".currentprev").addClass("current");
    $(".current").removeClass("currentprev");

    $("#page6").addClass("current_page_next");
    $(".current_page").removeClass("current_page");
    $(".current_page_next").addClass("current_page");
    $(".current_page").removeClass("current_page_next");
})

$("#page7").click(function() {
    $(".current").hide();
    $(".question7").fadeIn();
    $(".question7").addClass("currentprev");
    $(".current").removeClass("current");
    $(".currentprev").addClass("current");
    $(".current").removeClass("currentprev");

    $("#page7").addClass("current_page_next");
    $(".current_page").removeClass("current_page");
    $(".current_page_next").addClass("current_page");
    $(".current_page").removeClass("current_page_next");
})

$("#page8").click(function() {
    $(".current").hide();
    $(".question8").fadeIn();
    $(".question8").addClass("currentprev");
    $(".current").removeClass("current");
    $(".currentprev").addClass("current");
    $(".current").removeClass("currentprev");

    $("#page8").addClass("current_page_next");
    $(".current_page").removeClass("current_page");
    $(".current_page_next").addClass("current_page");
    $(".current_page").removeClass("current_page_next");
})

$("#page9").click(function() {
    $(".current").hide();
    $(".question9").fadeIn();
    $(".question9").addClass("currentprev");
    $(".current").removeClass("current");
    $(".currentprev").addClass("current");
    $(".current").removeClass("currentprev");

    $("#page9").addClass("current_page_next");
    $(".current_page").removeClass("current_page");
    $(".current_page_next").addClass("current_page");
    $(".current_page").removeClass("current_page_next");
})

$("#page10").click(function() {
    $(".current").hide();
    $(".question10").fadeIn();
    $(".question10").addClass("currentprev");
    $(".current").removeClass("current");
    $(".currentprev").addClass("current");
    $(".current").removeClass("currentprev");

    $("#page10").addClass("current_page_next");
    $(".current_page").removeClass("current_page");
    $(".current_page_next").addClass("current_page");
    $(".current_page").removeClass("current_page_next");
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

        $("#prev_button").fadeIn();
        $(".current_page").next().fadeIn();
        $(".current_page").next().addClass("current_page_next");
        $(".current_page").removeClass("current_page");
        $(".current_page_next").addClass("current_page");
        $(".current_page").removeClass("current_page_next");
        
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
        $('.quiz_action').submit();        
    }
})