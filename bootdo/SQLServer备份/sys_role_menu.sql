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

Date: 2018-03-13 10:06:28
*/


-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE [dbo].[sys_role_menu]
GO
CREATE TABLE [dbo].[sys_role_menu] (
[id] int NOT NULL IDENTITY(1,1) ,
[roleId] int NULL ,
[menuId] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_role_menu]', RESEED, 3673)
GO

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_role_menu] ON
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'367', N'44', N'1')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'368', N'44', N'32')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'369', N'44', N'33')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'370', N'44', N'34')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'371', N'44', N'35')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'372', N'44', N'28')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'373', N'44', N'29')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'374', N'44', N'30')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'375', N'44', N'38')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'376', N'44', N'4')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'377', N'44', N'27')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'378', N'45', N'38')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'379', N'46', N'3')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'380', N'46', N'20')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'381', N'46', N'21')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'382', N'46', N'22')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'383', N'46', N'23')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'384', N'46', N'11')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'385', N'46', N'12')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'386', N'46', N'13')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'387', N'46', N'14')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'388', N'46', N'24')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'389', N'46', N'25')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'390', N'46', N'26')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'391', N'46', N'15')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'392', N'46', N'2')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'393', N'46', N'6')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'394', N'46', N'7')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'598', N'50', N'38')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'632', N'38', N'42')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'737', N'51', N'38')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'738', N'51', N'39')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'739', N'51', N'40')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'740', N'51', N'41')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'741', N'51', N'4')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'742', N'51', N'32')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'743', N'51', N'33')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'744', N'51', N'34')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'745', N'51', N'35')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'746', N'51', N'27')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'747', N'51', N'28')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'748', N'51', N'29')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'749', N'51', N'30')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'750', N'51', N'1')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1064', N'54', N'53')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1095', N'55', N'2')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1096', N'55', N'6')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1097', N'55', N'7')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1098', N'55', N'3')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1099', N'55', N'50')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1100', N'55', N'49')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1101', N'55', N'1')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1856', N'53', N'28')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1857', N'53', N'29')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1858', N'53', N'30')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1859', N'53', N'27')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1860', N'53', N'57')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1861', N'53', N'71')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1862', N'53', N'48')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1863', N'53', N'72')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1864', N'53', N'1')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1865', N'53', N'7')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1866', N'53', N'55')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1867', N'53', N'56')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1868', N'53', N'62')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1869', N'53', N'15')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1870', N'53', N'2')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1871', N'53', N'61')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1872', N'53', N'20')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1873', N'53', N'21')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1874', N'53', N'22')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1875', N'49', N'12')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1876', N'49', N'13')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1877', N'49', N'14')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1878', N'49', N'24')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1879', N'49', N'25')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1880', N'49', N'26')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1881', N'49', N'61')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1882', N'49', N'20')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1883', N'49', N'21')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1884', N'49', N'22')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1885', N'49', N'74')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1886', N'49', N'75')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1887', N'49', N'76')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1888', N'49', N'6')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1889', N'49', N'2')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'1890', N'49', N'73')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2072', N'52', N'77')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2073', N'52', N'49')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2074', N'52', N'3')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2075', N'52', N'72')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2076', N'52', N'48')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2084', N'56', N'68')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2085', N'56', N'60')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2086', N'56', N'59')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2087', N'56', N'58')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2088', N'56', N'51')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2089', N'56', N'50')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2090', N'56', N'49')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2243', N'48', N'72')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2247', N'63', N'-1')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2248', N'63', N'84')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2249', N'63', N'85')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2250', N'63', N'88')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2251', N'63', N'87')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2252', N'64', N'84')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2253', N'64', N'89')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2254', N'64', N'88')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2255', N'64', N'87')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2256', N'64', N'86')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2257', N'64', N'85')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2258', N'65', N'89')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2259', N'65', N'88')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2260', N'65', N'86')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2262', N'67', N'48')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2263', N'68', N'88')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2264', N'68', N'87')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2265', N'69', N'89')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2266', N'69', N'88')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2267', N'69', N'86')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2268', N'69', N'87')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2269', N'69', N'85')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2270', N'69', N'84')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2271', N'70', N'85')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2272', N'70', N'89')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2273', N'70', N'88')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2274', N'70', N'87')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2275', N'70', N'86')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2276', N'70', N'84')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2277', N'71', N'87')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2278', N'72', N'59')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2279', N'73', N'48')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2280', N'74', N'88')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2281', N'74', N'87')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2282', N'75', N'88')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2283', N'75', N'87')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2284', N'76', N'85')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2285', N'76', N'89')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2286', N'76', N'88')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2287', N'76', N'87')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2288', N'76', N'86')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2289', N'76', N'84')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2292', N'78', N'88')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2293', N'78', N'87')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2294', N'78', null)
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2295', N'78', null)
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2296', N'78', null)
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2308', N'80', N'87')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2309', N'80', N'86')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2310', N'80', N'-1')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2311', N'80', N'84')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2312', N'80', N'85')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2328', N'79', N'72')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2329', N'79', N'48')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2330', N'79', N'77')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2331', N'79', N'84')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2332', N'79', N'89')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2333', N'79', N'88')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2334', N'79', N'87')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2335', N'79', N'86')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2336', N'79', N'85')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2337', N'79', N'-1')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2338', N'77', N'89')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2339', N'77', N'88')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2340', N'77', N'87')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2341', N'77', N'86')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2342', N'77', N'85')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2343', N'77', N'84')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2344', N'77', N'72')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2345', N'77', N'-1')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2346', N'77', N'77')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2614', N'1', N'95')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2615', N'1', N'92')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2616', N'1', N'57')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2617', N'1', N'30')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2618', N'1', N'29')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2619', N'1', N'28')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2620', N'1', N'90')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2621', N'1', N'89')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2622', N'1', N'88')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2623', N'1', N'87')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2624', N'1', N'86')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2625', N'1', N'72')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2626', N'1', N'48')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2627', N'1', N'68')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2628', N'1', N'60')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2629', N'1', N'59')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2630', N'1', N'58')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2631', N'1', N'51')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2632', N'1', N'76')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2633', N'1', N'75')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2634', N'1', N'74')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2635', N'1', N'62')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2636', N'1', N'56')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2637', N'1', N'55')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2638', N'1', N'15')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2639', N'1', N'26')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2640', N'1', N'25')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2641', N'1', N'24')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2642', N'1', N'14')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2643', N'1', N'13')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2644', N'1', N'12')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2645', N'1', N'61')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2646', N'1', N'22')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2647', N'1', N'21')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2648', N'1', N'20')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2649', N'1', N'83')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2650', N'1', N'81')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2651', N'1', N'80')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2652', N'1', N'79')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2653', N'1', N'71')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2654', N'1', N'27')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2655', N'1', N'91')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2656', N'1', N'85')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2657', N'1', N'84')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2658', N'1', N'77')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2659', N'1', N'50')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2660', N'1', N'49')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2661', N'1', N'73')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2662', N'1', N'7')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2663', N'1', N'6')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2664', N'1', N'2')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2665', N'1', N'3')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2666', N'1', N'78')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2667', N'1', N'1')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2668', N'1', N'94')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2669', N'1', N'98')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2670', N'1', N'97')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2671', N'1', N'96')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2672', N'1', N'93')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([id], [roleId], [menuId]) VALUES (N'2673', N'1', N'-1')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_role_menu] OFF
GO

-- ----------------------------
-- Indexes structure for table sys_role_menu
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_role_menu
-- ----------------------------
ALTER TABLE [dbo].[sys_role_menu] ADD PRIMARY KEY ([id])
GO
