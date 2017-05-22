CREATE TABLE [TransUnion].[PublicRecordSource]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[code] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [TransUnion].[PublicRecordSource] ADD CONSTRAINT [PK_PublicRecordSource] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
