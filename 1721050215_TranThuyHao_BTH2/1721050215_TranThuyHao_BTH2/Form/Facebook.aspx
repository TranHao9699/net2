<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Facebook.aspx.cs" Inherits="_1721050215_TranThuyHao_BTH2.Form.Facebook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>facebook</title>
    <link href="../Style/Facebook_css.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
</head>
<body>
    <div id="header_wrapper">
        <div id="header">
            <li id="sitename"><a href="http://talkerscode.com">facebook</a></li>
            <form action="post">
                <li>Email hoặc điện thoại<br>
                    <input type="text" name="email"></li>
                <li>Mật khẩu<br>
                    <input type="password" name="password"><br>
                    <a href="">Quên tài khoản?</a></li>
                <li>
                    <input type="submit" name="login" value="Đăng nhập"></li>
            </form>
        </div>
    </div>

    <div id="wrapper">

        <div id="div1">
            <p>Facebook giúp bạn chia sẻ và kết nối với
                <br>
                mọi người trong cuộc sống của bạn.</p>

            <img src="../Images/fb1.png" style="height: 210px; width: 429px" />
        </div>

        <div id="div2">
            <h1>Đăng ký</h1>
            <p>Bằng thông tin chính xác của bạn để có thể kết nối thực.</p>
            <li>
                <input type="text" placeholder="Họ" id="firstname"><input type="text" placeholder="Tên" id="surname"></li>
            <li>
                <input type="text" placeholder="Số di động hoặc Email"></li>
            <li>
                <input type="text" placeholder="Nhập lại số di động hoặc Email"></li>
            <li>
                <input type="password" placeholder="Mật khẩu mới"></li>
            <p>Ngày sinh</p>
            <li>
                <select>
                    <option>Ngày</option>
                </select>
                <select>
                    <option>Tháng</option>
                </select>
                <select>
                    <option>Năm</option>
                </select>
                <a href="">Tại sao tôi cần cung cấp ngày sinh của mình?</a>
            </li>
            <li>
                <input type="radio">Nữ
                <input type="radio">Nam</li>
            <li id="terms">Bằng cách nhấp vào Đăng ký, bạn đồng ý với <a href="">Các điều khoản</a> của chúng tôi và rằng bạn đã đọc <a href="">Chính sách dữ liệu</a>, của chúng tôi bao gồm <a href="">sử dụng Cookie</a>.</li>
            <li>
                <input type="submit" value="Đăng ký"></li>
            <li id="create_page"><a href="">Tạo trang</a> dành cho người nổi tiếng,nhãn hiệu hoặc doanh nghiệp.</li>
        </div>

    </div>

    <div id="footer_wrapper">

        <div id="footer1">
            Tiếng việt <a href="">हिन्दी</a><a href="">ਪੰਜਾਬੀ</a><a href=""> اردو</a><a href="">தமிழ்</a><a href="">বাংলা</a><a href="">मराठी</a><a href="">తెలుగు</a><a href="">ગુજરાતી</a><a href="">ಕನ್ನಡ</a><a href="">മലയാളം</a>
        </div>
        <div id="footer2">
            <a href="">Đăng ký</a><a href="">Đăng nhập</a><a href="">Messenger</a><a href="">Facebook Lite</a><a href="">Mobile</a><a href="">Tìm bạn bè</a><a href="">Badges</a><a href="">People</a><a href="">Trang</a><a href="">Địa điểm</a><a href="">Trò chơi</a><a href="">Vị Trí</a><a href="">Celebrities</a><a href="">Nhóm</a><a href="">Moments</a><a href="">About</a><a href="">Tạo quảng cáo</a><a href="">Tạo Trang</a><a href="">Nhà phát triển</a><a href="">Tuyển dụng</a><a href="">Privacy</a><a href="">Cookies</a><a href="">Ads</a><a href="">Điều khoản</a><a href="">Trợ giúp</a>

        </div>

    </div>
</body>
</html>
