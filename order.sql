USE [carCarDB]
GO

/****** Object:  Table [dbo].[order]    Script Date: 06/12/40 07:55:37 م ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[order](
	[OrderID] [int] NOT NULL,
	[date] [date] NOT NULL,
	[ordelist_orderId] [int] NOT NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_Order_list] FOREIGN KEY([ordelist_orderId])
REFERENCES [dbo].[Order_list] ([OrderList_id])
GO

ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_Order_list]
GO

