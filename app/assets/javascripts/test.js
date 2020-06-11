function insert (area, words) {
    var sentence = $(area).get(0).value;
    var len      = sentence.length;
    var pos      = $(area).get(0).selectionStart;
    var before   = sentence.substr(0, pos);
    var word     = words;
    var after    = sentence.substr(pos, len);
    sentence = before +  word  + after;
    $(area).get(0).value = sentence;
}

function clear_list (area) {
    $(area).get(0).value = "";
}

function serial_number (area, first_id, last_id) {
    var first = $(first_id).get(0).value;
    var last = $(last_id).get(0).value;
    for (let i = first; i <= last; i++){
        insert(area, i + "\r\n")
    }
}

function repeated_value (area, value_id, num_id) {
    var value = $(value_id).get(0).value;
    var num = $(num_id).get(0).value;
    for (let i = 0; i < num; i++){
        insert(area, value + "\r\n")
    }
}

function theme_insert (area, value) {
    insert(area, value + "\r\n")
}