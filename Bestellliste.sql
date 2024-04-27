USE [FirmaMetal]
GO

/****** Object:  Table [dbo].[Bestellliste]    Script Date: 27.04.2024 16:23:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bestellliste]') AND type in (N'U'))
DROP TABLE [dbo].[Bestellliste]
GO

/****** Object:  Table [dbo].[Bestellliste]    Script Date: 27.04.2024 16:23:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Bestellliste](
	[Lieferid] [int] NOT NULL,
	[Materialid] [int] NULL,
	[Lagerid] [int] NULL,
	[Mitarbeiterid] [int] NULL,
	[Bestelldatum] [date] NULL,
	[Lieferrantenid] [int] NULL,
 CONSTRAINT [PK_Bestellliste] PRIMARY KEY CLUSTERED 
(
	[Lieferid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


