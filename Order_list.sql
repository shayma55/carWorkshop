USE [carCarDB]
GO

/****** Object:  Table [dbo].[Order_list]    Script Date: 06/12/40 07:55:51 م ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Order_list](
	[OrderList_id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceID] [int] NOT NULL,
	[CustomersId] [int] NOT NULL,
	[shopOwnerid] [int] NOT NULL,
	[ItemsID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderList_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Order_list]  WITH CHECK ADD  CONSTRAINT [FK_Order_list_Customer] FOREIGN KEY([CustomersId])
REFERENCES [dbo].[Customer] ([CustomerID])
GO

ALTER TABLE [dbo].[Order_list] CHECK CONSTRAINT [FK_Order_list_Customer]
GO

ALTER TABLE [dbo].[Order_list]  WITH CHECK ADD  CONSTRAINT [FK_Order_list_shop_owner] FOREIGN KEY([shopOwnerid])
REFERENCES [dbo].[shop_owner] ([OwnerID])
GO

ALTER TABLE [dbo].[Order_list] CHECK CONSTRAINT [FK_Order_list_shop_owner]
GO

