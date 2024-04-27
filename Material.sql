USE [FirmaMetal]
GO

/****** Object:  Table [dbo].[Material]    Script Date: 27.04.2024 16:25:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Material]') AND type in (N'U'))
DROP TABLE [dbo].[Material]
GO

/****** Object:  Table [dbo].[Material]    Script Date: 27.04.2024 16:25:13 ******/
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


