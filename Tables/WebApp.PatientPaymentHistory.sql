CREATE TABLE [WebApp].[PatientPaymentHistory]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[PatientID] [int] NOT NULL,
[PaymentDate] [datetime] NOT NULL,
[PaymentAmount] [money] NOT NULL,
[FundingSource] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [WebApp].[PatientPaymentHistory] ADD CONSTRAINT [PK_PatientPaymentHistory] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[PatientPaymentHistory] ADD CONSTRAINT [FK_PatientPaymentHistory_Patient] FOREIGN KEY ([PatientID]) REFERENCES [WebApp].[Patient] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
