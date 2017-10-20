<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 17/10/19
  Time: 下午2:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>联动测试</title>
    <script src="jquery-3.2.1.js" type="text/javascript"></script>
</head>
<body>
部门:
<select name="department" id="department">
    <option value="-1">--请选择--</option>
</select>
员工:
<select name="num" id="num">
    <option value="-1">--请选择--</option>
</select>
</body>

<script>

   window.onload = function (){

        $.post("depart", function (date) {

            var _html = "";

            for (var i = 0; i < date.length; i++) {

                _html += "<option value='" + date[i] + "'>" + date[i] + "</option>"

            }

            $("#department").empty();

            $("#department").append("<option value='-1'>--请选择--</option>");

            $("#department").append(_html);

        })

    };

    $("#department").change(function () {

        $("#num").empty();

        $("#num").append("<option value='-1'>--请选择--</option>");

        $.post("num","department="+$("#department").val(),function (date) {

            var _html = "";

            for (var i = 0; i < date.length; i++) {

                _html += "<option value='" + date[i] + "'>" + date[i] + "</option>"

            }

            $("#num").append(_html);

        })

    })

</script>

</html>
