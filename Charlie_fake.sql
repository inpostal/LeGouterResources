
-- 會員假資料
INSERT INTO MEMBERS (MEM_CLASSIFY, MEM_NAME, MEM_ACCOUNT, MEM_PASSWORD, MEM_GENDER, MEM_PHONE, MEM_EMAIL, MEM_ADDRES, MEM_BIRTHDAY, MEM_STATUS, MEM_REGIS_TIME)
VALUES
  (0, '張三', 'zhangsan', 'password1', 'm', '0912345678', 'zhangsan@example.com', '台北市中正區', '1990-01-01', 0, CURRENT_TIMESTAMP),
  (1, '李四', 'lisi', 'password2', 'm', '0923456789', 'lisi@example.com', '新北市板橋區', '1992-02-02', 0, CURRENT_TIMESTAMP),
  (0, '王五', 'wangwu', 'password3', 'm', '0934567890', 'wangwu@example.com', '桃園市桃園區', '1994-03-03', 0, CURRENT_TIMESTAMP),
  (0, '趙六', 'zhaoliu', 'password4', 'f', '0945678901', 'zhaoliu@example.com', '新竹市東區', '1996-04-04', 0, CURRENT_TIMESTAMP),
  (1, '孫七', 'sunqi', 'password5', 'f', '0956789012', 'sunqi@example.com', '台中市西區', '1998-05-05', 0, CURRENT_TIMESTAMP),
  (0, '周八', 'zhouba', 'password6', 'm', '0967890123', 'zhouba@example.com', '台南市南區', '2000-06-06', 0, CURRENT_TIMESTAMP),
  (0, '吳九', 'wujiu', 'password7', 'f', '0978901234', 'wujiu@example.com', '高雄市左營區', '2002-07-07', 0, CURRENT_TIMESTAMP),
  (1, '郭十', 'guoshi', 'password8', 'm', '0989012345', 'guoshi@example.com', '基隆市安樂區', '2004-08-08', 0, CURRENT_TIMESTAMP),
  (0, '劉一', 'liuyi', 'password9', 'f', '0990123456', 'liuyi@example.com', '新竹縣竹北市', '2006-09-09', 0, CURRENT_TIMESTAMP),
  (1, '陳二', 'chener', 'password10', 'm', '0911234567', 'chener@example.com', '苗栗縣苗栗市', '2008-10-10', 0, CURRENT_TIMESTAMP);
  
  INSERT INTO DESSERT_TYPE (DESSERT_TYPE_NAME) VALUES ('Cake'), ('Other');

INSERT INTO DESSERT (DESSERT_NAME, DESSERT_PRICE, DESSERT_TYPE_ID, DESSERT_TIME, DESSERT_CONTENT, DESSERT_STATUS, RATE_NUM, RATE_STAR)
VALUES 
  ('蘋果派', 100, 1, NOW(), '蘋果派的描述', true, 0, 0),
  ('巧克力蛋糕', 150, 1, NOW(), '巧克力蛋糕的描述', true, 0, 0),
  ('草莓蛋糕', 120, 1, NOW(), '草莓蛋糕的描述', true, 0, 0),
  ('馬卡龍蛋糕', 180, 1, NOW(), '馬卡龍蛋糕的描述', true, 0, 0),
  ('肉桂捲', 90, 2, NOW(), '肉桂捲的描述', true, 0, 0),
  ('閃電泡芙', 120, 2, NOW(), '閃電泡芙的描述', true, 0, 0),
  ('馬卡龍', 80, 2, NOW(), '馬卡龍的描述', true, 0, 0),
  ('瑪德蓮', 100, 2, NOW(), '瑪德蓮的描述', true, 0, 0);
  
  INSERT INTO coupon_type (CP_THRESHOLD, CP_TP, CP_NAME, CP_DISCOUNT, CP_START, CP_END, CP_STATUS, CP_PIC)
VALUES
  (100, 0, 'Coupon A', 20, '2023-06-20 00:00:00', '2023-06-30 23:59:59', 1, NULL),
  (200, 1, 'Coupon B', 50, '2023-06-20 00:00:00', '2023-06-30 23:59:59', 1, NULL),
  (150, 0, 'Coupon C', 30, '2023-06-20 00:00:00', '2023-06-30 23:59:59', 1, NULL),
  (300, 1, 'Coupon D', 70, '2023-06-20 00:00:00', '2023-06-30 23:59:59', 1, NULL),
  (120, 0, 'Coupon E', 25, '2023-06-20 00:00:00', '2023-06-30 23:59:59', 1, NULL);


INSERT INTO members_cp (CP_ID, MEM_ID, CP_USED)
VALUES
  (1, 1, 0),
  (2, 2, 0),
  (3, 3, 0),
  (4, 4, 0),
  (5, 5, 0),
  (1, 6, 0),
  (2, 7, 0),
  (3, 8, 0),
  (4, 9, 0),
  (5, 10, 0);

INSERT INTO orders (MEM_ID, CP_ID, ORDER_TOTAL, CP_ORDER_TOTAL, ORDER_STATUS, ORDER_TIME, RECEIVER_PHONE, RECEIVER_ADDRESS, RECEIVER_NAME)
VALUES
  (1, 1, 100, 80, 1, CURRENT_TIMESTAMP, '0912345678', '台北市信義區', '張三'),
  (2, 2, 150, 120, 1, CURRENT_TIMESTAMP, '0923456789', '新北市板橋區', '李四'),
  (3, 3, 200, 180, 1, CURRENT_TIMESTAMP, '0934567890', '桃園市桃園區', '王五'),
  (4, 4, 120, 90, 1, CURRENT_TIMESTAMP, '0945678901', '新竹市東區', '趙六'),
  (5, 5, 180, 150, 1, CURRENT_TIMESTAMP, '0956789012', '台中市西區', '孫七'),
  (6, 1, 100, 80, 1, CURRENT_TIMESTAMP, '0967890123', '台南市南區', '周八'),
  (7, 2, 150, 120, 1, CURRENT_TIMESTAMP, '0978901234', '高雄市左營區', '吳九'),
  (8, 3, 200, 180, 1, CURRENT_TIMESTAMP, '0989012345', '基隆市安樂區', '郭十'),
  (9, 4, 120, 90, 1, CURRENT_TIMESTAMP, '0990123456', '新竹縣竹北市', '劉一'),
  (10, 5, 180, 150, 1, CURRENT_TIMESTAMP, '0911234567', '苗栗縣苗栗市', '陳二');


INSERT INTO order_detail (ORDER_ID, DESSERT_ID, DESSERT_AMOUNT, DESSERT_PRICE, DESSERT_REVIEW_DATE, DESSERT_RATE_STAR)
VALUES
  (1, 1, 2, 100, NOW(), 5),
  (1, 3, 1, 120, NOW(), 4),
  (2, 2, 3, 150, NOW(), 3),
  (2, 4, 2, 180, NOW(), 5),
  (3, 1, 1, 100, NOW(), 4),
  (3, 3, 2, 120, NOW(), 5),
  (4, 2, 1, 150, NOW(), 3),
  (4, 4, 3, 180, NOW(), 4),
  (5, 1, 3, 100, NOW(), 5),
  (5, 3, 2, 120, NOW(), 4),
  (6, 2, 1, 150, NOW(), 5),
  (6, 4, 2, 180, NOW(), 3),
  (7, 1, 2, 100, NOW(), 4),
  (7, 3, 3, 120, NOW(), 5),
  (8, 2, 2, 150, NOW(), 5),
  (8, 4, 1, 180, NOW(), 4),
  (9, 1, 1, 100, NOW(), 3),
  (9, 3, 2, 120, NOW(), 4),
  (10, 2, 3, 150, NOW(), 5),
  (10, 4, 2, 180, NOW(), 5);


INSERT INTO cart_detail (DESSERT_ID, MEM_ID, CART_DESSERT_AMOUNT)
VALUES
  (1, 1, 2),
  (3, 1, 1),
  (2, 2, 3),
  (4, 2, 2),
  (1, 3, 1),
  (3, 3, 2),
  (2, 4, 1),
  (4, 4, 3),
  (1, 5, 3),
  (3, 5, 2);


INSERT INTO dessert_img (DESSERT_IMG, DESSERT_ID)
VALUES
  ('<binary_data_1>', 1),
  ('<binary_data_2>', 2),
  ('<binary_data_3>', 3),
  ('<binary_data_4>', 4),
  ('<binary_data_5>', 5);
