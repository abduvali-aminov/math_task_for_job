<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html class="loading" lang="en" data-textdirection="ltr">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Math Task</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/jsp/app-assets/css/bootstrap.min.css">
    <%--    <link rel="apple-touch-icon" href="app-assets/images/ico/apple-icon-120.png">--%>
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/jsp/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/jsp/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/jsp/app-assets/vendors/css/charts/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/jsp/app-assets/vendors/css/extensions/toastr.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/jsp/app-assets/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/jsp/app-assets/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/jsp/app-assets/css/components.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/jsp/app-assets/css/themes/dark-layout.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/jsp/app-assets/css/themes/bordered-layout.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/jsp/app-assets/css/themes/semi-dark-layout.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/jsp/app-assets/css/core/menu/menu-types/vertical-menu.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/jsp/app-assets/css/pages/dashboard-ecommerce.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/jsp/app-assets/css/plugins/charts/chart-apex.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/jsp/app-assets/css/plugins/extensions/ext-component-toastr.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/jsp/assets/css/style.css">

</head>

<body class="vertical-layout vertical-menu-modern  navbar-floating footer-static  " data-open="click" data-menu="vertical-menu-modern" data-col="">

<div class="main-menu menu-fixed menu-light menu-accordion menu-shadow" data-scroll-to-active="true">
    <div class="navbar-header">
        <ul class="nav navbar-nav flex-row">
            <li class="nav-item me-auto"><a class="navbar-brand" href="/"><span class="brand-logo">
                <svg viewbox="0 0 139 95" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" height="24">
                  <defs>
                    <lineargradient id="linearGradient-1" x1="100%" y1="10.5120544%" x2="50%" y2="89.4879456%">
                      <stop stop-color="#000000" offset="0%"></stop>
                      <stop stop-color="#FFFFFF" offset="100%"></stop>
                    </lineargradient>
                    <lineargradient id="linearGradient-2" x1="64.0437835%" y1="46.3276743%" x2="37.373316%" y2="100%">
                      <stop stop-color="#EEEEEE" stop-opacity="0" offset="0%"></stop>
                      <stop stop-color="#FFFFFF" offset="100%"></stop>
                    </lineargradient>
                  </defs>
                  <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                    <g id="Artboard" transform="translate(-400.000000, -178.000000)">
                      <g id="Group" transform="translate(400.000000, 178.000000)">
                        <path class="text-primary" id="Path"
                              d="M-5.68434189e-14,2.84217094e-14 L39.1816085,2.84217094e-14 L69.3453773,32.2519224 L101.428699,2.84217094e-14 L138.784583,2.84217094e-14 L138.784199,29.8015838 C137.958931,37.3510206 135.784352,42.5567762 132.260463,45.4188507 C128.736573,48.2809251 112.33867,64.5239941 83.0667527,94.1480575 L56.2750821,94.1480575 L6.71554594,44.4188507 C2.46876683,39.9813776 0.345377275,35.1089553 0.345377275,29.8015838 C0.345377275,24.4942122 0.230251516,14.560351 -5.68434189e-14,2.84217094e-14 Z"
                              style="fill:currentColor"></path>
                        <path id="Path1"
                              d="M69.3453773,32.2519224 L101.428699,1.42108547e-14 L138.784583,1.42108547e-14 L138.784199,29.8015838 C137.958931,37.3510206 135.784352,42.5567762 132.260463,45.4188507 C128.736573,48.2809251 112.33867,64.5239941 83.0667527,94.1480575 L56.2750821,94.1480575 L32.8435758,70.5039241 L69.3453773,32.2519224 Z"
                              fill="url(#linearGradient-1)" opacity="0.2"></path>
                        <polygon id="Path-2" fill="#000000" opacity="0.049999997" points="69.3922914 32.4202615 32.8435758 70.5039241 54.0490008 16.1851325"></polygon>
                        <polygon id="Path-21" fill="#000000" opacity="0.099999994" points="69.3922914 32.4202615 32.8435758 70.5039241 58.3683556 20.7402338"></polygon>
                        <polygon id="Path-3" fill="url(#linearGradient-2)" opacity="0.099999994" points="101.428699 0 83.0667527 94.1480575 130.378721 47.0740288"></polygon>
                      </g>
                    </g>
                  </g>
                </svg></span>
                <h2 class="brand-text">CUSTOMS</h2></a></li>
            <li class="nav-item nav-toggle">
                <a class="nav-link modern-nav-toggle pe-0" data-bs-toggle="collapse"><i class="d-block d-xl-none text-primary toggle-icon font-medium-4" data-feather="x"></i><i
                        class="d-none d-xl-block collapse-toggle-icon font-medium-4  text-primary" data-feather="disc" data-ticon="disc"></i>
                </a></li>
        </ul>
    </div>
    <div class="shadow-bottom"></div>
    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
            <li class="nav-item">
                <a class="d-flex align-items-center" href="${pageContext.request.contextPath}/" methods="GET">
                    <i data-feather="check-square"></i>
                    <span class="menu-title text-truncate">Topshiriq ???1</span>
                </a>
            </li>
            <li class="nav-item active">
                <a class="d-flex align-items-center" href="${pageContext.request.contextPath}/array/">
                    <i data-feather="check-square"></i>
                    <span class="menu-title text-truncate">Topshiriq ???2</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="d-flex align-items-center" href="${pageContext.request.contextPath}/student/">
                    <i data-feather="check-square"></i>
                    <span class="menu-title text-truncate">Topshiriq ???3</span></a>
            </li>
        </ul>
    </div>
</div>
<!-- BEGIN: Content-->
<div class="content app-content" style="padding: 1.5rem">
    <div class="content-wrapper container-xxl p-0">
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="row">
                        <div class="col-md-6 col-12">
                            <div class="card">
                                <div class="card-header border-bottom">
                                    <h4 class="card-title">Topshiriq ???2 bo'yicha berilgan koeffitsientlar</h4>
                                </div>
                                <div class="card-body pt-2">
                                    <div class="row">
                                        <c:forEach var="i" begin="0" end="5">
                                            <c:forEach var="j" begin="0" end="4">
                                                <div class="col-sm-2 mb-1">
                                                    <input type="number" id='a${i}${j}' class="form-control text-center" name="a">
                                                </div>
                                            </c:forEach>
                                        </c:forEach>
                                        <div class="col-sm-1">
                                            <button type="submit" id="rand" onclick="" class="btn btn-outline-primary waves-effect">Random</button>
                                        </div>
                                        <div class="col-sm-1 offset-1">
                                            <button type="submit" id="button" class="btn btn-outline-primary waves-effect">OK</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-12" id="result">
                            <div class="card">
                                <div class="card-header border-bottom">
                                    <h4 class="card-title">Natija</h4>
                                </div>
                                <div class="card-body pt-2">
                                    <div class="row">
                                        <c:forEach var="i" begin="0" end="4">
                                            <c:forEach var="j" begin="0" end="5">
                                                <div class="col-sm-2 mb-1">
                                                    <input type="number" id='b${i}${j}' class="form-control text-center" name="b">
                                                </div>
                                            </c:forEach>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


<button class="btn btn-primary btn-icon scroll-top" type="button"><i data-feather="arrow-up"></i></button>
<script src="<%=request.getContextPath()%>/resources/jsp/app-assets/vendors/js/vendors.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jsp/assets/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jsp/app-assets/vendors/js/charts/apexcharts.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jsp/app-assets/vendors/js/extensions/toastr.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jsp/app-assets/js/core/app-menu.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jsp/app-assets/js/core/app.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jsp/app-assets/js/scripts/customizer.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jsp/app-assets/js/scripts/pages/dashboard-ecommerce.min.js"></script>

<script type="text/javascript">
    $(window).on('load', function () {
        $("#result").hide();
        if (feather) {
            feather.replace({width: 14, height: 14});
        }
    })

    $("#rand").click(function () {
        var text = '';
        for (var i = 0; i <= 5; i++) {
            for (var j = 0; j <= 4; j++) {
                text = i + "" + j;
                let m = Math.floor((Math.random() * 100) + 1);
                $('#a' + text).val(m);
            }
        }
    });
    $(document).ready(function () {
        $('#button[type=submit]').click(function (e) {
            $('#result').show();
            let s = '';
            for (let i = 0; i <= 5; i++) {
                for (let j = 0; j <= 4; j++) {
                    s = s + $('#a' + i + "" + j).val() + " ";
                }
            }
            s = s.substring(0, s.length - 1);
            $.ajax({
                type: 'POST',
                url: "/array/sort",
                data: s,
                contentType: 'text/plain',
                dataType: "text",
                cache: false,
                success: function (response) {
                    let sp=response.replaceAll('[[','').replaceAll(']]','').split('],[');
                    $("#result").show();
                    for (let i=0; i<=4; i++){
                        let spl=sp[i].split(',');
                        for (let j=0; j<=5; j++){
                           let text = i + "" + j;
                            $('#b' + text).val(spl[j].replaceAll(']','').replaceAll('[',''));
                        }
                    }

                },
                error: function (jqXHR, textStatus, errorThrown) {
                    $('#result').show();
                    $("#msg").html(textStatus + " " + errorThrown).css("color", "red");
                }
            });
        });
    });
</script>
</body>
</html>