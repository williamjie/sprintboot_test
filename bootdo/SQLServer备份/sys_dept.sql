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

Date: 2018-03-13 13:33:33
*/


-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE [dbo].[sys_dept]
GO
CREATE TABLE [dbo].[sys_dept] (
[deptId] bigint NOT NULL IDENTITY(1,1) ,
[parentId] bigint NULL ,
[name] varchar(50) NULL ,
[orderNum] int NULL ,
[delFlag] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_dept]', RESEED, 18)
GO

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_dept] ON
GO
INSERT INTO [dbo].[sys_dept] ([deptId], [parentId], [name], [orderNum], [delFlag]) VALUES (N'6', N'0', N'研发部', N'1', N'1')
GO
GO
INSERT INTO [dbo].[sys_dept] ([deptId], [parentId], [name], [orderNum], [delFlag]) VALUES (N'7', N'6', N'研發一部', N'1', N'1')
GO
GO
INSERT INTO [dbo].[sys_dept] ([deptId], [parentId], [name], [orderNum], [delFlag]) VALUES (N'8', N'6', N'研发二部', N'2', N'1')
GO
GO
INSERT INTO [dbo].[sys_dept] ([deptId], [parentId], [name], [orderNum], [delFlag]) VALUES (N'9', N'0', N'销售部', N'2', N'1')
GO
GO
INSERT INTO [dbo].[sys_dept] ([deptId], [parentId], [name], [orderNum], [delFlag]) VALUES (N'10', N'9', N'销售一部', N'1', N'1')
GO
GO
INSERT INTO [dbo].[sys_dept] ([deptId], [parentId], [name], [orderNum], [delFlag]) VALUES (N'11', N'0', N'产品部', N'3', N'1')
GO
GO
INSERT INTO [dbo].[sys_dept] ([deptId], [parentId], [name], [orderNum], [delFlag]) VALUES (N'12', N'11', N'产品一部', N'1', N'1')
GO
GO
INSERT INTO [dbo].[sys_dept] ([deptId], [parentId], [name], [orderNum], [delFlag]) VALUES (N'13', N'0', N'测试部', N'5', N'1')
GO
GO
INSERT INTO [dbo].[sys_dept] ([deptId], [parentId], [name], [orderNum], [delFlag]) VALUES (N'14', N'13', N'测试一部', N'1', N'1')
GO
GO
INSERT INTO [dbo].[sys_dept] ([deptId], [parentId], [name], [orderNum], [delFlag]) VALUES (N'15', N'13', N'测试二部', N'2', N'1')
GO
GO
INSERT INTO [dbo].[sys_dept] ([deptId], [parentId], [name], [orderNum], [delFlag]) VALUES (N'16', N'0', N'FACE', N'10', N'1')
GO
GO
INSERT INTO [dbo].[sys_dept] ([deptId], [parentId], [name], [orderNum], [delFlag]) VALUES (N'17', N'16', N'小学部', N'11', N'1')
GO
GO
INSERT INTO [dbo].[sys_dept] ([deptId], [parentId], [name], [orderNum], [delFlag]) VALUES (N'18', N'16', N'中学部', N'12', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_dept] OFF
GO

-- ----------------------------
-- Indexes structure for table sys_dept
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_dept
-- ----------------------------
ALTER TABLE [dbo].[sys_dept] ADD PRIMARY KEY ([deptId])
GO
