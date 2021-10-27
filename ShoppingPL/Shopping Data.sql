USE [Shopping]
GO
DELETE FROM [dbo].[ORDERDETAIL]
GO
DELETE FROM [dbo].[ORDER]
GO
DELETE FROM [dbo].[USER]
GO
DELETE FROM [dbo].[PRODUCT]
GO
DELETE FROM [dbo].[CATEGORY]
GO
SET IDENTITY_INSERT [dbo].[CATEGORY] ON 
GO
INSERT [dbo].[CATEGORY] ([ID], [NAME], [CREATEDAT], [MODIFIEDAT], [ISDELETED]) VALUES (1, N'Beauty & Grooming', CAST(N'2021-10-25T13:13:06.130' AS DateTime), NULL, 0)
GO
INSERT [dbo].[CATEGORY] ([ID], [NAME], [CREATEDAT], [MODIFIEDAT], [ISDELETED]) VALUES (2, N'Women Western Wear', CAST(N'2021-10-25T13:13:06.130' AS DateTime), NULL, 0)
GO
INSERT [dbo].[CATEGORY] ([ID], [NAME], [CREATEDAT], [MODIFIEDAT], [ISDELETED]) VALUES (3, N'Men Western Wear', CAST(N'2021-10-25T13:13:06.130' AS DateTime), NULL, 0)
GO
INSERT [dbo].[CATEGORY] ([ID], [NAME], [CREATEDAT], [MODIFIEDAT], [ISDELETED]) VALUES (4, N'Ethnic Wear', CAST(N'2021-10-25T13:13:06.130' AS DateTime), NULL, 0)
GO
INSERT [dbo].[CATEGORY] ([ID], [NAME], [CREATEDAT], [MODIFIEDAT], [ISDELETED]) VALUES (5, N'Footwear', CAST(N'2021-10-25T13:13:06.130' AS DateTime), NULL, 0)
GO
INSERT [dbo].[CATEGORY] ([ID], [NAME], [CREATEDAT], [MODIFIEDAT], [ISDELETED]) VALUES (6, N'Ethnic Bottoms', CAST(N'2021-10-25T13:13:06.130' AS DateTime), NULL, 0)
GO
INSERT [dbo].[CATEGORY] ([ID], [NAME], [CREATEDAT], [MODIFIEDAT], [ISDELETED]) VALUES (7, N'Jewellery', CAST(N'2021-10-25T13:13:06.130' AS DateTime), NULL, 0)
GO
INSERT [dbo].[CATEGORY] ([ID], [NAME], [CREATEDAT], [MODIFIEDAT], [ISDELETED]) VALUES (8, N'Accessories', CAST(N'2021-10-25T13:13:06.130' AS DateTime), NULL, 0)
GO
INSERT [dbo].[CATEGORY] ([ID], [NAME], [CREATEDAT], [MODIFIEDAT], [ISDELETED]) VALUES (9, N'Mobile Phones', CAST(N'2021-10-25T14:38:44.773' AS DateTime), CAST(N'2021-10-25T15:34:26.587' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[CATEGORY] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCT] ON 
GO
INSERT [dbo].[PRODUCT] ([ID], [NAME], [CATEGORYID], [IMAGE], [STOCK], [PRICE]) VALUES (1, N'Printed Women White T-Shirt', 2, N'https://rukminim1.flixcart.com/image/714/857/kcxpbww0/t-shirt/n/u/v/m-big-smiley-printed-women-s-white-t-shirt-bts-people-original-imaftxhdjyzvaybr.jpeg?q=50', 10, CAST(500 AS Decimal(18, 0)))
GO
INSERT [dbo].[PRODUCT] ([ID], [NAME], [CATEGORYID], [IMAGE], [STOCK], [PRICE]) VALUES (2, N'Women Round Neck Black T-Shirt', 2, N'https://5.imimg.com/data5/MW/CE/AQ/SELLER-96884460/black-women-basic-t-shirt-500x500.jpg', 5, CAST(500 AS Decimal(18, 0)))
GO
INSERT [dbo].[PRODUCT] ([ID], [NAME], [CATEGORYID], [IMAGE], [STOCK], [PRICE]) VALUES (3, N'Men Slim Fit Collar Formal Shirt', 3, N'https://assets.ajio.com/medias/sys_master/root/20210403/kdTs/60688db7aeb269a9e3345970/menkovy-pista-green-classic-slim-fit-shirt-with-curved-hemline.jpg', 3, CAST(1000 AS Decimal(18, 0)))
GO
INSERT [dbo].[PRODUCT] ([ID], [NAME], [CATEGORYID], [IMAGE], [STOCK], [PRICE]) VALUES (4, N'Women Printed Anarkali Kurta', 4, N'https://m.media-amazon.com/images/I/91kK1QGRvYL._UY550_.jpg', 2, CAST(600 AS Decimal(18, 0)))
GO
INSERT [dbo].[PRODUCT] ([ID], [NAME], [CATEGORYID], [IMAGE], [STOCK], [PRICE]) VALUES (5, N'Women Printed Daily Wear Georgette Saree', 4, N'https://wholesalemantra.com/images/Products/Big1/Daily-Wear-Printed-Soft-Georgette-Indian-Ladies-Sarees-Catalog-At-Lowest-Price-WSM-1671_16.jpeg', 5, CAST(1500 AS Decimal(18, 0)))
GO
INSERT [dbo].[PRODUCT] ([ID], [NAME], [CATEGORYID], [IMAGE], [STOCK], [PRICE]) VALUES (6, N'Men Fit T-Shirt', 3, N'https://ae01.alicdn.com/kf/HTB1Ar46QFXXXXcXXXXXq6xXFXXXD/Covrlge-2019-Hot-Summer-Men-T-shirts-Solid-Color-Slim-Fit-Short-Sleeve-T-Shirt-Mens.jpg', 3, CAST(1250 AS Decimal(18, 0)))
GO
INSERT [dbo].[PRODUCT] ([ID], [NAME], [CATEGORYID], [IMAGE], [STOCK], [PRICE]) VALUES (7, N'Men Fancy T-Shirt ', 3, N'https://4.imimg.com/data4/AA/HC/MY-26596027/men-s-fancy-t-shirt-500x500.jpg', 2, CAST(350 AS Decimal(18, 0)))
GO
INSERT [dbo].[PRODUCT] ([ID], [NAME], [CATEGORYID], [IMAGE], [STOCK], [PRICE]) VALUES (8, N'Women Fancy Sandals', 5, N'https://rukminim1.flixcart.com/image/332/398/js3j5ow0/sandal/b/s/z/w-chek-42-denill-black-original-imaf3xz3zhssqy3q.jpeg?q=50', 3, CAST(400 AS Decimal(18, 0)))
GO
INSERT [dbo].[PRODUCT] ([ID], [NAME], [CATEGORYID], [IMAGE], [STOCK], [PRICE]) VALUES (9, N'Women Sandals', 5, N'https://i.pinimg.com/736x/5b/01/fb/5b01fb6ebdc6157adb5621024a44b906--beach-shoes-summer-beach.jpg', 1, CAST(250 AS Decimal(18, 0)))
GO
INSERT [dbo].[PRODUCT] ([ID], [NAME], [CATEGORYID], [IMAGE], [STOCK], [PRICE]) VALUES (10, N'Men Fancy Shoe', 5, N'https://5.imimg.com/data5/VW/AC/MY-5451585/a4-500x500.jpg', 1, CAST(450 AS Decimal(18, 0)))
GO
INSERT [dbo].[PRODUCT] ([ID], [NAME], [CATEGORYID], [IMAGE], [STOCK], [PRICE]) VALUES (11, N'Men Formal Shoe Brown Fit', 5, N'https://assetscdn1.paytm.com/images/catalog/product/F/FO/FOOKK-8810KK-S10922269A6D5FB/1575265248686_7.jpg', 3, CAST(550 AS Decimal(18, 0)))
GO
INSERT [dbo].[PRODUCT] ([ID], [NAME], [CATEGORYID], [IMAGE], [STOCK], [PRICE]) VALUES (12, N'Sukhi Jewellery Set For Women', 7, N'https://m.media-amazon.com/images/I/81R0Nh4WFpL._UY500_.jpg', 2, CAST(499 AS Decimal(18, 0)))
GO
INSERT [dbo].[PRODUCT] ([ID], [NAME], [CATEGORYID], [IMAGE], [STOCK], [PRICE]) VALUES (14, N'Fashionable Layered Necklace For Women', 7, N'https://images-static.nykaa.com/media/catalog/product/3/a/3aa41bbct-nck-44089_7.jpg?tr=w-500,pr-true', 1, CAST(900 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[PRODUCT] OFF
GO
