<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_1721050215_TranThuyHao_BaiTH2.Form.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/umd/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <style>
        .thumbnail-custom {
            display: block;
            padding: 4px;
            padding-bottom: 20px;
            margin-bottom: 0px;
            line-height: 1.42857143;
            background-color: #fff;
            border: 1px solid #ddd;
        }
        body {
            background-image: url("image/body.jpg");
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div  style="background-color: #243561; height: 70px; border-radius: 5px 5px 0 0;">
                    <h2 style="color: white; text-align: center;">ĐĂNG NHẬP HỆ THỐNG QUẢN LÝ THÔNG TIN</h2>
                </div>
            </div>
            <div class="row">
                <div class="thumbnail-custom" style="border-radius: 0 0 0 0; border-bottom: none;">
                    <br />
                    <div class="">
                        <div class="thumbnail">
                            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                    <li data-target="#myCarousel" data-slide-to="1"></li>
                                    <li data-target="#myCarousel" data-slide-to="2"></li>
                                    <li data-target="#myCarousel" data-slide-to="3"></li>
                                </ol>
                                <div class="carousel-inner">
                                    <div class="item">
                                        <img src="images/64.jpg" alt="64.jpg" style="width: 35%; height: 311px;" />

                                        <div class="carousel-caption">
                                            <p style="font-weight: bold;">Hạ Long</p>
                                        </div>
                                    </div>
                                </div>
                                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="">
                        <div class="thumbnail">
                            <div style="padding: 10px;">
                                &nbsp;<br />
                                <br />
                                <p class="label-input">Tên đăng nhập</p>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input id="email" type="text" class="form-control" name="email" />
                                </div>
                                <br />
                                <p class="label-input">Mật khẩu</p>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
                                    <input id="password" type="password" class="form-control" name="password" />
                                </div>
                                <br />
                                <button type="button" class="btn btn-primary">Đăng nhập</button>&nbsp;&nbsp;
                            <button type="button" class="btn btn-danger">Hủy bỏ</button>
                                <br />
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
        <div class="row" style="padding: 0 16px 0 16px;">
            <div class="col-sm-2"></div>
            <div class="col-sm-8" style="background-color: #c6daf2;">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-2">
                        <h1 style="color: #428bca;">HUMG</h1>
                        <p style="color: #428bca; line-height: 0.5; font-size: 13px;">www.humg.edu.vn</p>
                    </div>
                    <div class="col-sm-8">
                        <br />
                        <br />
                        <p style="font-size: 15.5px; font-weight: bold; color: #243561">
                            BẢN QUYỀN THUỘC VỀ: KHOA CÔNG NGHỆ
                        THÔNG TIN
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-2"></div>
        </div>
        <div class="row" style="padding: 0 16px 0 16px;">
            <div class="col-sm-2"></div>
            <div class="col-sm-8 thumbnail" style="height: 30px; border-radius: 0 0 5px 5px;"></div>
            <div class="col-sm-2"></div>
        </div>
    </form>
</body>
</html>
