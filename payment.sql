USE [carCarDB]
GO

/****** Object:  Table [dbo].[payment]    Script Date: 06/12/40 07:56:13 م ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[payment](
	[paymentID] [int] NOT NULL,
	[type] [varchar](50) NOT NULL,
	[totalPaid] [float] NOT NULL,
	[balance] [float] NOT NULL,
	[bill_id] [int] NOT NULL,
 CONSTRAINT [PK_payment] PRIMARY KEY CLUSTERED 
(
	[paymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[payment]  WITH CHECK ADD  CONSTRAINT [FK_payment_bill] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([BillID])
GO

ALTER TABLE [dbo].[payment] CHECK CONSTRAINT [FK_payment_bill]
GO

