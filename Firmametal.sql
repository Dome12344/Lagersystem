USE [FirmaMetal]
GO
/****** Object:  Table [dbo].[Bestellung]    Script Date: 01.05.2024 17:40:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bestellung](
	[Bestellungsid] [int] IDENTITY(1,1) NOT NULL,
	[Lieferid] [int] NULL,
	[Materialid] [int] NULL,
	[Id] [int] NULL,
	[Bestelldatum] [date] NULL,
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
	[Materialid] [int] NULL,
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

insert into Lager (Lagerort,Straße,Lagernummer,Materialid) values ('Neunkrichen','Neuhausenstraße 8','101543','1')
insert into Lager (Lagerort,Straße,Lagernummer,Materialid) values ('Saarbrücken','Saarstraße 10','258749','3')
insert into Lager (Lagerort,Straße,Lagernummer,Materialid) values ('Saarbrücken','Saarstraße 10','546258','2')
insert into Lager (Lagerort,Straße,Lagernummer,Materialid) values ('Neunkrichen','Neuhausenstraße 8','562549','4')
insert into Lager (Lagerort,Straße,Lagernummer,Materialid) values ('Neunkrichen','Neuhausenstraße 8','256987','5')




insert into Lieferrant (Lieferrantename,Materialpreis,[Lieferzeit Tage]) values ('Mustermann GmbH','5.49','10')
insert into Lieferrant (Lieferrantename,Materialpreis,[Lieferzeit Tage]) values ('Metall GmbH','4.49','5')
insert into Lieferrant (Lieferrantename,Materialpreis,[Lieferzeit Tage]) values ('Metall GmbH','6.49','15')
insert into Lieferrant (Lieferrantename,Materialpreis,[Lieferzeit Tage]) values ('Stahlplatten GmbH','7.25','3')
insert into Lieferrant (Lieferrantename,Materialpreis,[Lieferzeit Tage]) values ('Stahl GmbH','4.25','9')


insert into Bestellung (Lieferid,Materialid,Id,Bestelldatum) values ('1','1','1','2024-01-01')
insert into Bestellung (Lieferid,Materialid,Id,Bestelldatum) values ('2','2','1','2024-01-02')
insert into Bestellung (Lieferid,Materialid,Id,Bestelldatum) values ('3','3','1','2024-04-03')
insert into Bestellung (Lieferid,Materialid,Id,Bestelldatum) values ('4','4','1','2024-05-10')
insert into Bestellung (Lieferid,Materialid,Id,Bestelldatum) values ('4','5','1','2024-12-15')