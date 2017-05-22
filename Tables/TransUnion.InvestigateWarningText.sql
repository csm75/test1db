CREATE TABLE [TransUnion].[InvestigateWarningText]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [TransUnion].[InvestigateWarningText] ADD CONSTRAINT [PK_InvestigateWarningText] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
DENY INSERT ON  [TransUnion].[InvestigateWarningText] TO [deyan]
GO
DENY DELETE ON  [TransUnion].[InvestigateWarningText] TO [deyan]
GO
DENY UPDATE ON  [TransUnion].[InvestigateWarningText] TO [deyan]
GO
DENY INSERT ON  [TransUnion].[InvestigateWarningText] TO [laraveldev]
GO
DENY DELETE ON  [TransUnion].[InvestigateWarningText] TO [laraveldev]
GO
DENY UPDATE ON  [TransUnion].[InvestigateWarningText] TO [laraveldev]
GO
DENY INSERT ON  [TransUnion].[InvestigateWarningText] TO [vsevolod]
GO
DENY DELETE ON  [TransUnion].[InvestigateWarningText] TO [vsevolod]
GO
DENY UPDATE ON  [TransUnion].[InvestigateWarningText] TO [vsevolod]
GO
