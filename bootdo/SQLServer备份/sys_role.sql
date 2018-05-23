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

Date: 2018-03-13 09:55:51
*/


-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE [dbo].[sys_role]
GO
CREATE TABLE [dbo].[sys_role] (
[roleId] bigint NOT NULL IDENTITY(1,1) ,
[roleName] nvarchar(255) NULL ,
[roleSign] nvarchar(255) NULL ,
[remark] nvarchar(255) NULL ,
[userIdCreate] bigint NULL ,
[gmtCreate] datetime NULL ,
[gmtModified] datetime NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_role]', RESEED, 10056)
GO

-- ----------------------------
-- Records of sys_role
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_role] ON
GO
INSERT INTO [dbo].[sys_role] ([roleId], [roleName], [roleSign], [remark], [userIdCreate], [gmtCreate], [gmtModified]) VALUES (N'1', N'超级用户角色', N'admin', N'拥有最高权限', N'2', N'2017-08-12 00:43:52.000', N'2017-08-12 19:14:59.000')
GO
GO
INSERT INTO [dbo].[sys_role] ([roleId], [roleName], [roleSign], [remark], [userIdCreate], [gmtCreate], [gmtModified]) VALUES (N'48', N'钻石会员', N'', N'消费1w块', null, null, null)
GO
GO
INSERT INTO [dbo].[sys_role] ([roleId], [roleName], [roleSign], [remark], [userIdCreate], [gmtCreate], [gmtModified]) VALUES (N'49', N'白金会员', N'', N'消费5000以上', null, null, null)
GO
GO
INSERT INTO [dbo].[sys_role] ([roleId], [roleName], [roleSign], [remark], [userIdCreate], [gmtCreate], [gmtModified]) VALUES (N'52', N'白银会员', N'', N'消费两千以上', null, null, null)
GO
GO
INSERT INTO [dbo].[sys_role] ([roleId], [roleName], [roleSign], [remark], [userIdCreate], [gmtCreate], [gmtModified]) VALUES (N'56', N'普通用户', N'', N'普通用户', null, null, null)
GO
GO
SET IDENTITY_INSERT [dbo].[sys_role] OFF
GO

-- ----------------------------
-- Indexes structure for table sys_role
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE [dbo].[sys_role] ADD PRIMARY KEY ([roleId])
GO
