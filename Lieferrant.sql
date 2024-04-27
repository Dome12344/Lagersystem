USE [FirmaMetal]
GO

/****** Object:  Table [dbo].[Lieferanten]    Script Date: 27.04.2024 16:24:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lieferanten]') AND type in (N'U'))
DROP TABLE [dbo].[Lieferanten]
GO

/****** Object:  Table [dbo].[Lieferanten]    Script Date: 27.04.2024 16:24:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Lieferanten](
	[Lieferrantenid] [int] NOT NULL,
	[Liferrantenname] [nvarchar](50) NULL,
	[Materialpreis] [decimal](18, 0) NULL,
	[Liferzeit] [date] NULL,
 CONSTRAINT [PK_Lieferanten] PRIMARY KEY CLUSTERED 
(
	[Lieferrantenid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


