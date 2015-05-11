//网站前端-头部公共调用公告

var DragUtil = (function () {
    var doc = document;
    var moveX = 0;
    var moveY = 0;
    var moveTop = 0;
    var moveLeft = 0;
    var moveable = false;
    return {
        regist: function (winId, titleId) {
            var box = $('#'+winId);
            //禁止选择内容
            box.select(function (e) {
                if (moveable) {
                    e.preventDefault();
                }
            });
            box.find(".content").select(function (e) {
                if (moveable) {
                    e.preventDefault();
                }
            });
            box.find(".content").mouseenter(function (e) {
                if (moveable) {
                    e.preventDefault();
                    $(this).css("cursor", "move");
                } else {
                    $(this).css("cursor", "default");
                }
            });
            box.find('.'+titleId).mousedown(function (e) {
                e.preventDefault();
                clearSel();
                moveable = true;
                moveX = e.pageX;
                moveY = e.pageY;
                var pos = box.position();
                moveTop = pos.top;
                moveLeft = pos.left;
                $(doc).mousemove(function (evt) {
                    if (moveable) {
                        var dc_wd = $(document).width();
                        var hidTop = $(document).scrollTop();
                        var x = moveLeft + evt.pageX  - moveX;
                        var y = moveTop + evt.pageY - moveY;
                        var wd = box.width();
                        x = x < 1 ? 1 : x;
                        x = (x + wd) > dc_wd - 2 ? (dc_wd - wd - 2) : x;
                        y = y < hidTop ? hidTop : y;
                        box.css("left", x + "px");
                        box.css("top", y + "px");
                    }
                });
                $(doc).mouseup(function () {
                    if (moveable) {
                        moveable = false;
                        moveX = 0;
                        moveY = 0;
                        moveTop = 0;
                        moveLeft = 0;
                        $(doc).unbind('mousemove');
                        $(doc).unbind('mouseup');
                    }
                });
            });
        }
    }
})()

var boxArray = [];
function getLastBox () {
    return boxArray[(boxArray.length-1)];
}
//清除队列元素
function delBox (strId) {
    for(var i = 0; i< boxArray.length; i ++ ) {
        if(boxArray[i] == strId) {
            boxArray.splice(i,1);
        }
    }
}
//清除所有队列和提示框
function hideAllbox() {
    for(var i = 0; i< boxArray.length+1; i ++ ) {
        hide_box('',boxArray[0]); //因为 hide_box里面就清除了一个元素 所以不需要移除i 移除第一个:0即可
    }
    $('.movebox_bg').remove()
}
//删除最新的提示框
function hideNewBox() {
    if(boxArray.length == 0) return;
    var boxid =  boxArray[boxArray.length-1];
    delNewEditor();//删除最新的编辑器数组
    $('#'+boxid).remove();
    boxArray = boxArray.slice(0,(boxArray.length-1));
    if(boxArray.length == 0)  {
        $('.movebox_bg').remove();
        return;
    }
    //将背景往后一点
    var lastIndex = $("#"+getLastBox()).css('z-index');
    lastIndex = parseInt(lastIndex);
    $(".movebox_bg").css({zIndex: (lastIndex-1) });
}

function hide_box(timer, boxid) {
    //删除editor对象 防止未注销导致IE浏览器下无法编辑
    delNewEditor();//删除最新的编辑器数组 以及对象
    timer = timer|| '';
    $('#'+boxid).stop(); //停止当前层的消失动作 ,防止当前层在消失过程中被关闭 引起注其他新层的错误
    if(timer) {
        $('#'+boxid).fadeOut(timer,function(){
            $(this).remove(); //清除对话框会影响 KindEditor 如果没有被注销 下次无法注销
        });
    } else {
        $('#'+boxid).hide(500).remove(); //清除对话框会影响 KindEditor 如果没有被注销 下次无法注销
    }
    //删除队列
    delBox(boxid);
    var lastIndex = $("#"+getLastBox()).css('z-index');
    lastIndex = parseInt(lastIndex);
    $(".movebox_bg").css({zIndex: (lastIndex-1) });
    if(boxArray.length == 0) {
        $(".movebox_bg").hide();
    }
}
var clearSel = "getSelection" in window ? function () {
    window.getSelection().removeAllRanges();
} : function () {
    document.selection.empty();
};
function show_box(obj,boxClass, boxid,fn) {
    var newLen = boxArray.length +1;
    if(!boxid) {
        var this_moveid = 'movebox_' + newLen;
    } else {
        var this_moveid = boxid;
    }
    boxClass = boxClass||'msg_box';
    if ($('#'+this_moveid).length > 0) {
        $('#'+this_moveid).show();
        return;
    }
    if(!obj.timer) obj.timer = 2000;
    $('body').append('<div id="'+ this_moveid +'" class="'+ boxClass +'"></div>');
    var lastIndex,bgFront = false;
    var box = $('#'+this_moveid);
    if(boxArray.length > 0) {
        lastIndex = $("#"+getLastBox()).css('z-index');
        lastIndex = parseInt(lastIndex);
        box.css('z-index',(lastIndex+2));
        bgFront = true;
    } else {
        lastIndex = box.css('z-index');
        lastIndex = parseInt(lastIndex);
    }
    var has_but = 0, title_htm = "";
    if (obj) {
        if (obj.title) title_htm = '<div class="dialog_top" ><a href="javascript:;" target="_self" class="closebox" onclick="hide_box(80, \''+ this_moveid +'\');"></a>' + obj.title + '</div>';
        var max_h = $(document).height();//文档全局高
        var errcss = obj.err ? '<a class="err' + obj.err + '"></a>': '';
        box.append(title_htm + '<div class="content">'+ errcss + obj.text + '</div>');
        if (obj.bg == 1) { //用颜色隐藏背景 其他元素不可控制
            if ($(".movebox_bg").length == 0) {
                $('body').append("<div id=\""+this_moveid+"_bg\" class='movebox_bg' onClick=\"hideNewBox();\" onKeydown=\"return false;\" onKeypress=\"return false;\"></div>");
            }
            $(".movebox_bg").css({display: "block", height: (max_h) + "px" });
            if(bgFront) {
                $(".movebox_bg").css({zIndex: (lastIndex+1) });
            }
        }
        if (obj.btn) {
            var closeBtn = '';
            if(obj.btn.indexOf('hide_box') =='-1') {
                closeBtn = ' <a class=\'btn\' href=\"javascript:hideNewBox();\" target=\'_self\' >关闭</a> </div>';
            }
            box.append('<div class="boxbut">'+ obj.btn +closeBtn);
            has_but = 1;
        }
    }
    var h_ = $(window).height();//浏览器可见高度
    var y_ = $(document).scrollTop() + (h_ / 2 - 200);
    y_ = y_ < 0 ? 0 : y_;
    var x_ = document.body.clientWidth / 2 - parseInt(box.width()) / 2;
    box.css({display: "block", left: x_ + "px", top: y_ + "px"});
    //box.dblclick(function () {hide_box(80,this_moveid);}); //双击隐藏窗口,暂时去掉
    if (has_but == 1 && $('#'+this_moveid).find('#box_focus').length > 0) $('#'+this_moveid).find('#box_focus').focus();
    if (obj.hide) {
        box.fadeOut(obj.timer, function () {
            $('#'+this_moveid).remove();
            delBox(this_moveid);
            var lastIndex = $("#"+getLastBox()).css('z-index');
            lastIndex = parseInt(lastIndex);
            $(".movebox_bg").css({zIndex: (lastIndex-1) });
            if(boxArray.length == 0) $(".movebox_bg").hide();
        });
    }
    if (obj.can_move_box ) {
        if (!title_htm)  {
            box.find('.boxbut').css('cursor', 'move');
            DragUtil.regist(this_moveid, 'boxbut'); //注册拖拽事件
        }else {
            box.find('.dialog_top').css('cursor', 'move');
            DragUtil.regist(this_moveid, 'dialog_top');
        }
    }
    box.find('.messageConfirmButton').off('click').on('click',function(){
        if(typeof fn=="function") fn(this_moveid);
    });
    box.find('.messageCancelButton').off('click').on('click',function(){
        hide_box(80, this_moveid );
    });
    boxArray.push(this_moveid);
}

//提示框扩展:提示内容 自动隐藏
function messageHide(n) {
    show_box({
        title: '提示您:',
        err: 6, //ico图标 1v 2- 3! 4i 5x 6") 7"( 8? 9-
        bg: 1,//背景遮挡
        btn: "",
        text: n,
        timer:1200,
        hide: true//自动隐藏
    });
}
//对话框：弹出提示确认处理fn
function messageConfirm(title_, n,btnText, fn) {
    var newLen = boxArray.length +1;
    var this_moveid = 'movebox_' + newLen;
    var btn = "<button class='messageConfirmButton' name='hide_box'>确认"+btnText+"</button> <button class='messageCancelButton'>取消"+btnText+"</button>";
    show_box({
        title: title_,
        err: 0, //ico图标 1v 2- 3! 4i 5x 6") 7"( 8? 9-
        bg: 1,//背景遮挡
        text: n,
        btn: btn,
        hide: false, //自动隐藏
        can_move_box:true
    },'',this_moveid,fn);
}
//提示框扩展:可以返回方法
function messageAlert(n, i,fns) {
    var newLen = boxArray.length +1;
    var this_moveid = 'movebox_' + newLen;
    var btn = "<a type='button' class='btn messageConfirmButton' name='hide_box'>确认</a>";
    show_box({
        title: n,
        err: 0, //ico图标 1v 2- 3! 4i 5x 6") 7"( 8? 9-
        bg: 1,//背景遮挡
        text: i,
        btn: btn,
        hide: false, //自动隐藏
        can_move_box:true
    },'',this_moveid,fns);
}

//对话层 根据鼠标位置定位 posid  2-3-4 右下左
function hint(link, content, posid, width,title) {
    posid = posid || 3;
    width = width || 500;
    title = title || '查看详细';
    var boxid = 'hint_box';
    if($('#'+boxid).length > 0) {
        hideNewBox();
        return;
    }
    var pos = link.offset();
    var x_ = pos.left;
    var y_ = pos.top;
    show_box({
        title: title,
        err: 0, //ico图标 1v 2- 3! 4i 5x 6") 7"( 8? 9-
        bg: 1,//背景遮挡
        text: content,
        btn: '',
        hide: false, //自动隐藏
        can_move_box: false
    },'', boxid ,'');
    if(posid == 2){ //弹出在对象右下角
        x_ = x_ + link.width();
        y_ = y_ + link.height();
        $('#'+boxid).css({width:width, left: x_, top: y_ });
    } else if(posid == 3){ //弹出在对象下边
        x_ = x_ - parseInt(width) / 2; //样式居中
        y_ = y_ + link.height();
        $('#'+boxid).css({width:width, left: x_, top: y_ });
    } else if(posid == 4){ //弹出在对象左下角
         x_ = x_ - width;
        y_ = y_ + link.height();
        $('#'+boxid).css({width:width, left: x_, top: y_ });
    }else if(posid == 5){ //弹出在链接下方，X坐标与链接一样
        y_ = y_ + link.height();
        $('#'+boxid).css({width:width, left: x_, top: y_ });
    }
}
//提示框扩展: 等待提示,有背景遮罩  有关闭按钮
function messageFull(title_, text) {
    var newLen = boxArray.length +1;
    var this_moveid = 'movebox_' + newLen;
    show_box({
        title: title_,
        err: 0, //ico图标 1v 2- 3! 4i 5x 6") 7"( 8? 9-
        bg: 0,//背景遮挡
        text: text,
        btn: "",
        hide: false,//自动隐藏
        can_move_box: false
    },'',this_moveid);
        var box = $('#'+this_moveid);
        box.css({width:'100%',border:0, height:'auto', left: 0, top: 0});
}

//删除最新的编辑器
function delNewEditor() {
        //当前框内如有编辑器 注销编辑器
        if(boxArray.length> 0) {
            var boxid =  boxArray[boxArray.length-1];
            //当前框内如有编辑器 注销编辑器
            if($("#"+boxid).find('.ke-edit-textarea').length > 0) {
                $("#"+boxid).find('textarea').each(function(){
                    var textId;
                    if(typeof $(this).attr("id") != 'undefined') {
                        textId = $(this).attr('id');
                    } else {
                        textId = $(this).attr('class');
                    }
                    window.KindEditor.remove(textId);
                });
            }
        }
}
