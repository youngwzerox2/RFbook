<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!doctype html>
        <!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
        <!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
        <!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
        <!--[if gt IE 8]><!-->
        <html class="no-js" lang=""> <!--<![endif]-->

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <title>커뮤니티 관리</title>
            <meta name="description" content="Ela Admin - HTML5 Admin Template">
            <meta name="viewport" content="width=device-width, initial-scale=1">

            <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
            <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
            <link rel="stylesheet"
                href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
            <link rel="stylesheet"
                href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
            <link rel="stylesheet"
                href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
            <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
            <link rel="stylesheet" href="assets/css/lib/datatable/dataTables.bootstrap.min.css">
            <link rel="stylesheet" href="assets/css/style.css">

            <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet'
                type='text/css'>

            <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

        </head>

        <body>
            <!-- 사이드바 -->
            <%@ include file="sidebar.jsp" %>

                <!-- Right Panel -->

                <div id="right-panel" class="right-panel">

                    <!-- 헤더 -->
                    <%@ include file="header.jsp" %>

                        <div class="breadcrumbs">
                            <div class="breadcrumbs-inner">
                                <div class="row m-0">
                                    <div class="col-sm-4">
                                        <div class="page-header float-left">
                                            <div class="page-title">
                                                <h1>커뮤니티 관리</h1>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="content">
                            <div class="animated fadeIn">

                                <div class="row">

                                    <div class="col-md-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <strong class="card-title">커뮤니티 신고 리스트</strong>
                                            </div>
                                            <div class="card-body">
                                                <table id="bootstrap-data-table"
                                                    class="table table-striped table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>회원아이디</th>
                                                            <th>신고글 번호</th>
                                                            <th>신고항목</th>
                                                            <th>신고받은 글 번호</th>
                                                            <th>신고내용</th>
                                                            <th>신고글 작성시간</th>
                                                            <th>신고글 처리여부</th>
                                                            <th>신고글 답변</th>
                                                            <th>신고글 답변 작성시간</th>
                                                            <th>신고받은 글 작성자</th>
                                                            <th>처리담당자</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${communityList }" var="community">
                                                            <tr>
                                                                <td> <span class="name">${community.member_id}</span>
                                                                </td>
                                                                <td> <span class="name"><a href="communityDetail?complain_id=${community.complain_id}">${community.complain_id}</a></span>
                                                                </td>
                                                                <td> <span
                                                                        class="name">${community.complain_type}</span>
                                                                </td>
                                                                <td> <span
                                                                        class="name">${community.complain_target_id}</span>
                                                                </td>
                                                                <td> <span
                                                                        class="name">${community.complain_content}</span>
                                                                </td>
                                                                <td> <span
                                                                        class="name">${community.complain_date}</span>
                                                                </td>
                                                                <td> <span
                                                                        class="name">${community.complain_done}</span>
                                                                </td>
                                                                <td> <span
                                                                        class="name">${community.complain_reply}</span>
                                                                </td>
                                                                <td> <span
                                                                        class="name">${community.complain_reply_date}</span>
                                                                </td>
                                                                <td> <span
                                                                        class="name">${community.complain_target_user}</span>
                                                                </td>
                                                                <td> <span
                                                                        class="name">${community.complain_reply_admin}</span>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- .animated -->
                            </div><!-- .animated -->
                        </div><!-- .content -->

                        <div class="clearfix"></div>

                        <!-- 푸터 -->
                        <%@ include file="footer.jsp" %>

                </div><!-- /#right-panel -->

                <!-- Right Panel -->

                <!-- Scripts -->
                <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
                <script
                    src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
                <script src="assets/js/main.js"></script>

                <script src="assets/js/lib/data-table/datatables.min.js"></script>
                <script src="assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
                <script src="assets/js/lib/data-table/dataTables.buttons.min.js"></script>
                <script src="assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
                <script src="assets/js/lib/data-table/jszip.min.js"></script>
                <script src="assets/js/lib/data-table/vfs_fonts.js"></script>
                <script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
                <script src="assets/js/lib/data-table/buttons.print.min.js"></script>
                <script src="assets/js/lib/data-table/buttons.colVis.min.js"></script>
                <script src="assets/js/init/datatables-init.js"></script>


                <script type="text/javascript">
                    $(document).ready(function () {
                        $('#bootstrap-data-table-export').DataTable();
                    });
                </script>


        </body>

        </html>