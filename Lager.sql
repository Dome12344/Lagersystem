USE [FirmaMetal]
GO

/****** Object:  Table [dbo].[Lager]    Script Date: 27.04.2024 16:24:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lager]') AND type in (N'U'))
DROP TABLE [dbo].[Lager]
GO

/****** Object:  Table [dbo].[Lager]    Script Date: 27.04.2024 16:24:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Lager](
	[Lagerid] [int] IDENTITY(1,1) NOT NULL,
	[Lagerort] [nvarchar](50) NULL,
	[Straﬂe] [nvarchar](50) NULL,
	[Lagernummer] [int] NULL,
	[Materialid] [int] NULL,
 CONSTRAINT [PK_Lager] PRIMARY KEY CLUSTERED 
(
	[Lagerid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


