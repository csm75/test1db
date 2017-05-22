CREATE TABLE [dbo].[_tmpPractice]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[npi] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[contact_name] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[address] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[city_id] [int] NOT NULL,
[phone] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[url] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[operating_hours] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[practice_focus] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[email] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[business_mgr_fname] [varchar] (120) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[business_mgr_lname] [varchar] (120) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[practice_name] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[created_by] [int] NULL,
[updated_by] [int] NULL,
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[_tmpPractice] ADD CONSTRAINT [PK__tmpPractice] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
