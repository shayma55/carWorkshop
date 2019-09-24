USE [carCarDB]
GO

/****** Object:  Table [dbo].[cars]    Script Date: 06/12/40 07:53:03 م ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[cars](
	[CarID] [int] IDENTITY(1,1) NOT NULL,
	[make] [varchar](20) NOT NULL,
	[model] [varchar](20) NOT NULL,
	[style] [varchar](20) NOT NULL,
	[year] [varchar](10) NOT NULL,
	[color] [varchar](10) NULL,
 CONSTRAINT [PK_cars] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

