﻿CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FirstName] NVARCHAR(256) NULL, 
    [LastName] NVARCHAR(256) NULL, 
    [CreatedAt] DATETIME2 NOT NULL DEFAULT GETUTCDATE(), 
	[Registered] BIT NOT NULL DEFAULT 0,
	[RegisteredAt] DATETIME2 NULL,
	[InstitutionId] UNIQUEIDENTIFIER NULL,
	[ProfilePicture] VARCHAR(MAX) NULL,
    [PaymentCustomerId] VARCHAR(MAX) NULL,
    [PEK] VARBINARY(MAX) NULL, 
    [PSK] VARBINARY(MAX) NULL, 
    [LastPasswordUpdate] DATETIME2 NULL, 
    [MiddleName] NVARCHAR(256) NULL, 
    [Birthdate] DATE NULL, 
    [Suffix] NVARCHAR(50) NULL, 
    [QrExported] BIT NOT NULL DEFAULT 0, 
    [IsEnabled] BIT NOT NULL DEFAULT 1, 
    [IsSecured] BIT NOT NULL DEFAULT 1, 
    [IsVerified] BIT NOT NULL DEFAULT 1, 
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]