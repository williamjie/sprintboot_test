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

Date: 2018-03-13 10:09:17
*/


-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE [dbo].[sys_user_role]
GO
CREATE TABLE [dbo].[sys_user_role] (
[id] int NOT NULL IDENTITY(1,1) ,
[userId] int NULL ,
[roleId] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_user_role]', RESEED, 1072)
GO

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_user_role] ON
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'73', N'30', N'48')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'74', N'30', N'49')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'75', N'30', N'50')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'76', N'31', N'48')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'77', N'31', N'49')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'78', N'31', N'52')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'79', N'32', N'48')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'80', N'32', N'49')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'81', N'32', N'50')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'82', N'32', N'51')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'83', N'32', N'52')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'84', N'33', N'38')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'85', N'33', N'49')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'86', N'33', N'52')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'87', N'34', N'50')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'88', N'34', N'51')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'89', N'34', N'52')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'97', N'36', N'48')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'106', N'124', N'1')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'110', N'1', N'1')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'111', N'2', N'1')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'113', N'131', N'48')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'117', N'135', N'1')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'120', N'134', N'1')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'121', N'134', N'48')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'122', N'133', N'1')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'123', N'130', N'1')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'124', null, N'48')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'125', N'137', N'1')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([id], [userId], [roleId]) VALUES (N'126', N'138', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_user_role] OFF
GO

-- ----------------------------
-- Indexes structure for table sys_user_role
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE [dbo].[sys_user_role] ADD PRIMARY KEY ([id])
GO
