var numStudent = 1; //当前页
let tableLength; // 订单页分页长度
let tableLength2; // 详情页分页长度
let dishId;
let studentObj = {
  "clientid": Number(getCookie('userid')),
  "pageSize": 7,
  "pageNum": numStudent
}
// 查找订单
getOrder();

function getOrder(first) {
  $.ajax({
    type: "post",
    url: url + port + "/order/queryOrder",
    dataType: "json",
    contentType: "application/json;charset=UTF-8",
    data: JSON.stringify(studentObj),
    success: function (res) {
      console.log(res)
      tableLength = res.total
      if (!first) {
        changePage(pagetion);
      }
      let data = '';
      for (let i = 0; i < res.data.length; i++) {
        data += '<div class="orderBox" id="orderBox">'+
          '<div class="orderPic">' + res.data[i].clientName + '</div>'+
          '<div class="orderDetail">' + res.data[i].clientAddress + '</div>'+
          '<div class="order-price">'+
          '<span class="yen">￥</span>'+
          '<span class="price">' + res.data[i].totalPrice + '</span>'+
          '</div>'+
          '<div class="order-operate">'+
          '<span class="checkDetail" value="' + res.data[i].id + '">查看详情</span>'+
          '</div>'+
          '</div>'
      }
      $('#orderTotalBox').empty().append(data);
    }
  });
}

// 改变分页函数
function changePage(el) {
  layui.use(['laypage', 'layer'], function () {
    var laypage = layui.laypage,
      layer = layui.layer;
    laypage.render({
      elem: el,
      count: tableLength,
      limit: 7,
      first: '首页',
      last: '尾页',
      prev: '<em>←</em>',
      next: '<em>→</em>',
      jump: function (obj, first) {
        studentObj.pageNum = obj.curr;
        if (!first) {
          getOrder(1);
        }
      }
    })
  });
}

// 查看详细信息
$('body').on('click', '.checkDetail', function () {
  getDetail(0, 1, $(this).attr('value'));
  $('.wrrap').show();
});

$('.closeStudentBox').click(function () {
  $('.wrrap').hide();
});

// 详细菜单
function getDetail(first,num,e) {
  $.ajax({
    type: "post",
    url: url + port + "/orderItem/queryOrderItem",
    dataType: "json",
    contentType: "application/json;charset=UTF-8",
    data: JSON.stringify({
      orderId: e,
      pageSize: 5,
      pageNum: num
    }),
    success: function (res) {
      console.log(res)
      tableLength2 = res.total
      if (!first) {
        changePage2(pagetion2, e);
      }
      var data = '';
      for (let index = 0; index < res.data.length; index++) {
        data += '<tr>\n' +
          '<td>\n' +
          '<div>' + ((index + 1) + (num - 1) * 1) + '</div>\n' +
          '</td>\n' +
          '<td>\n' +
          '<div>' + res.data[index].dishName + '</div>\n' +
          '</td>\n' +
          '<td>\n' +
          '<div>' + res.data[index].quantity + '</div>\n' +
          '</td>\n' +
          '<td>\n' +
          '<div>' + res.data[index].price + '</div>\n' +
          '</td>\n' +
          '<td>\n' +
          '<div class="operate">\n' +
          '<span class="complaint" value="' + res.data[index].dishId + '">投诉</span>\n' +
          '<span class="evaluate" value="' + res.data[index].dishId + '">评价</span>\n' +
          '</div>\n' +
          '</td>\n' +
          '</tr>\n'
      }
      $('#studentTable').empty().append(data);
    }
  });
}

// 改变分页函数2
function changePage2(el, orderId) {
  console.log(tableLength2)
  layui.use(['laypage', 'layer'], function () {
    var laypage = layui.laypage,
      layer = layui.layer;
    laypage.render({
      elem: el,
      count: tableLength2,
      limit: 5,
      first: '首页',
      last: '尾页',
      prev: '<em>←</em>',
      next: '<em>→</em>',
      jump: function (obj, first) {
        if (!first) {
          getDetail(1, obj.curr, orderId);
        }
      }
    })
  });
}

// 获取评价
$('body').on('click', '.evaluate', function (e) {
  dishId = $(this).attr('value')
  e.stopPropagation();
  $('.dialog2').show();
  getMsg();
});

function getMsg() {
  $.ajax({
    type: "post",
    url: url + port + "/leaveMessage/queryLeaveMessage",
    dataType: "json",
    contentType: "application/json;charset=UTF-8",
    data: JSON.stringify({
      "dishId": dishId,
      "type": "1"
    }),
    success: function (res) {
      console.log(res)
      let data = '';
      for (let index = 0; index < res.data.length; index++) {
        data += '<div class="msgBox">' +
          '<div class="user_name">用户名：' + res.data[index].clientName + '</div>' +
          '<div class="user_msg">内容：' + res.data[index].message + '</div>' +
          '<div class="user_time">评价时间：' + res.data[index].leaveDate + '</div>' +
          '<div class="deleteMsg" value="'+res.data[index].id+'">删除评价</div>' +
          '</div>'
      }
      $('#message-detail').empty().append(data);
    }
  });
}

// 添加评价
$('#addMsg').click(function () {
  if ($('#addMsgContent').val() == '') {
    layui.use('layer', function () {
      var layer = layui.layer;
      layer.msg('内容不能为空！')
    });
  } else {
    $.ajax({
      type: "post",
      url: url + port + "/leaveMessage/addLeaveMessage",
      dataType: "json",
      contentType: "application/json;charset=UTF-8",
      data: JSON.stringify({
        "clientId": Number(getCookie('userid')),
        "dishId": Number(dishId),
        "message": $('#addMsgContent').val(),
        "type": "1"
      }),
      success: function (res) {
        $('#addMsgContent').val('');
        getMsg();
      }
    });
  }
});

//删除评价
$('body').on('click', '.deleteMsg', function () {
  $.ajax({
    type: "get",
    url: url + port + "/leaveMessage/delLeaveMessageById?id=" + $(this).attr('value'),
    dataType: "json",
    contentType: "application/json;charset=UTF-8",
    success: function () {
      layer.msg('删除成功');
      $('#message-detail').empty();
      getMsg();
    }
  });
});

// 获取投诉
$('body').on('click', '.complaint', function (e) {
  dishId = $(this).attr('value')
  e.stopPropagation();
  $('.dialog3').show();
  getMsgType();
});

function getMsgType() {
  $.ajax({
    type: "post",
    url: url + port + "/leaveMessage/queryLeaveMessage",
    dataType: "json",
    contentType: "application/json;charset=UTF-8",
    data: JSON.stringify({
      "dishId": dishId,
      "type": "2"
    }),
    success: function (res) {
      console.log(res)
      let data = '';
      for (let index = 0; index < res.data.length; index++) {
        data += '<div class="msgBox">' +
          '<div class="user_name">用户名：' + res.data[index].clientName + '</div>' +
          '<div class="user_msg">内容：' + res.data[index].message + '</div>' +
          '<div class="user_time">投诉时间：' + res.data[index].leaveDate + '</div>' +
          '</div>'
      }
      $('.dialog3 #message-detail').empty().append(data);
    }
  });
}

// 添加投诉
$('.dialog3 #addMsg').click(function () {
  if ($('.dialog3 #addMsgContent').val() == '') {
    layui.use('layer', function () {
      var layer = layui.layer;
      layer.msg('内容不能为空！')
    });
  } else {
    $.ajax({
      type: "post",
      url: url + port + "/leaveMessage/addLeaveMessage",
      dataType: "json",
      contentType: "application/json;charset=UTF-8",
      data: JSON.stringify({
        "clientId": Number(getCookie('userid')),
        "dishId": Number(dishId),
        "message": $('.dialog3 #addMsgContent').val(),
        "type": "2"
      }),
      success: function (res) {
        $('.dialog3 #addMsgContent').val('');
        getMsgType();
      }
    });
  }
});

//删除投诉
$('body').on('click', '.dialog3 .deleteMsg', function () {
  $.ajax({
    type: "get",
    url: url + port + "/leaveMessage/delLeaveMessageById?id=" + $(this).attr('value'),
    dataType: "json",
    contentType: "application/json;charset=UTF-8",
    success: function () {
      layer.msg('删除成功');
      $('.dialog3 #message-detail').empty();
      getMsgType();
    }
  });
});

$('body').on('click', '.dialog2', function () {
  $(this).hide();
});

$('body').on('click', '.messageDetail', function () {
  event.stopPropagation();
  return false;
});

$('body').on('click', '.message-detail-close', function () {
  $('.dialog2').hide();
});

$('body').on('click', '.dialog3', function () {
  $(this).hide();
});

$('body').on('click', '.dialog3 .messageDetail', function () {
  event.stopPropagation();
  return false;
});

$('body').on('click', '.dialog3 .message-detail-close', function () {
  $('.dialog3').hide();
});