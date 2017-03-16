<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>酒店列表</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="<%=request.getContextPath()%>/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/css/dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="<%=request.getContextPath()%>/assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <%@ include file="/common-header.jsp" %>
    <div class="container-fluid">
      <div class="row">
        <%@ include file="/sidebar.jsp" %>
        
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h2 class="sub-header">线路订单列表</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>订单编号</th>
                  <th>用户编号</th>
                  <th>团队编号</th>
                  <th>人数</th>
                  <th>订单日期</th>
                  <th>订单token</th>
                  <th>订单价格</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach items="${tourOrderList}" var="tourOrder">
              		<tr>
              			<td>${tourOrder.name }</td>
              			<td>${tourOrder.uId }</td>
              			<td>${tourOrder.pId }</td>
              			<td>${tourOrder.people }</td>
              			<td><fmt:formatDate value="${tourPrice.oDate }"  pattern="yyyy-MM-dd"/></td>
              			<td>${tourOrder.token }</td>
              			<td>${tourOrder.price }</td>
              		</tr>
              	</c:forEach>
              </tbody>
            </table>
          </div>
          
          <h2 class="sub-header">酒店订单列表</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>订单编号</th>
                  <th>酒店编号</th>
                  <th>用户编号</th>
                  <th>人数</th>
                  <th>天数</th>
                  <th>订单token</th>
                  <th>联系电话</th>
                  <th>订单价格</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach items="${hotelOrderList}" var="hotelOrder">
              		<tr>
              			<td>${hotelOrder.id }</td>
              			<td>${hotelOrder.hotelId }</td>
              			<td>${hotelOrder.userId }</td>
              			<td>${hotelOrder.people }</td>
              			<td>${hotelOrder.day }</td>
              			<td>${hotelOrder.token }</td>
              			<td>${hotelOrder.memberPhone }</td>
              			<td>${hotelOrder.price }</td>
              		</tr>
              	</c:forEach>
              </tbody>
            </table>
          </div>
          
          <h2 class="sub-header">门票订单列表</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>订单编号</th>
                  <th>门票编号</th>
                  <th>用户编号</th>
                  <th>人数</th>
                  <th>订单token</th>
                  <th>订单价格</th>
                  <th>订单日期</th>
                  <th>联系电话</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach items="${ticketOrderList}" var="ticketOrder">
              		<tr>
              			<td>${ticketOrder.id }</td>
              			<td>${ticketOrder.ticketId }</td>
              			<td>${ticketOrder.userId }</td>
              			<td>${ticketOrder.people }</td>
              			<td>${ticketOrder.token }</td>
              			<td>${ticketOrder.price }</td>
              			<td><fmt:formatDate value="${ticketOrder.date }"  pattern="yyyy-MM-dd"/></td>
              			<td>${ticketOrder.memberPhone }</td>
              		</tr>
              	</c:forEach>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="<%=request.getContextPath()%>/assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="<%=request.getContextPath()%>/dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="<%=request.getContextPath()%>/assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="<%=request.getContextPath()%>/assets/js/ie10-viewport-bug-workaround.js"></script>
    <script type="text/javascript">
    	function deleteItem(id){
    		var flag = confirm("确定要删除该项吗?");
    		if(flag==true){
    			location.href='<%=request.getContextPath()%>/hotel/delete/'+id;
    		}
    	}
    </script>
  </body>
</html>
