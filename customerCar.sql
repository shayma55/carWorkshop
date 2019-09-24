USE [carCarDB]
GO

/****** Object:  Table [dbo].[customerCar]    Script Date: 06/12/40 07:54:22 م ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[customerCar](
	[plate] [varchar](10) NOT NULL,
	[cust_id] [int] NOT NULL,
	[car_id] [int] NOT NULL,
	[body_no] [varchar](20) NOT NULL,
 CONSTRAINT [PK_customerCar_1] PRIMARY KEY CLUSTERED 
(
	[body_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[customerCar]  WITH CHECK ADD  CONSTRAINT [FK_customerCar_cars] FOREIGN KEY([car_id])
REFERENCES [dbo].[cars] ([CarID])
GO

ALTER TABLE [dbo].[customerCar] CHECK CONSTRAINT [FK_customerCar_cars]
GO

ALTER TABLE [dbo].[customerCar]  WITH CHECK ADD  CONSTRAINT [FK_customerCar_Customer] FOREIGN KEY([cust_id])
REFERENCES [dbo].[Customer] ([CustomerID])
GO

ALTER TABLE [dbo].[customerCar] CHECK CONSTRAINT [FK_customerCar_Customer]
GO

