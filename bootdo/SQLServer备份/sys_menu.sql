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

Date: 2018-03-13 09:47:46
*/


-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE [dbo].[sys_menu]
GO
CREATE TABLE [dbo].[sys_menu] (
[menuId] bigint NOT NULL IDENTITY(1,1) ,
[parentId] bigint NULL ,
[name] varchar(50) NULL ,
[url] varchar(200) NULL ,
[type] int NULL ,
[icon] varchar(50) NULL ,
[orderNum] int NULL ,
[gmtCreate] datetime NULL ,
[gmtModified] datetime NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_menu]', RESEED, 10000)
GO

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_menu] ON
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'1', N'0', N'基础管理', N'', N'0', N'fa fa-bars', N'0', N'2017-08-09 22:49:47.000', null)
GO
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'2', N'3', N'系统菜单', N'sys/menu/', N'1', N'fa fa-th-list', N'2', N'2017-08-09 22:55:15.000', null)
GO
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'3', N'0', N'系统管理', N'', N'0', N'fa fa-desktop', N'1', N'2017-08-09 23:06:55.000', N'2017-08-14 14:13:43.000')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'6', N'3', N'用户管理', N'sys/user/', N'1', N'fa fa-user', N'0', N'2017-08-10 14:12:11.000', null)
GO
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'7', N'3', N'角色管理', N'role/index', N'1', N'fa fa-paw', N'1', N'2017-08-10 14:13:19.000', null)
GO
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'26', N'6', N'重置密码', N'', N'2', N'', N'0', N'2017-08-14 17:28:34.000', null)
GO
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'27', N'91', N'系统日志', N'common/log', N'1', N'fa fa-warning', N'0', N'2017-08-14 22:11:53.000', null)
GO
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'48', N'77', N'代码生成', N'common/generator', N'1', N'fa fa-code', N'3', null, null)
GO
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'57', N'91', N'运行监控', N'druid/index.html', N'1', N'fa fa-caret-square-o-right', N'1', null, null)
GO
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'71', N'1', N'文件管理', N'/common/sysFile', N'1', N'fa fa-folder-open', N'2', null, null)
GO
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'72', N'77', N'计划任务', N'common/job', N'1', N'fa fa-hourglass-1', N'4', null, null)
GO
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'73', N'3', N'部门管理', N'/system/sysDept', N'1', N'fa fa-users', N'3', null, null)
GO
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'77', N'0', N'系统工具', N'', N'0', N'fa fa-gear', N'4', null, null)
GO
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'78', N'1', N'数据字典', N'/common/sysDict', N'1', N'fa fa-book', N'1', null, null)
GO
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'84', N'0', N'办公管理', N'', N'0', N'fa fa-laptop', N'5', null, null)
GO
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'85', N'84', N'通知公告', N'oa/notify', N'1', N'fa fa-pencil-square', null, null, null)
GO
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'90', N'84', N'我的通知', N'oa/notify/selfNotify', N'1', N'fa fa-envelope-square', null, null, null)
GO
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'91', N'0', N'系统监控', N'', N'0', N'fa fa-video-camera', N'5', null, null)
GO
GO
INSERT INTO [dbo].[sys_menu] ([menuId], [parentId], [name], [url], [type], [icon], [orderNum], [gmtCreate], [gmtModified]) VALUES (N'92', N'91', N'在线用户', N'sys/online', N'1', N'fa fa-user', null, null, null)
GO
GO
SET IDENTITY_INSERT [dbo].[sys_menu] OFF
GO

-- ----------------------------
-- Indexes structure for table sys_menu
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE [dbo].[sys_menu] ADD PRIMARY KEY ([menuId])
GO
