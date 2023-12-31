USE [master]
GO
/****** Object:  Database [Quan_Ly_Sinh_Vien]    Script Date: 6/27/2023 8:49:35 PM ******/
CREATE DATABASE [Quan_Ly_Sinh_Vien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Quan_Ly_Sinh_Vien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Quan_Ly_Sinh_Vien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Quan_Ly_Sinh_Vien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Quan_Ly_Sinh_Vien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Quan_Ly_Sinh_Vien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET ARITHABORT OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET RECOVERY FULL 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET  MULTI_USER 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Quan_Ly_Sinh_Vien', N'ON'
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET QUERY_STORE = ON
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Quan_Ly_Sinh_Vien]
GO
/****** Object:  Table [dbo].[Chuong_Trinh_Hoc]    Script Date: 6/27/2023 8:49:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chuong_Trinh_Hoc](
	[Ma_CT] [varchar](10) NOT NULL,
	[Ten_CT] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_CT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giang_Khoa]    Script Date: 6/27/2023 8:49:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giang_Khoa](
	[Ma_CT] [varchar](10) NOT NULL,
	[Ma_Khoa] [varchar](10) NOT NULL,
	[MaMH] [varchar](10) NOT NULL,
	[Nam_Hoc] [int] NOT NULL,
	[Hoc_Ky] [int] NULL,
	[STLT] [int] NULL,
	[STTH] [int] NULL,
	[So_Tin_Chi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_CT] ASC,
	[Ma_Khoa] ASC,
	[MaMH] ASC,
	[Nam_Hoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ket_Qua]    Script Date: 6/27/2023 8:49:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ket_Qua](
	[MaSV] [varchar](10) NOT NULL,
	[MaMH] [varchar](10) NOT NULL,
	[Lan_Thi] [int] NOT NULL,
	[Diem_Thi] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaMH] ASC,
	[Lan_Thi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 6/27/2023 8:49:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[Ma_Khoa] [varchar](10) NOT NULL,
	[Ten_Khoa] [nvarchar](100) NULL,
	[Nam_Thanh_Lap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_Khoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa_Hoc]    Script Date: 6/27/2023 8:49:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa_Hoc](
	[Ma_Khoa_Hoc] [varchar](10) NOT NULL,
	[Nam_Bat_Dau] [int] NULL,
	[Nam_Ket_Thuc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_Khoa_Hoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 6/27/2023 8:49:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[Ma_Lop] [varchar](10) NOT NULL,
	[Ma_Khoa] [varchar](10) NOT NULL,
	[Ma_Khoa_Hoc] [varchar](10) NOT NULL,
	[Ma_CT] [varchar](10) NOT NULL,
	[STT] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_Lop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mon_Hoc]    Script Date: 6/27/2023 8:49:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mon_Hoc](
	[MaMH] [varchar](10) NOT NULL,
	[Ma_Khoa] [varchar](10) NOT NULL,
	[TenMH] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sinh_Vien]    Script Date: 6/27/2023 8:49:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinh_Vien](
	[MaSV] [varchar](10) NOT NULL,
	[Ho_Ten] [nvarchar](100) NULL,
	[Nam_Sinh] [int] NULL,
	[Dan_Toc] [nvarchar](20) NULL,
	[Ma_Lop] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Chuong_Trinh_Hoc] ([Ma_CT], [Ten_CT]) VALUES (N'CQ', N'Chính Quy')
GO
INSERT [dbo].[Giang_Khoa] ([Ma_CT], [Ma_Khoa], [MaMH], [Nam_Hoc], [Hoc_Ky], [STLT], [STTH], [So_Tin_Chi]) VALUES (N'CQ', N'CNTT', N'THCS01', 2004, 1, 45, 30, 4)
INSERT [dbo].[Giang_Khoa] ([Ma_CT], [Ma_Khoa], [MaMH], [Nam_Hoc], [Hoc_Ky], [STLT], [STTH], [So_Tin_Chi]) VALUES (N'CQ', N'CNTT', N'THT01', 2003, 1, 60, 30, 5)
INSERT [dbo].[Giang_Khoa] ([Ma_CT], [Ma_Khoa], [MaMH], [Nam_Hoc], [Hoc_Ky], [STLT], [STTH], [So_Tin_Chi]) VALUES (N'CQ', N'CNTT', N'THT02', 2003, 2, 45, 30, 4)
GO
INSERT [dbo].[Ket_Qua] ([MaSV], [MaMH], [Lan_Thi], [Diem_Thi]) VALUES (N'0212001', N'THCS01', 1, 6.5)
INSERT [dbo].[Ket_Qua] ([MaSV], [MaMH], [Lan_Thi], [Diem_Thi]) VALUES (N'0212001', N'THT01', 1, 4)
INSERT [dbo].[Ket_Qua] ([MaSV], [MaMH], [Lan_Thi], [Diem_Thi]) VALUES (N'0212001', N'THT01', 2, 7)
INSERT [dbo].[Ket_Qua] ([MaSV], [MaMH], [Lan_Thi], [Diem_Thi]) VALUES (N'0212001', N'THT02', 1, 8)
INSERT [dbo].[Ket_Qua] ([MaSV], [MaMH], [Lan_Thi], [Diem_Thi]) VALUES (N'0212002', N'THCS01', 1, 4)
INSERT [dbo].[Ket_Qua] ([MaSV], [MaMH], [Lan_Thi], [Diem_Thi]) VALUES (N'0212002', N'THT01', 1, 8)
INSERT [dbo].[Ket_Qua] ([MaSV], [MaMH], [Lan_Thi], [Diem_Thi]) VALUES (N'0212002', N'THT02', 1, 5.5)
INSERT [dbo].[Ket_Qua] ([MaSV], [MaMH], [Lan_Thi], [Diem_Thi]) VALUES (N'0212003', N'THCS01', 1, 7)
INSERT [dbo].[Ket_Qua] ([MaSV], [MaMH], [Lan_Thi], [Diem_Thi]) VALUES (N'0212003', N'THT01', 1, 6)
INSERT [dbo].[Ket_Qua] ([MaSV], [MaMH], [Lan_Thi], [Diem_Thi]) VALUES (N'0212003', N'THT02', 1, 4)
INSERT [dbo].[Ket_Qua] ([MaSV], [MaMH], [Lan_Thi], [Diem_Thi]) VALUES (N'0212003', N'THT02', 2, 6)
INSERT [dbo].[Ket_Qua] ([MaSV], [MaMH], [Lan_Thi], [Diem_Thi]) VALUES (N'0212004', N'THT01', 1, 9)
GO
INSERT [dbo].[Khoa] ([Ma_Khoa], [Ten_Khoa], [Nam_Thanh_Lap]) VALUES (N'CNTT', N'Công nghệ thông tin', 1995)
INSERT [dbo].[Khoa] ([Ma_Khoa], [Ten_Khoa], [Nam_Thanh_Lap]) VALUES (N'VL', N'Vật Lý', 1970)
GO
INSERT [dbo].[Khoa_Hoc] ([Ma_Khoa_Hoc], [Nam_Bat_Dau], [Nam_Ket_Thuc]) VALUES (N'K2002', 2002, 2006)
INSERT [dbo].[Khoa_Hoc] ([Ma_Khoa_Hoc], [Nam_Bat_Dau], [Nam_Ket_Thuc]) VALUES (N'K2003', 2003, 2007)
INSERT [dbo].[Khoa_Hoc] ([Ma_Khoa_Hoc], [Nam_Bat_Dau], [Nam_Ket_Thuc]) VALUES (N'K2004', 2004, 2008)
GO
INSERT [dbo].[Lop] ([Ma_Lop], [Ma_Khoa], [Ma_Khoa_Hoc], [Ma_CT], [STT]) VALUES (N'TH2002/01', N'CNTT', N'K2002', N'CQ', 1)
INSERT [dbo].[Lop] ([Ma_Lop], [Ma_Khoa], [Ma_Khoa_Hoc], [Ma_CT], [STT]) VALUES (N'TH2002/02', N'CNTT', N'K2002', N'CQ', 2)
INSERT [dbo].[Lop] ([Ma_Lop], [Ma_Khoa], [Ma_Khoa_Hoc], [Ma_CT], [STT]) VALUES (N'TH2003/01', N'VL', N'K2003', N'CQ', 1)
GO
INSERT [dbo].[Mon_Hoc] ([MaMH], [Ma_Khoa], [TenMH]) VALUES (N'THCS01', N'CNTT', N'Cấu trúc dữ liệu 1')
INSERT [dbo].[Mon_Hoc] ([MaMH], [Ma_Khoa], [TenMH]) VALUES (N'THCS02', N'CNTT', N'Hệ điều hành')
INSERT [dbo].[Mon_Hoc] ([MaMH], [Ma_Khoa], [TenMH]) VALUES (N'THT01', N'CNTT', N'Toán cao cấp A1')
INSERT [dbo].[Mon_Hoc] ([MaMH], [Ma_Khoa], [TenMH]) VALUES (N'THT02', N'CNTT', N'Toán rời rạc')
INSERT [dbo].[Mon_Hoc] ([MaMH], [Ma_Khoa], [TenMH]) VALUES (N'VLT01', N'VL', N'Toán cao cấp A1')
GO
INSERT [dbo].[Sinh_Vien] ([MaSV], [Ho_Ten], [Nam_Sinh], [Dan_Toc], [Ma_Lop]) VALUES (N'0212001', N'Nguyễn Vĩnh An', 1984, N'Kinh', N'TH2002/01')
INSERT [dbo].[Sinh_Vien] ([MaSV], [Ho_Ten], [Nam_Sinh], [Dan_Toc], [Ma_Lop]) VALUES (N'0212002', N'Nguyễn Thanh Bình', 1985, N'Kinh', N'TH2002/01')
INSERT [dbo].[Sinh_Vien] ([MaSV], [Ho_Ten], [Nam_Sinh], [Dan_Toc], [Ma_Lop]) VALUES (N'0212003', N'Nguyễn Thanh Cường', 1984, N'Kinh', N'TH2002/02')
INSERT [dbo].[Sinh_Vien] ([MaSV], [Ho_Ten], [Nam_Sinh], [Dan_Toc], [Ma_Lop]) VALUES (N'0212004', N'Nguyễn Quốc Duy', 1983, N'Kinh', N'TH2002/02')
INSERT [dbo].[Sinh_Vien] ([MaSV], [Ho_Ten], [Nam_Sinh], [Dan_Toc], [Ma_Lop]) VALUES (N'0311001', N'Phan Tuấn Anh', 1985, N'Kinh', N'TH2003/01')
INSERT [dbo].[Sinh_Vien] ([MaSV], [Ho_Ten], [Nam_Sinh], [Dan_Toc], [Ma_Lop]) VALUES (N'0311002', N'Huỳnh Thanh Sang', 1984, N'Kinh', N'TH2003/01')
GO
ALTER TABLE [dbo].[Giang_Khoa]  WITH CHECK ADD FOREIGN KEY([Ma_CT])
REFERENCES [dbo].[Chuong_Trinh_Hoc] ([Ma_CT])
GO
ALTER TABLE [dbo].[Giang_Khoa]  WITH CHECK ADD FOREIGN KEY([Ma_Khoa])
REFERENCES [dbo].[Khoa] ([Ma_Khoa])
GO
ALTER TABLE [dbo].[Giang_Khoa]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[Mon_Hoc] ([MaMH])
GO
ALTER TABLE [dbo].[Ket_Qua]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[Mon_Hoc] ([MaMH])
GO
ALTER TABLE [dbo].[Ket_Qua]  WITH CHECK ADD FOREIGN KEY([MaSV])
REFERENCES [dbo].[Sinh_Vien] ([MaSV])
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD FOREIGN KEY([Ma_CT])
REFERENCES [dbo].[Chuong_Trinh_Hoc] ([Ma_CT])
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD FOREIGN KEY([Ma_Khoa_Hoc])
REFERENCES [dbo].[Khoa_Hoc] ([Ma_Khoa_Hoc])
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD FOREIGN KEY([Ma_Khoa])
REFERENCES [dbo].[Khoa] ([Ma_Khoa])
GO
ALTER TABLE [dbo].[Mon_Hoc]  WITH CHECK ADD FOREIGN KEY([Ma_Khoa])
REFERENCES [dbo].[Khoa] ([Ma_Khoa])
GO
ALTER TABLE [dbo].[Sinh_Vien]  WITH CHECK ADD FOREIGN KEY([Ma_Lop])
REFERENCES [dbo].[Lop] ([Ma_Lop])
GO
USE [master]
GO
ALTER DATABASE [Quan_Ly_Sinh_Vien] SET  READ_WRITE 
GO
