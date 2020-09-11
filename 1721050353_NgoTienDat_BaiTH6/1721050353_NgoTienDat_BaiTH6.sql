/*
Bài thực hành số 6
Môn học: Lập trình NET 2
Tên bài tập: Quản Lý Đồ Án Tốt Nghiệp
Tên cơ sở dữ liệu: DB_DATN
Sinh viên: Ngô Tiến Đạt	MSSV 1721050353
Lược đồ:
		tbl_khoahoc(Makh*, Tenkhoa, Thoigian, ghichu)
		tbl_chuyennganh(Makh*, TenKhoa, ghichu)
		tbl_sinhvien(Masv*, Tensv, Namsinh, Gioitinh, Khoa, Chuyennganh, Email, Dienthoai, Diachi)
		tbl_giangvien(Magv*, Tengv, Namsinh, Gioitinh, Hocvi, Email, Dienthoai, Diachi)
		tbl_linhvuc(Makh*, Tenkhoa, ghi chu)
		tbl_doan(Masv*, TenDA, GVHD, GVPB, linhvuc, Diem, Namtn)
*/

Create Database DB_DATN
Use DB_DATN

	/* Bảng tbl_khoahoc */
Create table tbl_khoahoc
(Makh Tinyint,
Tenkhoa Nvarchar(10),
Thoigian Nvarchar(50),
Ghichu Nvarchar(50)
Primary Key(Makh))

	/* Bảng tbl_chuyennganh */
Create table tbl_chuyennganh
(Macn Tinyint,
Tencn Nvarchar(50),
Ghichu Nvarchar(50)
Primary Key(Macn))

	/* Bảng tbl_sinhvien */
Create table tbl_sinhvien
(Masv Char(10),
Tensv Nvarchar(50),
Namsinh Date,
Gioitinh Bit,
Khoa Tinyint,
Chuyennganh Tinyint,
Email Varchar(50),
Dienthoai Varchar(50),
Diachi Nvarchar(200),
Ghichu Nvarchar(150),
Primary Key(Masv),
Foreign Key(Khoa)
References tbl_khoahoc ,
Foreign Key(Chuyennganh)
References tbl_chuyennganh)

	/* Bảng tbl_giangvien */
Create table tbl_giangvien
(Magv Char(6),
Tengv Nvarchar(50),
Namsinh Date,
Gioitinh Bit,
Hocvi Nvarchar(20),
Email Varchar(50),
Dienthoai Varchar(50),
Diachi Nvarchar(200),
Primary Key(Magv))

	/* Bảng tbl_linhvuc */
Create table tbl_linhvuc
(Malv Tinyint,
Tenlv Nvarchar(150),
Ghichu Nvarchar(150),
Primary Key(Malv))

	/* Bảng tbl_doan */
Create table tbl_doan
(Masv Char(10),
TenDA Nvarchar(400),
GVHD Char(6),
GVPB Char(6),
linhvuc Tinyint,
Diem Decimal(3,1),
Namtn Smallint,
Primary Key(Masv),
Foreign Key(GVHD)
References tbl_giangvien,
Foreign Key(GVPB)
References tbl_giangvien,
Foreign Key(linhvuc)
References tbl_linhvuc)

/* Thêm dữ liệu vào Bảng tbl_khoahoc */
insert into tbl_khoahoc values(47, N'Khóa 47 ', N'2002-2007 ', N'Đào tạo niên chế'); 
insert into tbl_khoahoc values(48, N'Khóa 48 ', N'2003-2008 ', N'Đào tạo niên chế'); 
insert into tbl_khoahoc values(49, N'Khóa 49 ', N'2004-2009 ', N'Đào tạo niên chế'); 
insert into tbl_khoahoc values(50, N'Khóa 50 ', N'2005-2010 ', N'Đào tạo niên chế'); 
insert into tbl_khoahoc values(51, N'Khóa 51 ', N'2006-2011 ', N'Đào tạo niên chế'); 
insert into tbl_khoahoc values(52, N'Khóa 52 ', N'2007-2012 ', N'Đào tạo niên chế'); 
insert into tbl_khoahoc values(53, N'Khóa 53 ', N'2008-2013 ', N'Đào tạo niên chế'); 
insert into tbl_khoahoc values(54, N'Khóa 54 ', N'2009-2014 ', N'Đào tạo tín chỉ'); 
insert into tbl_khoahoc values(55, N'Khóa 55 ', N'2010-2015 ', N'Đào tạo tín chỉ'); 
insert into tbl_khoahoc values(56, N'Khóa 56 ', N'2011-2016 ', N'Đào tạo tín chỉ'); 
insert into tbl_khoahoc values(57, N'Khóa 57 ', N'2012-2017 ', N'Đào tạo tín chỉ'); 
insert into tbl_khoahoc values(58, N'Khóa 58 ', N'2013-2018 ', N'Đào tạo tín chỉ'); 

/* Thêm dữ liệu vào Bảng tbl_chuyennganh */
insert into tbl_chuyennganh values(1, N'Tin học Mỏ', N''); 
insert into tbl_chuyennganh values(2, N'Tin học Trắc địa', N''); 
insert into tbl_chuyennganh values(3, N'Tin học Kinh tế', N''); 
insert into tbl_chuyennganh values(4, N'Tin học Địa chất', N''); 
insert into tbl_chuyennganh values(5, N'Mạng máy tính', N''); 
insert into tbl_chuyennganh values(6, N'Công nghệ phần mềm', N''); 
insert into tbl_chuyennganh values(7, N'Khoa học máy tính ứng dụng ', N'Tuyển sinh từ K60'); 


/* Thêm dữ liệu vào Bảng tbl_sinhvien */
insert into tbl_sinhvien values(1221000100, N'Đỗ Thị Thu Hiền ', N'1985-07-16', N'1', N'48', N'6', N'dothuhien@yahoo.com ', N'972836521', N'Yên Bái',N''); 
insert into tbl_sinhvien values(1221000109, N'Tạ Duy Hiền ', N'1987-04-18', N'0', N'50', N'4', N'Hien1987@gmail.com ', N'1658797651', N'Thái Bình',N''); 
insert into tbl_sinhvien values(1221000110, N'Cao Đình Khôi ', N'1984-09-11', N'1', N'47', N'1', N'buithu@gmail.com ', N'977123123', N'Nam Định',N''); 
insert into tbl_sinhvien values(1221000122, N'Nguyễn Thị Huyền ', N'1988-03-25', N'1', N'51', N'6', N'thanhhuyen@yahoo.com ', N'912098077', N'Thái Bình',N''); 
insert into tbl_sinhvien values(1221000107, N'Tạ Đình Thi ', N'1987-09-21', N'0', N'50', N'1', N'Dinhthi@yahoo.com ', N'1222345678', N'Ninh Bình',N''); 
insert into tbl_sinhvien values(1221000420, N'Nguyễn Đức Minh ', N'1986-11-17', N'0', N'49', N'6', N'nguyenminh@gmail.com ', N'983786234', N'Hải Dương',N''); 
insert into tbl_sinhvien values(1221000311, N'Đỗ Văn Hiếu ', N'1984-12-10', N'0', N'47', N'1', N'hieudv@gmail.com ', N'987665667', N'Hải Phòng',N''); 
insert into tbl_sinhvien values(1221000227, N'Văn Tường Thuật ', N'1985-01-09', N'0', N'48', N'2', N'vanthuat@gmail.com ', N'1667781221', N'Quảng Ninh',N''); 
insert into tbl_sinhvien values(1221000111, N'Nguyễn Trung Tiến ', N'1988-07-13', N'0', N'51', N'1', N'trungtien@gmail.com ', N'977543212', N'Hưng Yên',N''); 
insert into tbl_sinhvien values(1221000113, N'Quách Trung Thành ', N'1984-08-12', N'0', N'47', N'1', N'Trungthanh84@gmail.com ', N'1227786763', N'Bắc Ninh',N''); 
insert into tbl_sinhvien values(1221000410, N'Đỗ Tiến Thành ', N'1987-01-15', N'0', N'50', N'1', N'Tienthanh.qn@gmail.com ', N'987665789', N'Quảng Ninh',N''); 
insert into tbl_sinhvien values(1221000166, N'Nguyễn Văn Lợi ', N'1986-12-12', N'0', N'50', N'1', N'nguyenvanloi@yahoo.com ', N'977115654', N'Vĩnh Phúc',N''); 
insert into tbl_sinhvien values(1221000168, N'Nguyễn Thị Hoài ', N'1988-03-19', N'1', N'51', N'1', N'Nguyenhoai88@gmail.com ', N'978654755', N'Lào Cai',N''); 
insert into tbl_sinhvien values(1221000157, N'Nguyễn Vũ Thành ', N'1984-04-05', N'0', N'47', N'3', N'Vuthanh84@gmail.com ', N'1658765664', N'Lạng Sơn',N''); 
insert into tbl_sinhvien values(1221000143, N'Phạm Trung Kiên ', N'1983-09-28', N'0', N'48', N'6', N'Trungkien@yahoo.com ', N'987767234', N'Quảng Ninh',N''); 
insert into tbl_sinhvien values(1221000185, N'Trần Văn Quảng ', N'1989-08-11', N'0', N'52', N'4', N'Quangtran89@yahoo.com ', N'1652347861', N'Hòa Bình',N''); 
insert into tbl_sinhvien values(1221000119, N'Bùi Văn Kiên ', N'1990-10-19', N'0', N'53', N'2', N'Kien19101990@gmail.com ', N'981887770', N'Lào Cai',N''); 
insert into tbl_sinhvien values(1221000532, N'Nguyễn Bá Long ', N'1988-03-11', N'0', N'51', N'3', N'balong@gmail.com ', N'1667889876', N'Thái Bình',N''); 
insert into tbl_sinhvien values(1221000169, N'Ngô Văn Long ', N'1986-01-30', N'0', N'48', N'6', N'Longngo86@gmail.com ', N'977135167', N'Hà Nội',N''); 
insert into tbl_sinhvien values(1221000125, N'Nguyễn Thị Lệ Quỳnh ', N'1986-11-18', N'1', N'49', N'1', N'Lequynh86@yahoo.com ', N'126987125', N'Hải Phòng',N''); 
insert into tbl_sinhvien values(1221000190, N'Nguyễn Văn Thể ', N'1985-10-22', N'0', N'48', N'3', N'nguyenthe@gmail.com ', N'977123776', N'Lai Châu',N''); 
insert into tbl_sinhvien values(1221000118, N'Lê Văn Định ', N'1987-11-12', N'0', N'50', N'2', N'Ledinh87@gmail.com ', N'912887325', N'Hòa Bình',N''); 
insert into tbl_sinhvien values(1221000174, N'Trần Hoài Nam ', N'1988-10-09', N'0', N'51', N'6', N'hoainam@yahoo.com ', N'1268761238', N'Hà Nội',N''); 
insert into tbl_sinhvien values(1221000183, N'Cao Đình Khôi ', N'1985-08-12', N'0', N'48', N'5', N'Dinhkhoi85@gmail.com ', N'912987345', N'Hải Phòng',N''); 
insert into tbl_sinhvien values(1221000158, N'Đỗ Xuân Huấn ', N'1987-10-17', N'0', N'49', N'3', N'Xuanhuan87@yahoo.com ', N'985876234', N'Thái Nguyên',N''); 
insert into tbl_sinhvien values(1221000456, N'Đỗ Xuân Tuấn ', N'1988-11-15', N'0', N'48', N'2', N'Xuantuan88@yahoo.com ', N'985876234', N'Hà Nội',N''); 


/* Thêm dữ liệu vào Bảng tbl_giangvien */
insert into tbl_giangvien values(80501, N'Đặng Quốc Trung ', N'1980-07-16', N'0', N'Thạc sĩ ', N'dangquoctrung@humg.edu.vn ', N'982836521', N'Bộ môn Tin học Cơ bản'); 
insert into tbl_giangvien values(80502, N'Trần Trung Chuyên ', N'1975-10-07', N'0', N'Kỹ sư ', N'trantrungchuyen@humg.edu.vn ', N'1667651298', N'Bộ môn Tin học Trắc địa'); 
insert into tbl_giangvien values(80503, N'Nguyễn Tuấn Anh ', N'1972-12-26', N'0', N'Thạc sĩ ', N'nguyentuananh@humg.edu.vn ', N'987112887', N'Bộ môn Tin học Trắc địa'); 
insert into tbl_giangvien values(80504, N'Đặng Văn Nam ', N'1985-07-12', N'0', N'Thạc sĩ ', N'dangvannam@humg.edu.vn ', N'986554231', N'Bộ môn Tin học Mỏ'); 
insert into tbl_giangvien values(80505, N'Nguyễn Phương Bắc ', N'1980-09-17', N'1', N'Thạc sĩ ', N'nguyenphuongbac@humg.edu.vn ', N'1222345678', N'Bộ môn Tin học Mỏ'); 
insert into tbl_giangvien values(80506, N'Nguyễn Thùy Dương ', N'1977-08-19', N'1', N'Thạc sĩ ', N'nguyenthuyduong@humg.edu.vn ', N'1258879876', N'Bộ môn Tin học Mỏ'); 
insert into tbl_giangvien values(80507, N'Nguyễn Hữu Phương ', N'1985-08-12', N'1', N'Thạc sĩ ', N'nguyenhuuphuong@humg.edu.vn ', N'976897234', N'Bộ môn Công nghệ phần
mềm'); 
insert into tbl_giangvien values(80508, N'Nông Thị Oanh ', N'1974-08-10', N'1', N'Thạc sĩ ', N'nongthioanh@humg.edu.vn ', N'985234116', N'Bộ môn Tin học Mỏ'); 
insert into tbl_giangvien values(80509, N'Lê Thị Nguyệt ', N'1978-09-15', N'1', N'Thạc sĩ ', N'lethinguyet@humg.edu.vn ', N'988127776', N'Bộ môn Tin học Kinh tế'); 
insert into tbl_giangvien values(80510, N'Phạm Văn Đồng ', N'1980-01-20', N'0', N'Thạc sĩ ', N'phamvandong@humg.edu.vn ', N'1258791241', N'Bộ môn Công nghệ phần
mềm'); 


/* Thêm dữ liệu vào Bảng tbl_linhvuc */
insert into tbl_linhvuc values(1, N'Phần mềm ứng dụng trên Desktop', N''); 
insert into tbl_linhvuc values(2, N'Phần mềm ứng dụng trên Di động', N''); 
insert into tbl_linhvuc values(3, N'Phần mềm ứng dụng trên nền Web', N''); 
insert into tbl_linhvuc values(4, N'An toàn – Bảo mật thông tin', N''); 
insert into tbl_linhvuc values(5, N'Mạng máy tính', N''); 
insert into tbl_linhvuc values(6, N'Khai thác phần mềm ứng dụng', N''); 
insert into tbl_linhvuc values(7, N'Mã nguồn mở', N''); 
insert into tbl_linhvuc values(8, N'Map-GIS', N''); 
insert into tbl_linhvuc values(9, N'Tự động hóa', N''); 


/* Thêm dữ liệu vào Bảng tbl_doan */
insert into tbl_doan values(1221000100, N'Nghiên cứu ứng dụng phần mềm Topo và NovaTDN trong thiết kế mở vỉa mỏ đá trắng Mông Sơn, Yên Bình, Yên Bái và xây dựng module quản lý bản vẽ cho các dự án thiết kế mỏ bằng VBA trong
AutoCAD', N'80502', N'80501', N'6', N'9.2', N'2008');
insert into tbl_doan values(1221000109, N'Nghiên cứu xây dựng module quản lý lý lịch khoa học cán bộ Trường
Đại học Mỏ-Địa chất trên nền mã nguồn mở Joomla', N'80501', N'80510', N'7', N'8.8', N'2010');
insert into tbl_doan values(1221000110, N'Nghiên cứu xây dựng chương trình quản lý các dự án khai thác mỏ ', N'80502', N'80508', N'1', N'7.9', N'2007'); 
insert into tbl_doan values(1221000122, N'Xây dựng Module hỗ trợ tính toán, kiểm tra và thiết kế mới hệ thống
cung cấp điện 6 kV trong công tác khai thác mỏ lộ thiên', N'80507', N'80505', N'1', N'9.4', N'2011');
insert into tbl_doan values(1221000107, N'Xây dựng chương trình quản lý thiết bị cơ điện Công ty than Cọc Sáu ', N'80506', N'80501', N'1', N'9.2', N'2010'); 
insert into tbl_doan values(1221000420, N'Ứng dụng phần mềm Ventsim tính toán thiết kế mạng thông gió mỏ
khu Lộ Trí của Công ty than Thống Nhất – TKV', N'80510', N'80502', N'6', N'8.7', N'2009');
insert into tbl_doan values(1221000311, N'Xây dựng hệ thống quản lý vật tư cho Công ty than Thống Nhất –
TKV', N'80503', N'80504', N'1', N'7.5', N'2007');
insert into tbl_doan values(1221000227, N'Xây dựng chương trình quản lý hiện trạng khai thác các mỏ than bùn
của tỉnh Hà Tây theo công nghệ GIS', N'80504', N'80508', N'8', N'8.5', N'2008');
insert into tbl_doan values(1221000111, N'Xây dựng chương trình lập hộ chiếu khoan nổ mìn cho khu vực Đông
Cao Sơn thuộc Công ty cổ phần than Cao Sơn', N'80502', N'80509', N'1', N'9.4', N'2011');
insert into tbl_doan values(1221000113, N'Xây dựng mô hình 3D hệ thống đường ống công nghệ của nhà máy
xử lý nước thải và chất thải rắn Vĩnh Niệm, Thành phố Hải Phòng', N'80501', N'80507', N'1', N'7.9', N'2007');
insert into tbl_doan values(1221000410, N'Xây dựng chương trình quản lý thiết bị máy mỏ Công ty Cổ phần
than Vàng Danh – TKV -', N'80510', N'80506', N'1', N'6.3', N'2010');
insert into tbl_doan values(1221000166, N'Xây dựng chương trình quản lý vật tư cho Công ty than Vàng Danh ', N'80507', N'80503', N'1', N'6', N'2010'); 
insert into tbl_doan values(1221000168, N'Xây dựng chương trình quản lý kinh doanh nước sạch ứng dụng cho
huyện Đông Triều - Quảng Ninh', N'80502', N'80508', N'1', N'8.2', N'2011');
insert into tbl_doan values(1221000157, N'Nghiên cứu xây dựng Website thương mại điện tử Công ty Cảng và
Kinh doanh than', N'80504', N'80505', N'3', N'9', N'2007');
insert into tbl_doan values(1221000143, N'Nghiên cứu xây dựng hệ thống giám sát một số thông số của hệ thống
công nghệ từ máy tính', N'80503', N'80507', N'9', N'7', N'2008');
insert into tbl_doan values(1221000185, N'Nghiên cứu xây dựng module quản lý thư viện Trường Đại học Mỏ -
Địa Chất trên nền mã nguồn mở Joomla', N'80501', N'80504', N'7', N'7.8', N'2012');
insert into tbl_doan values(1221000119, N'Xây dựng CSDL phục vụ công tác quản lý hiện trạng sử dụng đất xã
Gia Thịnh, huyện Gia Viễn, tỉnh Ninh Bình trong môi trường
MapInfo.', N'80508', N'80502', N'8', N'8.5', N'2013');
insert into tbl_doan values(1221000532, N'Xây dựng website bán hàng trực tuyến cho Công ty cổ phần Xây
dựng, Thương mại và Kỹ thuật Hợp Nhất FUSICO', N'80504', N'80510', N'3', N'8.9', N'2011');
insert into tbl_doan values(1221000169, N'Nghiên cứu phần mềm Topo-HSMo thành lập bản đồ hiện trạng, tính
toán khối lượng đổ thải và quy hoạch, xây dựng mở rộng bãi thải
Đông Cao Sơn - Công ty than Cao Sơn.', N'80502', N'80507', N'6', N'9', N'2008');
insert into tbl_doan values(1221000125, N'Ứng dụng phần mềm Gemcom Surpac xây dựng mô hình vi khối và
tính toán trữ lượng thân quặng mỏ Bauxit Nhân cơ.', N'80506', N'80502', N'6', N'8.3', N'2009');
insert into tbl_doan values(1221000190, N'Xây dựng website hỗ trợ đào tạo tiếng anh trực tuyến thử nghiệm cho
học viện anh ngữ EQUEST', N'80504', N'80507', N'3', N'8.4', N'2008');
insert into tbl_doan values(1221000118, N'Xây dựng phần mềm tra cứu thông tin khoáng vật trên thiết bị di động ', N'80507', N'80508', N'2', N'7.9', N'2010'); 
insert into tbl_doan values(1221000174, N'Tìm hiểu Joomla và Virtuemart để xây dựng Website bán hàng máy
tính cho công ty HT-Tech', N'80504', N'80501', N'7', N'8.6', N'2011');
insert into tbl_doan values(1221000183, N'Xây dựng hệ thống Mail Exchange 2010 cho công ty FPT Telecom ', N'80502', N'80507', N'5', N'9.1', N'2008'); 
insert into tbl_doan values(1221000158, N'Xây dựng website tuyển dụng cho trung tâm hướng nghiệp và tư vấn
việc làm, Trường ĐH Mỏ - Địa chất', N'80504', N'80508', N'3', N'8.8', N'2009');


/* Phần B: Viết các câu truy vấn */
/* 
Hiển thị danh sách sinh viên, bao gồm các thông tin:
Mã sinh viên| Tên sinh viên| ngày sinh| giới tính (Nam-Nữ) | khóa| Tên chuyên ngành| Email|Điện thoại| Địa chỉ
Sắp xếp kết quả theo thứ tự tăng dần của mã sinh viên.
*/
select Masv, Tensv, Namsinh, Khoa, tbl_chuyennganh.Tencn,Email, Dienthoai, Diachi,CASE Gioitinh
When 1 Then N'Nữ'
When 0 Then N'Nam'
end as Gioitinh
from tbl_sinhvien inner join tbl_chuyennganh on tbl_chuyennganh.Macn = tbl_sinhvien.Chuyennganh
order by Masv
/*
Câu 2: Hiển thị tất cả sinh viên theo chuyên ngành = 1, thông tin bao gồm:
Mã sinh viên| Tên sinh viên| ngày sinh| giới tính (Nam-Nữ) | khóa| Tên chuyên ngành| Email| Điện thoại| Địa chỉ
Sắp xếp kết quả theo thứ tự tăng dần của Khóa học.
*/
select Masv, Tensv, Namsinh, Khoa, tbl_chuyennganh.Tencn,Email, Dienthoai, Diachi,CASE Gioitinh
When 1 Then N'Nữ'
When 0 Then N'Nam'
end as Gioitinh
from tbl_sinhvien inner join tbl_chuyennganh on tbl_chuyennganh.Macn = tbl_sinhvien.Chuyennganh
where Chuyennganh = 1
order by Khoa

/*
Câu 3: Hiển thị tất cả sinh viên theo khóa học = 47, thông tin bao gồm:
Mã sinh viên| Tên sinh viên| ngày sinh| giới tính (Nam-Nữ) | khóa| Tên chuyên ngành| Email| Điện thoại| Địa chỉ
Sắp xếp kết quả theo thứ tự tăng dần của họ tên sinh viên.
*/
select Masv, Tensv, Namsinh, Khoa, tbl_chuyennganh.Tencn,Email, Dienthoai, Diachi,CASE Gioitinh
When 1 Then N'Nữ'
When 0 Then N'Nam'
end as Gioitinh
from tbl_sinhvien inner join tbl_chuyennganh on tbl_chuyennganh.Macn = tbl_sinhvien.Chuyennganh
where Khoa = 47
order by Tensv

/*
Câu 4: Liệt kê tất cả các sinh viên trong tên sinh viên có từ ‘Nguyễn’, các thông tin bao gồm:
Mã sinh viên| Tên sinh viên| ngày sinh| giới tính (Nam-Nữ) | khóa| Tên chuyên ngành| Email|Điện thoại| Địa chỉ
Sắp xếp kết quả theo thứ tự tăng dần của mã sinh viên.
*/
select Masv, Tensv, Namsinh, Khoa, tbl_chuyennganh.Tencn,Email, Dienthoai, Diachi,CASE Gioitinh
When 1 Then N'Nữ'
When 0 Then N'Nam'
end as Gioitinh
from tbl_sinhvien inner join tbl_chuyennganh on tbl_chuyennganh.Macn = tbl_sinhvien.Chuyennganh
where Tensv like N'%Nguyễn%'
order by Masv

/*
Câu 5: Liệt kê tất cả các sinh viên trong mã sinh viên có số ‘111’ hoặc tên sinh viên có từ ‘Minh’, các thông tin bao gồm:
Mã sinh viên| Tên sinh viên| ngày sinh| giới tính (Nam-Nữ) | khóa| Tên chuyên ngành| Email| Điện thoại| Địa chỉ
Sắp xếp kết quả theo thứ tự tăng dần của mã sinh viên
*/
select Masv, Tensv, Namsinh, Khoa, tbl_chuyennganh.Tencn,Email, Dienthoai, Diachi,CASE Gioitinh
When 1 Then N'Nữ'
When 0 Then N'Nam'
end as Gioitinh
from tbl_sinhvien inner join tbl_chuyennganh on tbl_chuyennganh.Macn = tbl_sinhvien.Chuyennganh
where Masv like '%111%' or Tensv like N'%Minh%'
order by Masv

/*
Câu 6: Liệt kê danh sách: mã chuyên ngành | mã chuyên ngành - Tên chuyên ngành trong bảng tbl_chuyennganh, các
thông tin lấy ra sắp xếp theo thứ tự tăng dần của mã chuyên ngành
*/
select Macn, Tencn
from tbl_chuyennganh
where Tencn like convert(Char(5),Macn) + \- + Tencn
order by Macn
/*
Câu 7: Thống kê tổng số sinh viên trong bảng tbl_sinhvien, tổng số giảng viên trong bảng tbl_giangvien, tổng số đồ án trong bảng tbl_doan.
*/
select count(masv) as Tong_so_sinhvien
from tbl_sinhvien
select count(Magv) as Tong_so_giangvien
from tbl_giangvien
select count(Masv) as Tong_so_doan
from tbl_doan

/*
Câu 8: Thống kê số lượng sinh viên trong bảng tbl_sinhvien theo từng chuyên ngành
*/
	select Tencn as N'Chuyên ngành', COUNT(masv) as N'Số lượng sinh viên'
	from tbl_sinhvien inner join tbl_chuyennganh on tbl_chuyennganh.Macn = tbl_sinhvien.Chuyennganh
	group by Tencn
			
/*
Câu 9: Thống kê số lượng sinh viên trong bảng tbl_sinhvien theo từng khóa
*/
	select Khoa as 'Khóa học', COUNT(masv) as N'Số lượng sinh viên'
	from tbl_sinhvien inner join tbl_khoahoc on tbl_khoahoc.Makh = tbl_sinhvien.Khoa
	group by Khoa

/*
Câu 10: Thống kê số lượng đồ án theo từng lĩnh vực
*/
	select Tenlv as 'Lĩnh vực', COUNT(Masv) as N'Số lượng đồ án'
	from tbl_doan inner join tbl_linhvuc on tbl_doan.linhvuc = tbl_linhvuc.Malv
	group by Tenlv

/*
Câu 11: Liệt kê danh sách thông tin đồ án tốt nghiệp trong bảng tbl_doan, bao gồm các thông tin sau:Mã sinh viên|Tên sinh viên|Tên đồ án| Mã GVHD-Tên giáo viên hướng dẫn|Mã GVPB-Tên giáo viên phản biện|Tên lĩnh vực|Điểm|Năm tốt nghiệp
Sắp xếp kết quả theo thứ tự tăng dần của mã sinh viên
*/
	select tbl_sinhvien.Masv as N'Mã sinh viên', Tensv as N'Tên sinh viên', TenDA as N'Tên đồ án', GVHD, GVPB, Tenlv as N'Tên lĩnh vực', Diem as 'Điểm', Namtn as N'Năm tốt nghiệp'
	from tbl_sinhvien inner join tbl_doan on tbl_sinhvien.Masv = tbl_doan.Masv inner join tbl_linhvuc on tbl_doan.linhvuc = tbl_linhvuc.Malv
	order by tbl_sinhvien.Masv

/*
Câu 12: Liệt kê danh sách Mã sinh viên | Mã sinh viên – Tên sinh viên của tất cả các sinh viên có mã sinh viên nằm trong bảng tbl_sinhvien mà không nằm trong bảng tbl_doan như dưới đây:
*/
select tbl_doan.Masv as N'Mã sinh viên', Tensv as N'Tên sinh viên'
from tbl_sinhvien inner join tbl_doan on tbl_sinhvien.Masv = tbl_doan.Masv
where TenDA is NULL

/*
Câu 13: Hiển thị danh sách tất cả các đồ án tốt nghiệp do giảng viên mã 080502 hướng dẫn, sắp xếp kết quả theo thứ tự giảm dần của điểm đồ án
*/
select tbl_doan.Masv as N'Mã sinh viên', Tensv as N'Tên sinh viên',TenDA as N'Tên đồ án', GVHD,GVPB,linhvuc as N'Lĩnh vực', Diem as N'Điểm', Namtn as N'Năm tốt nghiệp' 
from tbl_doan inner join tbl_sinhvien on tbl_doan.Masv = tbl_sinhvien.Masv
where GVHD = 080502
order by Diem DESC

/*
Câu 14:  Hiển thị danh sách tất cả các đồ án thỏa mãn điều kiện tên sinh viên thực hiện có từ “Huyền” và điểm đồ án >8.5
*/
select tbl_doan.Masv as N'Mã sinh viên', Tensv as N'Tên sinh viên',TenDA as N'Tên đồ án', GVHD,GVPB,linhvuc as N'Lĩnh vực', Diem as N'Điểm', Namtn as N'Năm tốt nghiệp' 
from tbl_doan inner join tbl_sinhvien on tbl_doan.Masv = tbl_sinhvien.Masv
where Tensv like N'%Huyền%' and Diem >8.5 

/*
Câu 15:  Hiển thị danh sách tất cả các đồ án làm về lĩnh vực có mã = 6 và điểm trong khoảng từ [8.5,9], kết quả trình bày như sau:
*/
select tbl_doan.Masv as N'Mã sinh viên', Tensv as N'Tên sinh viên',TenDA as N'Tên đồ án', GVHD,GVPB,linhvuc as N'Lĩnh vực', Diem as N'Điểm', Namtn as N'Năm tốt nghiệp' 
from tbl_doan inner join tbl_sinhvien on tbl_doan.Masv = tbl_sinhvien.Masv inner join tbl_linhvuc on tbl_linhvuc.Malv = tbl_doan.linhvuc
where Malv = 6 and Diem Between 8.5 and 9 
order by Diem ASC

/*
Câu 16:  Hiển thị danh sách các đồ án có điểm cao nhất, sắp xếp kết quả theo chiều tăng dần của Mã sinh viên
*/
select tbl_doan.Masv as N'Mã sinh viên', Tensv as N'Tên sinh viên',TenDA as N'Tên đồ án', GVHD,GVPB,linhvuc as N'Lĩnh vực', Diem as N'Điểm', Namtn as N'Năm tốt nghiệp' 
from tbl_doan inner join tbl_sinhvien on tbl_doan.Masv = tbl_sinhvien.Masv
where Diem = (select max(Diem) from tbl_doan)
order by tbl_doan.Masv

/*
Câu 17:  Hiển thị danh sách các đồ án mà trong tên đồ án có từ “Joomla”
*/
select tbl_doan.Masv as N'Mã sinh viên', Tensv as N'Tên sinh viên',TenDA as N'Tên đồ án', GVHD,GVPB,linhvuc as N'Lĩnh vực', Diem as N'Điểm', Namtn as N'Năm tốt nghiệp' 
from tbl_doan inner join tbl_sinhvien on tbl_doan.Masv = tbl_sinhvien.Masv
where TenDA like N'%Joomla%'
order by tbl_doan.Masv

/*
Câu 18: A) Cập nhật lại số điện thoại của sinh viên có mã “1221000122” thành “0986226651”
		B) Cập nhật lại điểm của sinh viên có mã “1221000190” thành 9.5 điểm.
*/
UPDATE tbl_sinhvien
SET Dienthoai = 0986226651
WHERE Masv = 1221000122
--------------------------
UPDATE tbl_doan
SET Diem = 9.5
FROM tbl_doan
INNER JOIN tbl_sinhvien
ON (tbl_doan.Masv = tbl_sinhvien.Masv)
WHERE tbl_sinhvien.Masv = 1221000190
/*
Câu 19: A) Thêm một bản ghi sau vào bảng tbl_sinhvien
			1121050069 | Nguyễn Thị Nguyệt | 10-09-1993 | 1 | 56 | 1 | nguyetit.humg@gmail.com | 0987666564 | Lai Châu
		B) Thêm một bản ghi sau vào bảng tbl_giangvien
			080511 | Trương Xuân Bình | 13-05-1984 | 0 | Thạc sĩ | truongxuanbinh@humg.edu.vn | 0981234567 | Bộ môn Tin học Địa chất
		C) Viết truy vấn thêm một bản ghi có thông tin như sau vào bảng tbl_doan:
			1121050069 | Ứng dụng phần mềm Ventsim tính toán thiết kế mạng thông gió mỏ Bình Minh – Thành Công | 080506 | 080506 |1|8.1|2016
*/
insert into tbl_sinhvien values(1121050069, N'Nguyễn Thị Nguyệt ', N'10-09-1993', N'1', N'56', N'1', N'nguyetit.humg@gmail.com ', N'0987666564', N'Lai Châu',N'');
---------------------------------------------------
insert into tbl_giangvien values(080511, N'Trương Xuân Bình ', N'1984-05-13', N'0', N'Thạc sĩ ', N'truongxuanbinh@humg.edu.vn ', N'0981234567', N'Bộ môn Tin học Địa chất'); 
---------------------------------------------------
insert into tbl_doan values(1121050069, N'Ứng dụng phần mềm Ventsim tính toán thiết kế mạng thông gió mỏ Bình Minh – Thành Công ', N'80503', N'80502', N'1', N'8.1', N'2016');
/*
Câu 20:  Xóa bản ghi có mã 1221000125 trong bảng tbl_tblsinhvien
*/
Delete from tbl_sinhvien
where Masv = 1221000125