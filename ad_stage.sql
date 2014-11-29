
---------------------------------------
-- stage table for incoming AD data_id
---------------------------------------
CREATE TABLE [dbo].[tbl_ad_stage](
	[data_id] [int] IDENTITY(1,1) NOT NULL		-- native
	, [machine_id] [int] NULL					-- native
	, [record_status_id] [int] NOT NULL CONSTRAINT [DF_tbl_ad_stage_record_status_id]  DEFAULT ((0))		-- native
	, [create_timestamp] [datetime] NOT NULL CONSTRAINT [DF_tbl_ad_stage_create_timestamp]  DEFAULT (getdate())  -- native
	, [modify_timestamp] [datetime] NOT NULL CONSTRAINT [DF_tbl_ad_stage_modify_timestamp]  DEFAULT (getdate())  -- native
	, [machine_name] [nvarchar](255) NULL						-- *** active ad upload
	, [distinguished_name] [nvarchar](255) NULL					-- *** active ad upload
	, [dns_hostname] [nvarchar](255) NULL						-- *** active ad upload
	, [operating_system] [nvarchar](255) NULL					-- *** active ad upload
	, [operating_system_version] [nvarchar](255) NULL			-- *** active ad upload
	, [operating_system_service_pack] [nvarchar](255) NULL		-- *** active ad upload
	, [when_created] [datetime] NULL							-- *** active ad upload
	, [pwd_last_set] [datetime] NULL							-- *** active ad upload
	, [last_logon_timestamp] [datetime] NULL					-- *** active ad upload
 CONSTRAINT [pk_tbl_ad_stage] PRIMARY KEY CLUSTERED 
(
	[data_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]




