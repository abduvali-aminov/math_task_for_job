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

    <link rel="stylesheet" href="${pageContext.request.contextPath}/src/main/webapp/resources/jsp/dist/css/lightbox.min.css">


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
                    <span class="menu-title text-truncate">Topshiriq №1</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="d-flex align-items-center" href="${pageContext.request.contextPath}/array/">
                    <i data-feather="check-square"></i>
                    <span class="menu-title text-truncate">Topshiriq №2</span>
                </a>
            </li>
            <li class="nav-item active">
                <a class="d-flex align-items-center" href="${pageContext.request.contextPath}/student/">
                    <i data-feather="check-square"></i>
                    <span class="menu-title text-truncate">Topshiriq №3</span></a>
            </li>
        </ul>
    </div>
</div>
<!-- BEGIN: Content-->
<div class="content app-content" style="padding: 1.5rem">
    <div class="content-wrapper container-xxl p-0">
        <div class="content-body">
<%--            -------------------------------          --%>
            <div class="card">
                <div class="card-body border-bottom pb-0">
                    <h4 class="card-title">Studentlar ro'yxati</h4>
                </div>
                <div class="d-flex justify-content-between align-items-center header-actions mx-2 row mt-75">
                    <div class="col-sm-12 col-lg-4 d-flex justify-content-center justify-content-lg-start">

                    </div>
                    <div class="col-sm-12 col-lg-8 ps-xl-75 ps-0 mb-2">
                        <div class="dt-action-buttons d-flex align-items-center justify-content-center justify-content-lg-end flex-lg-nowrap flex-wrap">
                            <div class="me-1 d-inline-flex mt-50">
                                <div id="DataTables_Table_0_filter" class="dataTables_filter">
                                    Search:
                                    <label>
                                        <input type="search" class="form-control" placeholder aria-controls="DataTables_Table_0">
                                    </label>
                                </div>
                            </div>
                            <div class="dt-buttons d-inline-flex mt-50">
                                <form action="${pageContext.request.contextPath}/student/export/pdf" method="get">
                                    <button class="dt-button buttons-collection btn btn-outline-secondary dropdown-toggle me-2" tabindex="0" aria-controls="DataTables_Table_0"
                                    type="submit" aria-haspopup="true" aria-expanded="false" >
                                        <i data-feather="share"></i>
                                        <span>Export</span>
                                    </button>
                                </form>
                                <button class="dt-button add-new btn btn-primary" tabindex="0" aria-controls="DataTables_Table_0"
                                        type="button" data-bs-toggle="modal" data-bs-target="#modals-slide-in">
                                    <span>Yangi student qo'shish</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-datatable table-responsive pt-0">
                    <table class="user-list-table table">
                        <thead class="table-light">
                            <tr>
                                <th></th>  <%--photo--%>
                                <th>Ism Familiya</th> <%--with email--%>
                                <th>Foydalanuvchi roli</th>
                                <th>Mamlakat</th>
                                <th>Manzil</th>
                                <th>Telefon</th>
                                <th class="text-center">Amallar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="std" items="${studentList}">
                                <tr>
                                    <td>
                                        <div class="avatar-wrapper">
                                            <div class="avatar">
                                                <a href="/uploads/${std.fileName}">
                                                    <img id="avatar" src="${pageContext.request.contextPath}/uploads/${std.fileName}" height="32" width="32">
                                                </a>
                                            </div>
                                        </div>
                                    </td>
                                    <td>${std.name}</td>
                                    <td>${std.userRole}</td>
                                    <td>${std.country}</td>
                                    <td>${std.address}</td>
                                    <td>${std.telNumber}</td>
                                    <td class="text-center">

                                        <button type="submit"  class="btn-sm btn-outline-secondary waves-effect" id="btn-show-1" onclick="btn_show_1(${std.id})">
                                            <i data-feather="eye"></i>
                                        </button>
                                        <button type="submit"  class="btn-sm btn-outline-success waves-effect" id="btn-edit-1" onclick="btn_edit_1(${std.id})">
                                            <i data-feather="edit"></i>
                                        </button>
                                        <button type="submit"  class="btn-sm btn-outline-danger waves-effect" id="btn-del-1" onclick="btn_del_1(${std.id})">
                                            <i data-feather="trash"></i>
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <!-- Modal to add new user starts-->
                <div class="modal modal-slide-in new-user-modal fade" id="modals-slide-in">
                    <div class="modal-dialog">
                        <form class="add-new-user modal-content pt-0" method="post" enctype="multipart/form-data"
                              action="${pageContext.request.contextPath}/student/add">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">×</button>
                            <div class="modal-header mb-1">
                                <h5 class="modal-title" id="exampleModalLabel">Yangi student qo'shish</h5>
                            </div>
                            <div class="modal-body flex-grow-1">
                                <img id="imgEditProfileAdd" src="#" alt="" />
                                <div class="my-2">
                                    <label class="form-label" for="basic-icon-default-fullname">Ism Familiya</label>
                                    <input
                                            type="text"
                                            class="form-control dt-full-name"
                                            id="basic-icon-default-fullname"
                                            placeholder="Abduvali Aminov"
                                            name="name"
                                            required
                                    />
                                </div>
                                <div class="mb-1">
                                    <label class="form-label" for="basic-icon-default-uname">Username</label>
                                    <input
                                            type="text"
                                            id="basic-icon-default-uname"
                                            class="form-control dt-uname"
                                            placeholder="abduvali_aminov"
                                            name="username"
                                            required
                                    />
                                </div>
                                <div class="mb-1">
                                    <label class="form-label" for="basic-icon-default-email">Email</label>
                                    <input
                                            type="text"
                                            id="basic-icon-default-email"
                                            class="form-control dt-email"
                                            placeholder="abduvali.aminov@example.com"
                                            name="email"
                                            required
                                    />
                                </div>
                                <div class="mb-1">
                                    <label class="form-label" for="basic-icon-default-contact">Telefon</label>
                                    <input
                                            type="text"
                                            id="basic-icon-default-contact"
                                            class="form-control dt-contact"
                                            placeholder="+998 (99) 967 16 86"
                                            name="telNumber"
                                            required
                                    />
                                </div>
                                <div class="mb-1">
                                    <label class="form-label" for="basic-icon-default-company">Manzil</label>
                                    <input
                                            type="text"
                                            id="basic-icon-default-company"
                                            class="form-control dt-contact"
                                            placeholder="Urganch shahar"
                                            name="address"
                                            required
                                    />
                                </div>
                                <div class="mb-1">
                                    <label class="form-label" for="country">Mamlakat</label>
                                    <select id="country" name="country" class="select2 form-select">
                                        <option value="Uzbekistan">Uzbekistan</option>
                                        <option value="Bangladesh">Bangladesh</option>
                                        <option value="Belarus">Belarus</option>
                                        <option value="Brazil">Brazil</option>
                                        <option value="Canada">Canada</option>
                                        <option value="China">China</option>
                                        <option value="France">France</option>
                                        <option value="Germany">Germany</option>
                                        <option value="India">India</option>
                                        <option value="Indonesia">Indonesia</option>
                                        <option value="Israel">Israel</option>
                                        <option value="Italy">Italy</option>
                                        <option value="Japan">Japan</option>
                                        <option value="Korea">Korea, Republic of</option>
                                        <option value="Mexico">Mexico</option>
                                        <option value="Philippines">Philippines</option>
                                        <option value="Russia">Russian Federation</option>
                                        <option value="South Africa">South Africa</option>
                                        <option value="Thailand">Thailand</option>
                                        <option value="Turkey">Turkey</option>
                                        <option value="Ukraine">Ukraine</option>
                                        <option value="United Arab Emirates">United Arab Emirates</option>
                                        <option value="United Kingdom">United Kingdom</option>
                                        <option value="United States">United States</option>
                                    </select>
                                </div>
                                <div class="mb-2">
                                    <label class="form-label" for="user-role">Foydalanuvchi roli</label>
                                    <select id="user-role" name="userRole" class="select2 form-select">
                                        <option value="subscriber">Subscriber</option>
                                        <option value="editor">Editor</option>
                                        <option value="author">Author</option>
                                        <option value="admin">Admin</option>
                                    </select>
                                </div>
                                <div class="mb-1">
                                    <label><i class="form-label"></i></label>
                                    <input type="file" name="file" accept="image/jpeg" id="file1" onchange="readURL(this);" required/>
                                </div>
                                <button type="submit" class="btn btn-primary me-1 data-submit" id="btn_id">Saqlash</button>
                                <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal">Bekor qilish</button>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- Modal to add new user Ends-->

                <div class="modal modal-slide-in new-user-modal fade" id="editModal">
                    <div class="modal-dialog">
                        <form class="add-new-user modal-content pt-0" method="post" enctype="multipart/form-data"
                              action="${pageContext.request.contextPath}/student/add">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">×</button>
                            <div class="modal-header mb-1">
                                <h5 class="modal-title">Student ma'lumotlarini o'zgartirish</h5>
                            </div>
                            <div class="modal-body flex-grow-1">
                                <input type="hidden" id="idEdit" name = "id">
                                <img id="imgEditProfile" src="#" alt="" />
                                <div class="my-1">
                                    <label class="form-label" for="basic-icon-default-fullname">Ism Familiya</label>
                                    <input
                                            type="text"
                                            class="form-control dt-full-name"
                                            id="nameEdit"
                                            placeholder="Abduvali Aminov"
                                            name="name"
                                            required
                                    />
                                </div>
                                <div class="mb-1">
                                    <label class="form-label" for="basic-icon-default-uname">Username</label>
                                    <input
                                            type="text"
                                            id="usernameEdit"
                                            class="form-control dt-uname"
                                            placeholder="abduvali_aminov"
                                            name="username"
                                            required
                                    />
                                </div>
                                <div class="mb-1">
                                    <label class="form-label" for="basic-icon-default-email">Email</label>
                                    <input
                                            type="text"
                                            id="emailEdit"
                                            class="form-control dt-email"
                                            placeholder="abduvali.aminov@example.com"
                                            name="email"
                                            required
                                    />
                                </div>
                                <div class="mb-1">
                                    <label class="form-label" for="basic-icon-default-contact">Telefon</label>
                                    <input
                                            type="text"
                                            id="telNumberEdit"
                                            class="form-control dt-contact"
                                            placeholder="+998 (99) 967 16 86"
                                            name="telNumber"
                                            required
                                    />
                                </div>
                                <div class="mb-1">
                                    <label class="form-label" for="basic-icon-default-company">Manzil</label>
                                    <input
                                            type="text"
                                            id="addressEdit"
                                            class="form-control dt-contact"
                                            placeholder="Urganch shahar"
                                            name="address"
                                            required
                                    />
                                </div>
                                <div class="mb-1">
                                    <label class="form-label" for="country">Mamlakat</label>
                                    <select id="countryEdit" name="country" class="select2 form-select">
                                        <option value="Uzbekistan">Uzbekistan</option>
                                        <option value="Bangladesh">Bangladesh</option>
                                        <option value="Belarus">Belarus</option>
                                        <option value="Brazil">Brazil</option>
                                        <option value="Canada">Canada</option>
                                        <option value="China">China</option>
                                        <option value="France">France</option>
                                        <option value="Germany">Germany</option>
                                        <option value="India">India</option>
                                        <option value="Indonesia">Indonesia</option>
                                        <option value="Israel">Israel</option>
                                        <option value="Italy">Italy</option>
                                        <option value="Japan">Japan</option>
                                        <option value="Korea">Korea, Republic of</option>
                                        <option value="Mexico">Mexico</option>
                                        <option value="Philippines">Philippines</option>
                                        <option value="Russia">Russian Federation</option>
                                        <option value="South Africa">South Africa</option>
                                        <option value="Thailand">Thailand</option>
                                        <option value="Turkey">Turkey</option>
                                        <option value="Ukraine">Ukraine</option>
                                        <option value="United Arab Emirates">United Arab Emirates</option>
                                        <option value="United Kingdom">United Kingdom</option>
                                        <option value="United States">United States</option>
                                    </select>
                                </div>
                                <div class="mb-2">
                                    <label class="form-label" for="user-role">Foydalanuvchi roli</label>
                                    <select id="userRoleEdit" name="userRole" class="select2 form-select">
                                        <option value="subscriber">Subscriber</option>
                                        <option value="editor">Editor</option>
                                        <option value="author">Author</option>
                                        <option value="admin">Admin</option>
                                    </select>
                                </div>
                                <div class="mb-1">
                                    <label><i class="form-label"></i></label>
                                    <input type="file" name="file" accept="image/jpeg" id="fileEdit" onchange="readURL(this);"/>

                                </div>
                                <button type="submit" class="btn btn-primary me-1 data-submit" id="btn_id1">Saqlash</button>
                                <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal">Bekor qilish</button>
                            </div>
                        </form>
                    </div>
                </div>

            </div>


    <div class="modal fade" id="showModal" tabindex="-1" aria-labelledby="addNewCardTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content p-2 py-0">

                            <div class="user-avatar-section ">
                                <div class="d-flex align-items-center flex-column">
                                    <img
                                            class="img-fluid rounded mt-3 mb-2"
                                            id="img1"
                                            height="200"
                                            width="200"
                                            alt="User avatar"
<%--                                            src="${pageContext.request.contextPath}/uploads/Data-Structure-Tutorial-1.jpg"--%>
                                    />
                                    <div class="user-info text-center">
                                        <h4 id="nameShow"></h4>
                                        <span id="userRoleShow" class="badge bg-light-secondary"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex justify-content-around my-2 pt-75">
                                <div class="d-flex align-items-start me-2">
              <span class="badge bg-light-primary p-75 rounded">
                <i data-feather="check" class="font-medium-2"></i>
              </span>
                                    <div class="ms-75">
                                        <h4 class="mb-0">1,12K</h4>
                                        <small>Bajarilgan Topshiriqlar</small>
                                    </div>
                                </div>
                                <div class="d-flex align-items-start">
              <span class="badge bg-light-primary p-75 rounded">
                <i data-feather="briefcase" class="font-medium-2"></i>
              </span>
                                    <div class="ms-75">
                                        <h4 class="mb-0">43</h4>
                                        <small>Ishlangan Loyihalar</small>
                                    </div>
                                </div>
                            </div>
                            <h4 class="fw-bolder border-bottom pb-50 mb-1">Batafsil:</h4>
                            <div class="info-container">
                                <ul class="list-unstyled">
                                    <li class="mb-75">
                                        <span class="fw-bolder me-25">Username:</span>
                                        <span id="usernameShow"></span>
                                    </li>
                                    <li class="mb-75">
                                        <span class="fw-bolder me-25">Email:</span>
                                        <span id="emailShow"></span>
                                    </li>
                                    <li class="mb-75">
                                        <span class="fw-bolder me-25">Status:</span>
                                        <span class="badge bg-light-success">Active</span>
                                    </li>
                                    <li class="mb-75">
                                        <span class="fw-bolder me-25">Mamlakat:</span>
                                        <span id="countryShow"></span>
                                    </li>
                                    <li class="mb-75">
                                        <span class="fw-bolder me-25">Manzil:</span>
                                        <span id="addressShow"></span>
                                    </li>
                                    <li class="mb-75">
                                        <span class="fw-bolder me-25">Telefon:</span>
                                        <span id="telNumberShow"></span>
                                    </li>
                                </ul>
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
<script src="${pageContext.request.contextPath}/src/main/webapp/resources/jsp/dist/js/lightbox-plus-jquery.min.js"></script>

<script type="text/javascript">
    $(window).on('load',  function(){
        if (feather) {
            feather.replace({ width: 14, height: 14 });
        }
    });
    function btn_del_1(id) {
        $.ajax({
            type: 'DELETE',
            url: "/student/delete/" + id,
            success: function() {
                location.reload();
            }
        });
    }
    function readURL(input) {
        if (input.files && input.files[0]) {
            let reader = new FileReader();

            reader.onload = function (e) {
                $('#imgEditProfile').attr('src', e.target.result).width(200).height(200);
                $('#imgEditProfileAdd').attr('src', e.target.result).width(200).height(200);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
    function btn_show_1(id) {
        $.ajax({
            type: 'GET',
            url: "/student/" + id,
            success: function(response) {
                $('#showModal').modal('show');
                $('#img1').attr("src", '/uploads/' + response.fileName);
                $('#nameShow').html(response.name);
                $('#usernameShow').html(response.username);
                $('#telNumberShow').html(response.telNumber);
                $('#emailShow').html(response.email);
                $('#addressShow').html(response.address);
                $('#countryShow').html(response.country);
                $('#userRoleShow').html(response.userRole);

            }
        });
    }
    function btn_edit_1(id) {
        $.ajax({
                type: 'GET',
                url: "/student/" + id,
                success: function(response) {
                    $('#editModal').modal('show');
                    $('#idEdit').val(response.id);
                    $('#nameEdit').val(response.name);
                    $('#usernameEdit').val(response.username);
                    $('#telNumberEdit').val(response.telNumber);
                    $('#emailEdit').val(response.email);
                    $('#addressEdit').val(response.address);
                    $('#countryEdit').val(response.country);
                    $('#userRoleEdit').val(response.userRole);
                    $('#imgEditProfile').attr("src", '/uploads/' + response.fileName).width("200").height("200");
                    $('#fileEdit').val('/uploads/' + response.fileName);

                }
            });
    }
</script>

</body>
</html>