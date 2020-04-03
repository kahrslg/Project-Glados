CREATE DATABASE 201dbProject
GO

USE  [201dbProject]
GO

CREATE TABLE [dbo].[VideoGames](
	[videoGameId]	INT					NOT NULL	PRIMARY KEY CLUSTERED IDENTITY(1,1),
	[title]			[varchar](100)		NOT NULL,
	[price]			[varchar](100)		NOT NULL,
	[companyId]		INT					NOT NULL,
	[genreId]		[varchar](8000)		NOT NULL,
	[desciption]	[varchar](8000)		NOT NULL,
	[commentId]		INT					NOT NULL
)
GO

CREATE TABLE [dbo].[Users](
	[userId]		INT 				NOT NULL	PRIMARY KEY CLUSTERED IDENTITY(1,1),
	[videoGameId]	INT					NOT NULL    FOREIGN KEY REFERENCES VideoGames(videoGameId),
	[isModerator]	BIT					DEFAULT ((0)) NOT NULL,
	[isDeleted]		BIT					DEFAULT ((0)) NOT NULL,
	[userName]		[varchar](30)		NOT NULL,
	[password]		[varchar](30)		NOT NULL,
	[email]			[varchar](200)		NOT NULL
)
GO

CREATE TABLE [dbo].[Company](
	[companyId]		INT					NOT NULL	PRIMARY KEY CLUSTERED IDENTITY(1,1),
	[description]	[varchar](8000)		NOT NULL,
	[name]			[varchar](8000)		NOT NULL
)
GO

CREATE TABLE [dbo].[Comments](
	[commentId]		INT					NOT NULL	PRIMARY KEY CLUSTERED IDENTITY(1,1),
	[userId]		INT					NOT NULL	FOREIGN KEY REFERENCES Users(userid),
	[desciption]	[varchar](8000)		NOT NULL,
	[isDeleted]		BIT					DEFAULT ((0)) NOT NULL
)
GO

CREATE TABLE [dbo].[Genre](
	[genreId]		INT					NOT NULL	PRIMARY KEY CLUSTERED IDENTITY(1,1),
	[desciption]	[varchar](8000)		NOT NULL
)
GO
