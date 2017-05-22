CREATE TABLE [AdminApp].[Practice]
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
[zoho_practice_id] [bigint] NULL,
[zoho_manager_id] [bigint] NULL,
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL,
[deleted_at] [datetime] NULL,
[created_by] [int] NULL,
[updated_by] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [AdminApp].[Practice] ADD CONSTRAINT [PK_Practice] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [AdminApp].[Practice] ADD CONSTRAINT [FK_Practice_City] FOREIGN KEY ([city_id]) REFERENCES [WebApp].[City] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
GRANT UPDATE ON  [AdminApp].[Practice] TO [katsiaryna]
GO
