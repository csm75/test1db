CREATE TABLE [TransUnion].[RedFlagText]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[code] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [TransUnion].[RedFlagText] ADD CONSTRAINT [PK_RedFlagText] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
DENY INSERT ON  [TransUnion].[RedFlagText] TO [deyan]
GO
DENY DELETE ON  [TransUnion].[RedFlagText] TO [deyan]
GO
DENY UPDATE ON  [TransUnion].[RedFlagText] TO [deyan]
GO
DENY INSERT ON  [TransUnion].[RedFlagText] TO [laraveldev]
GO
DENY DELETE ON  [TransUnion].[RedFlagText] TO [laraveldev]
GO
DENY UPDATE ON  [TransUnion].[RedFlagText] TO [laraveldev]
GO
DENY INSERT ON  [TransUnion].[RedFlagText] TO [vsevolod]
GO
DENY DELETE ON  [TransUnion].[RedFlagText] TO [vsevolod]
GO
DENY UPDATE ON  [TransUnion].[RedFlagText] TO [vsevolod]
GO
