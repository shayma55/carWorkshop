USE [carCarDB]
GO

/****** Object:  Table [dbo].[bill]    Script Date: 06/12/40 07:52:37 م ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[bill](
	[BillID] [int] NOT NULL,
	[date] [date] NOT NULL,
	[amount] [float] NOT NULL,
	[vat] [float] NOT NULL,
	[totalAmount] [float] NOT NULL,
	[order_id] [int] NOT NULL,
 CONSTRAINT [PK_bill] PRIMARY KEY CLUSTERED 
(
	[BillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_order] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([OrderID])
GO

ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_order]
GO

