/*
Navicat SQL Server Data Transfer

Source Server         : 192.168.10.250
Source Server Version : 110000
Source Host           : 192.168.10.250:1433
Source Database       : JLPayment
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2018-03-15 13:51:41
*/


-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE [dbo].[sys_user]
GO
CREATE TABLE [dbo].[sys_user] (
[userId] bigint NOT NULL IDENTITY(1,1) ,
[username] varchar(50) NULL ,
[name] varchar(100) NULL ,
[password] varchar(50) NULL ,
[deptId] int NULL ,
[email] varchar(100) NULL ,
[mobile] varchar(100) NULL ,
[status] tinyint NULL ,
[userIdCreate] bigint NULL ,
[gmtCreate] datetime NULL ,
[gmtModified] datetime NULL ,
[sex] bigint NULL ,
[birth] datetime NULL ,
[province] varchar(255) NULL ,
[city] varchar(255) NULL ,
[district] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_user]', RESEED, 10011)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'username')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'账户名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'username'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'账户名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'username'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'昵称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'昵称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'password')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'password'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'password'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'deptId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'部门id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'deptId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'部门id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'deptId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'email')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电子邮箱'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'email'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电子邮箱'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'email'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'mobile')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'手机号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'mobile'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'手机号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'mobile'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'userIdCreate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建用户的用户ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'userIdCreate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建用户的用户ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'userIdCreate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'gmtCreate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'gmtCreate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'gmtCreate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'gmtModified')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'gmtModified'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'gmtModified'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'province')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'省份'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'province'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'省份'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'province'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'city')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'城市'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'city'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'城市'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'city'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'district')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'区域'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'district'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'区域'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'district'
GO

-- ----------------------------
-- Records of sys_user
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_user] ON
GO
INSERT INTO [dbo].[sys_user] ([userId], [username], [name], [password], [deptId], [email], [mobile], [status], [userIdCreate], [gmtCreate], [gmtModified], [sex], [birth], [province], [city], [district]) VALUES (N'1', N'admin', N'超级管理员', N'123456', N'6', N'admin@example.com', N'123456', N'1', N'1', N'2017-08-15 21:40:39.000', N'2017-08-15 21:41:00.000', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_user] ([userId], [username], [name], [password], [deptId], [email], [mobile], [status], [userIdCreate], [gmtCreate], [gmtModified], [sex], [birth], [province], [city], [district]) VALUES (N'2', N'test', N'临时用户', N'123456', N'6', N'test@bootdo.com', N'', N'1', N'1', N'2017-08-14 13:43:05.000', N'2017-08-14 21:15:36.000', null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_user] ([userId], [username], [name], [password], [deptId], [email], [mobile], [status], [userIdCreate], [gmtCreate], [gmtModified], [sex], [birth], [province], [city], [district]) VALUES (N'36', N'ldh', N'刘德华', N'123456', N'6', N'ldh@bootdo.com', N'', N'1', null, null, null, null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_user] ([userId], [username], [name], [password], [deptId], [email], [mobile], [status], [userIdCreate], [gmtCreate], [gmtModified], [sex], [birth], [province], [city], [district]) VALUES (N'123', N'zxy', N'张学友', N'123456', N'6', N'zxy@bootdo', N'', N'0', null, null, null, null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_user] ([userId], [username], [name], [password], [deptId], [email], [mobile], [status], [userIdCreate], [gmtCreate], [gmtModified], [sex], [birth], [province], [city], [district]) VALUES (N'124', N'wyf', N'吴亦凡', N'123456', N'6', N'wyf@bootdo.com', N'', N'1', null, null, null, null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_user] ([userId], [username], [name], [password], [deptId], [email], [mobile], [status], [userIdCreate], [gmtCreate], [gmtModified], [sex], [birth], [province], [city], [district]) VALUES (N'130', N'lh', N'鹿晗', N'123456', N'9', N'lh@bootdo.com', N'', N'1', null, null, null, null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_user] ([userId], [username], [name], [password], [deptId], [email], [mobile], [status], [userIdCreate], [gmtCreate], [gmtModified], [sex], [birth], [province], [city], [district]) VALUES (N'131', N'lhc', N'令狐冲', N'123456', N'6', N'lhc@bootdo.com', N'', N'0', null, null, null, null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_user] ([userId], [username], [name], [password], [deptId], [email], [mobile], [status], [userIdCreate], [gmtCreate], [gmtModified], [sex], [birth], [province], [city], [district]) VALUES (N'132', N'lyf', N'刘亦菲', N'123456', N'13', N'lyf@bootdo.com', N'', N'1', null, null, null, null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_user] ([userId], [username], [name], [password], [deptId], [email], [mobile], [status], [userIdCreate], [gmtCreate], [gmtModified], [sex], [birth], [province], [city], [district]) VALUES (N'133', N'my', N'马云', N'123456', N'9', N'my@bootdo.com', N'', N'1', null, null, null, null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_user] ([userId], [username], [name], [password], [deptId], [email], [mobile], [status], [userIdCreate], [gmtCreate], [gmtModified], [sex], [birth], [province], [city], [district]) VALUES (N'134', N'lyh', N'李彦宏', N'123456', N'8', N'lyh@bootdo.com', N'', N'1', null, null, null, null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_user] ([userId], [username], [name], [password], [deptId], [email], [mobile], [status], [userIdCreate], [gmtCreate], [gmtModified], [sex], [birth], [province], [city], [district]) VALUES (N'135', N'wjl', N'王健林', N'123456', N'6', N'wjl@bootod.com', N'', N'1', null, null, null, null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_user] ([userId], [username], [name], [password], [deptId], [email], [mobile], [status], [userIdCreate], [gmtCreate], [gmtModified], [sex], [birth], [province], [city], [district]) VALUES (N'136', N'gdg', N'郭德纲', N'123456', N'9', N'gdg@bootdo.com', N'', N'1', null, null, null, null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[sys_user] ([userId], [username], [name], [password], [deptId], [email], [mobile], [status], [userIdCreate], [gmtCreate], [gmtModified], [sex], [birth], [province], [city], [district]) VALUES (N'10005', N'test001', N'测试', N'111111', null, N'123@qq.com', null, N'1', null, null, null, null, null, null, null, null)
GO
GO
SET IDENTITY_INSERT [dbo].[sys_user] OFF
GO

-- ----------------------------
-- Indexes structure for table sys_user
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE [dbo].[sys_user] ADD PRIMARY KEY ([userId])
GO
