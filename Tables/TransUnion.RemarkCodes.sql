CREATE TABLE [TransUnion].[RemarkCodes]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[code] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [TransUnion].[RemarkCodes] ADD CONSTRAINT [PK_RemarkCodes] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
DENY INSERT ON  [TransUnion].[RemarkCodes] TO [deyan]
GO
DENY DELETE ON  [TransUnion].[RemarkCodes] TO [deyan]
GO
DENY UPDATE ON  [TransUnion].[RemarkCodes] TO [deyan]
GO
DENY INSERT ON  [TransUnion].[RemarkCodes] TO [laraveldev]
GO
DENY DELETE ON  [TransUnion].[RemarkCodes] TO [laraveldev]
GO
DENY UPDATE ON  [TransUnion].[RemarkCodes] TO [laraveldev]
GO
DENY INSERT ON  [TransUnion].[RemarkCodes] TO [vsevolod]
GO
DENY DELETE ON  [TransUnion].[RemarkCodes] TO [vsevolod]
GO
DENY UPDATE ON  [TransUnion].[RemarkCodes] TO [vsevolod]
GO
