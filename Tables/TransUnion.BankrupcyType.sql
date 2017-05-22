CREATE TABLE [TransUnion].[BankrupcyType]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [TransUnion].[BankrupcyType] ADD CONSTRAINT [PK_BankrupcyType] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
