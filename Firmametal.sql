USE [FirmaMetal]
GO
/****** Object:  Table [dbo].[Bestellung]    Script Date: 01.05.2024 17:40:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bestellung](
	[Bestellungsid] [int] IDENTITY(1,1) NOT NULL,
	[Lieferrantename] [nvarchar](50) NULL,
	[Materialname] [nvarchar](50) NULL,
	[benutzername] [nvarchar](50) NULL,
	[Bestelldatum] [date] NULL,
	[WarenannahmeTag] [date] NULL,
 CONSTRAINT [PK_Bestellung] PRIMARY KEY CLUSTERED 
(
	[Bestellungsid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lager]    Script Date: 01.05.2024 17:40:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lager](
	[Lagerid] [int] IDENTITY(1,1) NOT NULL,
	[Lagerort] [nvarchar](50) NULL,
	[Straße] [nvarchar](50) NULL,
	[Lagernummer] [int] NULL,
	[Materialname] [nvarchar](50) NULL,
	[Materailanzahl] [int] Null
 CONSTRAINT [PK_Lager] PRIMARY KEY CLUSTERED 
(
	[Lagerid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lieferrant]    Script Date: 01.05.2024 17:40:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lieferrant](
	[Lieferid] [int] IDENTITY(1,1) NOT NULL,
	[Lieferrantename] [nvarchar](50) NULL,
	[Materialpreis] [decimal](18, 0) NULL,
	[Lieferzeit Tage] [int] NULL,
 CONSTRAINT [PK_Lieferrant] PRIMARY KEY CLUSTERED 
(
	[Lieferid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 01.05.2024 17:40:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[Materialid] [int] IDENTITY(1,1) NOT NULL,
	[Materialname] [nvarchar](50) NULL,
	[Materialanzahl] [nvarchar](50) NULL,
	[Materialpreis] [decimal](18, 0) NULL,
	[Materiallänge] [float] NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[Materialid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mitarbeiter]    Script Date: 01.05.2024 17:40:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mitarbeiter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[benutzername] [nvarchar](50) NULL,
	[passwortcode] [nvarchar](50) NULL,
	[vorname] [nvarchar](50) NULL,
	[nachname] [nvarchar](50) NULL,
	[mitarbeiternummer] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[telefonnummer] [nvarchar](50) NULL,
 CONSTRAINT [PK_mitarbeiter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
insert into mitarbeiter (benutzername,passwortcode,vorname,nachname,mitarbeiternummer,email,telefonnummer) values ('Exeter','111','Max','Müller','123456789','Max.Müllerhotmail.de','0681456923178')

insert into Material(Materialname,Materialanzahl,Materialpreis,Materiallänge) values ('Metallroh','10','5.49','15')
insert into Material(Materialname,Materialanzahl,Materialpreis,Materiallänge) values ('Metallplatte','30','4.49','30')
insert into Material(Materialname,Materialanzahl,Materialpreis,Materiallänge) values ('Metallstange','55','6.49','40')
insert into Material(Materialname,Materialanzahl,Materialpreis,Materiallänge) values ('Stahlroh','20','7.25','85')
insert into Material(Materialname,Materialanzahl,Materialpreis,Materiallänge) values ('Stahlplatte','40','4.25','100')

insert into Lager (Lagerort,Straße,Lagernummer,Materialname,Materailanzahl) values ('Neunkrichen','Neuhausenstraße 8','101543','Metallrohr','10')
insert into Lager (Lagerort,Straße,Lagernummer,Materialname,Materailanzahl) values ('Saarbrücken','Saarstraße 10','258749','Metahlplatte','30')
insert into Lager (Lagerort,Straße,Lagernummer,Materialname,Materailanzahl) values ('Saarbrücken','Saarstraße 10','546258','Metallstange','55')
insert into Lager (Lagerort,Straße,Lagernummer,Materialname,Materailanzahl) values ('Neunkrichen','Neuhausenstraße 8','562549','Stahlplatte','20')
insert into Lager (Lagerort,Straße,Lagernummer,Materialname,Materailanzahl) values ('Neunkrichen','Neuhausenstraße 8','256987','Stahlroh','40')



insert into Lieferrant (Lieferrantename,Materialpreis,LieferzeitTage) values ('Mustermann GmbH','5.49','10')
insert into Lieferrant (Lieferrantename,Materialpreis,LieferzeitTage) values ('Metall GmbH','4.49','5')
insert into Lieferrant (Lieferrantename,Materialpreis,LieferzeitTage) values ('Metall GmbH','6.49','15')
insert into Lieferrant (Lieferrantename,Materialpreis,LieferzeitTage) values ('Stahlplatten GmbH','7.25','3')
insert into Lieferrant (Lieferrantename,Materialpreis,LieferzeitTage) values ('Stahl GmbH','4.25','9')


insert into Bestellung (Lieferrantename,Materialname,benutzername,Bestelldatum,WarenannahmeTag) values ('Mustermann GmbH','Metallrohr','Exeter','2024-01-01','10.01.2024')
insert into Bestellung (Lieferrantename,Materialname,benutzername,Bestelldatum,WarenannahmeTag) values ('Metall GmbH','Metallplatte','Exeter','2024-01-02','08.01.2024')
insert into Bestellung (Lieferrantename,Materialname,benutzername,Bestelldatum,WarenannahmeTag) values ('Metall Gmbh','Metallstange','Exeter','2024-04-03','19.04.2024')
insert into Bestellung (Lieferrantename,Materialname,benutzername,Bestelldatum,WarenannahmeTag)values ('Stahlplatten GmbH','Stahlplatte','Exeter','2024-05-10','14.05.2024')
insert into Bestellung (Lieferrantename,Materialname,benutzername,Bestelldatum,WarenannahmeTag) values ('Stahl GmbH','Stahlroh','Exeter','2024-12-15','25.12.2024')