-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2024 at 11:38 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phoneshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `a_id` int(255) NOT NULL,
  `a_username` varchar(255) NOT NULL,
  `a_email` varchar(255) NOT NULL,
  `a_age` varchar(255) NOT NULL,
  `a_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`a_id`, `a_username`, `a_email`, `a_age`, `a_password`) VALUES
(1, 'nuttanun', 'ad@ad.com', '12', '1234'),
(2, 'nuttanun S.', 'degel@gmail.com', '17', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` int(7) UNSIGNED ZEROFILL NOT NULL,
  `ototal` int(7) NOT NULL,
  `odate` datetime NOT NULL,
  `member_id` int(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oid`, `ototal`, `odate`, `member_id`) VALUES
(0000001, 40990, '2024-10-03 15:10:56', 0),
(0000002, 4990, '2024-10-03 15:11:45', 0),
(0000003, 63800, '2024-10-03 15:19:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `od_id` int(6) NOT NULL,
  `oid` int(7) UNSIGNED ZEROFILL NOT NULL,
  `pid` int(7) NOT NULL,
  `item` int(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`od_id`, `oid`, `pid`, `item`) VALUES
(1, 0000001, 34, 1),
(2, 0000001, 19, 1),
(3, 0000002, 18, 1),
(4, 0000003, 34, 1),
(5, 0000003, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `p_detail` text NOT NULL,
  `p_price` int(6) NOT NULL,
  `p_picture` varchar(200) NOT NULL,
  `pt_id` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_detail`, `p_price`, `p_picture`, `pt_id`) VALUES
(18, 'หูฟัง Marshall Minor IV Black', 'สัมผัสประสบการณ์ใช้งานครั้งใหม่ด้วย หูฟัง Marshall Minor IV   ด้วยคุณภาพเสียงสุดพรีเมี่ยมที่ได้รับการอัปเกรดให้ดียิ่งขึ้น พร้อมให้คุณดื่มด่ำประสบการณ์แห่งเสียง ชัดเจนทุกท่วงทำนอง  เต็มอิ่มกับการใช้งานได้ยาวนานมากขึ้นด้วยแบตเตอรี่ที่สามารถใช้ได้นานถึง 30 ชั่วโมง ดีไซน์ใหม่  สวมใส่สบายมากขึ้น เมื่อเทียบจากรุ่นก่อนหน้า ให้คุณสนุกสนานกับการใช้งานได้นานขึ้นกว่าเดิม ', 4990, 'Marshall-Minor-IV-Black-2.jpg', 4),
(2, 'Ipad 10th generation', 'ipad', 15000, 'Ipad10.jpg', 2),
(17, 'Apple iPad Air 11-inch (M2) Wi-Fi 128GB Space Gray', 'iPad Air อัดฉีดโดยชิปอันทรงพลังที่รวดเร็ว พร้อมจอภาพที่สวยสดงดงาม กล้องในแนวนอนใหม่ที่ลงตัวสุด ๆ สำหรับ FaceTime และการโทรแบบวิดีโอ คุณจึงสามารถทำนั่นทำนี่แบบมัลติทาสก์ ทำงาน เรียนรู้ เล่นสนุก และสร้างสรรค์จากที่ไหนก็ได้\r\n\r\n-จอภาพ LIQUID RETINA ขนาด 11 นิ้ว\r\n-ชิป M2 ทำงานมัลติทาสก์และเล่นเกมได้อย่างราบรื่น\r\n-กล้องหน้าอัลตร้าไวด์ 12MP และกล้องหลังไวด์ 12MP\r\n-ปลดล็อคด้วย Touch ID ใช้ลายนิ้วมือเพื่อปลดล็อค iPad Air', 23900, 'iPad-Air-11-inch-M2-Wi-Fi-Space-Gray-1.webp', 2),
(19, 'หูฟังออกกำลังกาย JBL Endurance RUN 2 Wired Black', 'JBL Endurance Run 2 Black ออกแบบให้สวมใส่หูฟังได้ทั้งแบบใส่ในหูด้านหน้าและคล้องด้านหลังใบหู เทคโนโลยี FlexSoft ™และ TwistLock ™ น้ำหนักเบาใส่สบายแน่นไม่เจ็บหู มาตราฐานกันน้ำระดับ IPX5 ใช้ได้นานสูงสุด 10 ชม.ชาร์จเพียง 10 นาที ก็เล่นได้ถึง 1 ชม. จัดการสายสนทนาด้วยปุ่มเดียวมีไมค์ในตัว หรือกดปุ่ม 2 ครั้ง เพื่อใช้คำสั่งเสียง แม่เหล็กหูฟังทั้ง 2 ข้าง ช่วยไม่ให้สายพันกันเมื่อไม่ใช้งาน ไดรเวอร์ไดนามิกขนาด 8.0 มม. ให้เสียงเบสที่หนักแน่นทรงพลัง', 1090, 'JBL-In-Ear-Endurance-RUN-2-Sweatproof-Wired-Sports-Black-4.jpg', 4),
(20, 'Apple iPad Air 13-inch (M2) Wi-Fi 128GB Blue', 'iPad Air อัดฉีดโดยชิปอันทรงพลังที่รวดเร็ว พร้อมจอภาพที่สวยสดงดงาม กล้องในแนวนอนใหม่ที่ลงตัวสุด ๆ สำหรับ FaceTime และการโทรแบบวิดีโอ คุณจึงสามารถทำนั่นทำนี่แบบมัลติทาสก์ ทำงาน เรียนรู้ เล่นสนุก และสร้างสรรค์จากที่ไหนก็ได้\r\n\r\n-จอภาพ LIQUID RETINA ขนาด 13 นิ้ว\r\n-ชิป M2 ทำงานมัลติทาสก์และเล่นเกมได้อย่างราบรื่น\r\n-กล้องหน้าอัลตร้าไวด์ 12MP และกล้องหลังไวด์ 12MP\r\n-ปลดล็อคด้วย Touch ID ใช้ลายนิ้วมือเพื่อปลดล็อค iPad Air', 23900, 'iPad-Air-13-inch-M2-Wi-Fi-Blue-1.webp', 2),
(21, 'Apple iPad Air 11-inch (M2) Wi-Fi + Cellular 128GB Purple', 'iPad Air อัดฉีดโดยชิปอันทรงพลังที่รวดเร็ว พร้อมจอภาพที่สวยสดงดงาม กล้องในแนวนอนใหม่ที่ลงตัวสุด ๆ สำหรับ FaceTime และการโทรแบบวิดีโอ คุณจึงสามารถทำนั่นทำนี่แบบมัลติทาสก์ ทำงาน เรียนรู้ เล่นสนุก และสร้างสรรค์จากที่ไหนก็ได้\r\n\r\nจอภาพ LIQUID RETINA ขนาด 11 นิ้ว\r\nWi-Fi 6E และระบบเซลลูลาร์ 5G ที่เร็วแรง\r\nชิป M2 ทำงานมัลติทาสก์และเล่นเกมได้อย่างราบรื่น\r\nกล้องหน้าอัลตร้าไวด์ 12MP และกล้องหลังไวด์ 12MP\r\nปลดล็อคด้วย Touch ID ใช้ลายนิ้วมือเพื่อปลดล็อค iPad Air', 23900, 'iPad-Air-11-inch-M2-Cellular-Purple-1.webp', 2),
(22, 'Apple iPad Pro 11-inch Wi-Fi 256GB with Standard glass - Space Black (5th Gen)', 'iPad Pro ใหม่นั้นบางอย่างเหลือเชื่อ พร้อมประสิทธิภาพที่แรงสุดด้วยชิปอันทรงพลัง และกราฟิกที่เร็วสุดขั้ว จอภาพที่สีสันสวยสดงดงามสุดล้ำ ถ่ายทอดสีสันได้อย่างแม่นยำ ให้คุณเชื่อมต่อแบบไร้สายได้รวดเร็ว เพื่อประสิทธิภาพการทำงานที่ไม่มีที่สิ้นสุด\r\n\r\n-ชิป M4 ที่มีประสิทธิภาพที่ทรงพลัง\r\n-จอภาพ ULTRA RETINA XDR ขนาด 11 นิ้ว\r\n-กล้องหน้าอัลตร้าไวด์ 12MP และกล้องหลังไวด์ 12MP\r\n-ปลดล็อค iPad Pro ด้วย Face ID ลงชื่อเข้าได้เพียงแค่เหลือบมอง', 39900, 'iPad-Pro-11-inch-M4-Wi-Fi-SpaceBlack-2.jpg', 2),
(23, 'หูฟังออกกำลังกาย Sony In Ear with Mic. Wireless WI-OE610/BQ Black', 'Sony In Ear  Wireless WI-OE610 เพลิดเพลินกับการออกกำลังกาย และฟังเพลง กับหูฟังรุ่นใหม่ Float Run ที่สวมใส่สบายน้ำหนักเบา กับดีไซน์ใหม่แบบออฟเอียร์ ใส่ได้นานโดยไม่รู้สึกกดทับ หรืออึดอัด\r\n\r\nป้องกันน้ำระดับ IPX4\r\nดีไซน์ แบบสายคล้องคอ\r\nเหมาะกับการออกกำลังกาย', 4990, 'Sony-In-Ear-Black-5.jpg', 4),
(24, 'Apple iPad Pro 13-inch Wi-Fi 256GB with Standard glass - Space Black (7th Gen)', 'iPad Pro ใหม่นั้นบางอย่างเหลือเชื่อ พร้อมประสิทธิภาพที่แรงสุดด้วยชิปอันทรงพลัง และกราฟิกที่เร็วสุดขั้ว จอภาพที่สีสันสวยสดงดงามสุดล้ำ ถ่ายทอดสีสันได้อย่างแม่นยำ ให้คุณเชื่อมต่อแบบไร้สายได้รวดเร็ว เพื่อประสิทธิภาพการทำงานที่ไม่มีที่สิ้นสุด\r\n\r\n-ชิป M4 ที่มีประสิทธิภาพที่ทรงพลัง\r\n-จอภาพ ULTRA RETINA XDR ขนาด 13 นิ้ว\r\n-กล้องหน้าอัลตร้าไวด์ 12MP และกล้องหลังไวด์ 12MP\r\n-ปลดล็อค iPad Pro ด้วย Face ID ลงชื่อเข้าได้เพียงแค่เหลือบมอง', 52900, 'iPad-Pro-11-inch-M4-Wi-Fi-SpaceBlack-2.jpg', 2),
(25, 'หูฟังบลูทูธ Sony WI-C100 Black', 'หูฟังบลูทูธ กันน้ำ  Sony  WI-C100 สีดำ น้ำหนักเบาและพกพาสะดวก มีสายคล้องคอที่ยืดหยุ่นได้ ซึ่งช่วยให้ใส่ลงในกระเป๋าได้ง่ายยิ่งขึ้นเมื่อคุณเดินทาง รองรับ Digital Sound Enhancement Engine (DSEE) ซึ่งคืนเสียงความถี่สูงและปรับแต่งเสียงเฟดเอาท์ในเพลงหรือคลิปเสียง\r\n\r\n-รองรับ Dolby Atmos\r\n-กันน้ำได้ระดับ IPX4 \r\n-อายุการใช้งานแบตเตอรี่ 25 ชั่วโมง', 790, 'Sony-In-Ear-with-Mic.-Wireless-WI-C100-BZ-E-Black-4.jpg', 4),
(26, 'Apple iPad Pro 12.9-inch Wi-Fi + Cellular 128GB Space Gray 2022 (6th Gen)', 'iPad Pro มาพร้อมประสิทธิภาพที่น่าทึ่ง การเชื่อมต่อแบบไร้สายที่เร็วสุดแรง และประสบการณ์การใช้งาน Apple Pencil เจเนอเรชั่นถัดไป บวกกับคุณสมบัติใหม่อันทรงพลังสำหรับประสิทธิภาพการทำงานและการทำงานร่วมกันใน iPadOS 16 นี่แหละ iPad Pro ที่สุดแห่งประสบการณ์ iPad\r\n\r\n-จอภาพ Liquid Retina XDR ขนาด 12.9 นิ้ว\r\n-ชิป M2 พร้อม CPU แบบ 8-core และ GPU แบบ 10-core\r\n-กล้องไวด์ความละเอียด 12MP\r\n-กล้องหน้าอัลตร้าไวด์ความละเอียด 12MP  \r\n-Wi-Fi 6E2 และระบบเซลลูลาร์ 5G ที่เร็วสุดแรง\r\n-ใช้งานได้กับ Apple Pencil (รุ่นที่ 2)\r\n-iPadOS 16 ', 48900, 'iPad_Pro_Cellular_12-9_in_6th_Gen_Space_Gray_5G_2.jpg', 2),
(27, 'Marshall Diamond Jubiree Limited Edition', 'ฉลองครบรอบ 60 ปี ที่แสนสำคัญด้วยเซต Marshall Diamond Jubiree Limited Edition ที่มาพร้อมวัสดุและคุณภาพเสียสุดพรีเมี่ยม ปรับโฉมด้วยดีไซน์พิเศษเเบบ \"All black\" ภายใต้คอลเลคชั่น Marshall Diamond Jubilee ประกอบไปด้วยสินค้าขายดีทั้งหมด 3 รุ่น ได้แก่ Monitor II A.N.C. ที่มาพร้อมกับกระเป๋าหนังสีดำสำหรับใส่หูฟัง MOTIF A.N.C. และรุ่นคลาสสิคตลอดกาลอย่าง Emberton เพิ่มความลิมิเต็ดด้วยสัญลักษณ์โลโก้ครบรอบ 60 ปี Marshall บนตัวสินค้า\r\n\r\n-คุณภาพเสียงที่พลังและเป็นเอกลักษณ์\r\n-ดีไซน์การออกแบบธีม \"All Black\" ฉลอง 60 ปี\r\n-กระเป่าหนังสุดสุดพรีเมี่ยมพร้อมสินค้าสุดฮิต 3 รุ่น ', 24900, 'Marshall-Diamond-Jubiree-Limited-Edition-5-square_medium.jpg', 4),
(28, 'Apple iPad 9 (2021) Wi-Fi + Cellular 64GB 10.2 inch Space Gray', 'iPad Gen 9 ยอดนิยมคุ้มค่าทุกการใช้งาน ทำงานหนัก ๆ ได้สบาย ไม่ว่าจะจดเลคเชอร์ ตัดคลิป งานกราฟิก อย่างเช่นวาดรูป ก็ทำได้สบาย หรือจะดูหนัง ฟังเพลง เล่นเกม ท่องเว็บได้แบบลื่น ๆ หนักแค่ไหนก็เอาอยู่\r\n\r\n-จอภาพ Retina ขนาด 10.2 นิ้ว\r\n-ใช้งานได้กับ Apple Pencil (รุ่นที่ 1)\r\n-ชิป A13 Bionic พร้อม Neural Engine', 15300, 'iPad_10.webp', 2),
(29, 'หูฟังไร้สาย Beats Fit Pro Sage Gray', 'Beats Fit Pro มาพร้อมกับที่เกี่ยวหูที่ใส่สบายและกระชับพอดี โดยจะโค้งรับพอดีกับหูของคุณ ที่เกี่ยวหูดีไซน์อเนกประสงค์ได้รับการทดสอบขั้นสุดจากนักกีฬาทุกประเภท คุณจึงวางใจได้ว่าหูฟังจะอยู่กับที่ตลอดวันระหว่างที่คุณทำงานและออกกำลังกาย นอกจากนี้ยังมีช่องระบายอากาศลดแรงกด คุณจึงสวมใส่หูฟังได้อย่างสบายตลอดวัน\r\n\r\n-ชิป Apple H1\r\n-ระบบเสียงตามตำแหน่งที่จะติดตามศีรษะแบบไดนามิก เพื่อช่วยให้คุณได้ดื่มด่ำกับเพลง ภาพยนตร์ และเกม\r\n-เทคโนโลยีตัดเสียงรบกวนแบบแอ็คทีฟ (ANC) จะปรับให้เข้ากับสภาพแวดล้อมรอบตัว\r\n-หูฟังทนเหงื่อและน้ำ (ระดับ IPX4) ใส่ออกกำลังกายได้\r\n-แอปค้นหาของฉันใน iOS จะช่วยคุณค้นหาหูฟังในกรณีที่ทำหาย\r\n-ใช้งานร่วมกับ Android ได้', 5780, 'Beats-Fit-Pro-True-Wireless-Earbuds-Beats-Gray-3.jpg', 4),
(30, 'Apple iPad Air 10.9-inch Wi-Fi 64GB Space Gray 2022 (5th Gen)', 'iPad Air (5th Gen) รุ่นล่าสุดสำหรับ iPad Air อัพเกรดขึ้นไปอีกขั้นด้วยจอภาพที่ใหม่และกว้างขึ้น พร้อมชิปประมาลผลที่ทรงประสิทธิภาพ ให้การทำงานหรือเล่นเกมหนัก ๆ ตัดต่อคลิป วาดรูป กลายเป็นเรื่องง่าย ๆ  แต่ยังคงความเบาและบางไว้ได้อยู่\r\n\r\n-พอร์ตการเชื่อมต่อแบบ USB-C\r\n-ใช้งานได้กับ Apple Pencil (รุ่นที่ 2)\r\n-ชิป Apple M1 พร้อม Neural Engine\r\n-จอภาพ Liquid Retina ขนาด 10.9 นิ้ว', 18900, 'iPad_Air_Wi-Fi_Space_Gray_2.webp', 2),
(31, 'Apple iPad Mini 6 (2021) Wi-Fi 64GB 8.3 inch Pink', 'iPad mini 6 ใหม่ มาในดีไซน์แบบหน้าจอทั้งหมด พร้อมจอภาพ Liquid Retina ขนาด 8.3 นิ้ว ชิป A15 Bionic อันทรงพลังและ Neural Engine กล้องหน้าอัลตร้าไวด์ ความละเอียด 12MP พร้อมคุณสมบัติ \"จัดให้อยู่ตรงกลาง\" การเชื่อมต่อแบบ USB-C อีกทั้งยังจดโน้ต ทำเครื่องหมายในเอกสาร หรือถ่ายทอดไอเดียสุดยิ่งใหญ่ได้ด้วย Apple Pencil (รุ่นที่ 2) ที่ยึดติดกับตัวเครื่องไว้ด้วยแม่เหล็กและชาร์จแบบไร้สาย\r\n\r\n-จอภาพ Liquid Retina ขนาด 8.3 นิ้ว\r\n-ชิป A15 Bionic พร้อม Neural Engine\r\n-Touch ID เพื่อการยืนยันตัวตนที่ปลอดภัย\r\n-กล้องหลังไวด์ ความละเอียด 12MP\r\n-กล้องหน้าอัลตร้าไวด์ ความละเอียด 12MP\r\n-ลำโพงสเตอริโอแนวนอน', 19900, 'iPad_mini_Wi-Fi_Pink_2.jpg', 2),
(32, 'หูฟังไร้สาย Beats Studio 3 Blue', 'หูฟังไร้สาย Beats Studio 3  Blue พร้อมมอบประสบการณ์การฟังระดับพรีเมี่ยมด้วยคุณสมบัติ Pure Active Noise Canceling (Pure ANC) โดย Pure ANC ของ Beats จะตัดเสียงรบกวนจากภายนอกให้อยู่ตลอด และใช้การปรับเทียบเสียงแบบเรียลไทม์เพื่อรักษาความคมชัด ช่วงเสียง และอารมณ์ ซึ่งจะบล็อกเสียงแบบเจาะจงอย่างต่อเนื่องในขณะที่ปรับแต่งเสียงตามการเล่นเพลงแต่ละเพลงโดยอัตโนมัติแบบเรียลไทม์ เสริมคุณภาพผลลัพธ์ด้านเสียงให้เติมประสิทธิภาพเพื่อคงไว้ซึ่งประสบการณ์ฟังเพลงระดับพรีเมียมในแบบที่ศิลปินต้องการสื่อออกมา\r\n\r\n-ตัดเสียงรบกวนจากภายนอกให้อยู่ตลอด\r\n-ฟังได้นานถึง 22 ชั่วโมง\r\n-ควบคุมระดับเสียง และสั่งงานด้วยเสียงด้วยปุ่มควบคุม \"b\"\r\n ', 10620, 'Capture.JPG', 4),
(34, 'Apple iPhone 16 Pro 128GB Desert Titanium', 'iPhone 16 Pro มาพร้อมดีไซน์แบบไทเทเนียมที่โดดเด่นสวยงาม พร้อมตัวควบคุมกล้องให้เข้าถึงเครื่องมือของกล้องได้อย่างรวดเร็ว และยกระดับวิดีโอไปอีกขั้นอย่างที่ไม่เคยทำได้มาก่อนด้วย Dolby Vision ระดับ 4K ที่ 120 fps\r\n\r\n-ขุมพลังแห่งชิป A18 PRO\r\n-จอภาพ Super Retina XDR ขนาด 6.3 นิ้ว\r\n-กล้อง Fusion 48MP และไมโครโฟนคุณภาพระดับสตูดิโอ', 39900, '16pro.JPG', 1),
(57, 'Apple 20W USB-C Port Power Adapter', 'อะแดปเตอร์แปลงไฟ Apple USB-C ขนาด 20 วัตต์ แบบหัวกลม สามารถชาร์จได้อย่างรวดเร็วและมีประสิทธิภาพไม่ว่าจะที่บ้าน ที่ทำงาน หรือระหว่างเดินทาง เพียงจับคู่กับ iPhone 8 หรือใหม่กว่าเพื่อชาร์จแบบเร็วได้ถึงระดับ 50% ในเวลาประมาณ 30 นาที¹ หรือจับคู่กับ iPad Pro และ iPad Air เพื่อประสิทธิภาพการชาร์จขั้นสูงสุด ใช้งานได้กับอุปกรณ์ที่สามารถใช้งาน USB-C ได้\r\n\r\nรุ่นของ iPhone\r\n\r\niPhone 16 Pro\r\niPhone 16 Pro Max\r\niPhone 16\r\niPhone 16 Plus', 890, '7.jpg', 5),
(39, 'Apple iPhone 12 128GB Green', 'เร็วยิ่งกว่าเร็ว ทั้งชิพที่เร็วที่สุดในสมาร์ทโฟนอย่าง A14 Bionicจอภาพ OLED แบบขอบจรดขอบ Ceramic Shield ที่ทนต่อการตกกระแทกได้ดีขึ้น 4 เท่า และโหมดกลางคืนบนกล้องทุกตัว iPhone 12 ก็มีหมดทุกอย่าง', 17900, 'app12.jpg', 1),
(40, 'Apple iPhone 13 128GB Midnight', 'iPhone 13 ระบบกล้องคู่ที่ล้ำหน้าที่สุดเท่าที่เคยมีมาบน iPhone พร้อมชิป A15 Bionic ที่เร็วสุดขั้ว, แบตเตอรี่ที่ใช้งานได้นานขึ้น แบบก้าวกระโดดครั้งใหญ่, ดีไซน์ที่ทนทาน, 5G ที่เร็วสุดแรงและจอภาพ Super Retina XDR ที่สว่างยิ่งขึ้น\r\n\r\nจอภาพ Super Retina XDR ขนาด 6.1 นิ้ว\r\nโหมดภาพยนตร์เพิ่มมิติความชัดตื้นและสลับจุดโฟกัสในวิดีโอของคุณโดยอัตโนมัติ\r\nระบบกล้องคู่สุดล้ำที่ประกอบด้วยกล้องไวด์และอัลตร้าไวด์ ความละเอียด 12MP\r\nกล้องหน้า TrueDepth ความละเอียด 12MP\r\nชิป A15 Bionic เพื่อประสิทธิภาพที่เร็วสุดขั้ว\r\nเล่นวิดีโอ นานสูงสุด 19 ชั่วโมง', 18800, 'j.jpg', 1),
(41, 'Apple iPhone 14 Pro 1TB Deep Purple', 'iPhone 14 Pro เก็บรายละเอียดได้อย่างน่าทึ่งด้วยกล้องหลักความละเอียด 48MP และสัมผัสประสบการณ์ iPhone แบบใหม่หมดด้วย Dynamic Island และจอภาพแบบติดตลอด พร้อมด้วยการตรวจจับการชนกัน ซึ่งเป็นคุณสมบัติใหม่ด้านความปลอดภัยที่พร้อมโทรขอความช่วยเหลือเมื่อคุณไม่สามารถ', 58500, 'app14.jpg', 1),
(56, 'Apple 70W USB-C Power Adapter', 'อะแดปเตอร์แปลงไฟ USB-C ขนาด 70 วัตต์ สามารถชาร์จได้อย่างรวดเร็วและมีประสิทธิภาพไม่ว่าจะที่บ้าน ที่ทำงาน หรือระหว่างเดินทาง อีกทั้งยังใช้งานร่วมกับอุปกรณ์และสายชาร์จ USB-C ได้หลายประเภท\r\n\r\n-MacBook Air รุ่น 13 นิ้ว หรือ 15 นิ้ว พร้อมชิป M2,\r\n-MacBook Pro รุ่น 13 นิ้ว (ปี 2016 และใหม่กว่า) หรือ MacBook Pro รุ่น 14 นิ้ว ซึ่งเมื่อใช้กับ MacBook Air รุ่นที่มาพร้อมชิป M2\r\n-iPhone 16, 16 Plus, 16 Pro, 16 Pro Max\r\n-AirPods Pro (รุ่นที่ 2) พร้อมเคสชาร์จ MagSafe (USB-C)', 1890, '6.jpg', 5),
(43, 'Apple iPhone 15 128GB Pink', 'iPhone 15 Dynamic Island มาอยู่บน iPhone 15 แล้วทำให้คุณไม่พลาดเรื่องราวต่าง ๆ เสริมด้วยกล้องหลัก 48 MP ถ่ายภาพที่มีความละเอียดสูงได้แบบง่าย ๆ ทั้งยังมีเทเลโฟโต้ 2 เท่าอีกด้วย และเปลี่ยนช่องเชื่อมต่อเป็น USB-C มาในดีไซน์แบบกระจกแต่งสีและอะลูมิเนียมที่ทนทาน\r\n\r\nการเชื่อมต่อด้วยช่องต่อ USB-C\r\nDynamic Island ให้คุณไม่พลาดเรื่องราวไหนๆ\r\nชิป A16 Bionic สุดทรงพลัง ชิปที่เร็วสุดแรงสุด', 26900, '33.jpg', 1),
(44, 'Apple iPhone SE (3rd generation) 64GB Midnight', 'ชิป A15 Bionic ที่เร็วสุดขั้วและ 5G สุดเร็ว การยกระดับครั้งใหญ่ของแบตเตอรี่และกล้องระดับซูเปอร์สตาร์ พร้อมด้วยกระจกที่แข็งแกร่งที่สุดในสมาร์ทโฟนและปุ่มโฮมพร้อม Touch ID ที่ปลอดภัย', 16900, 'se.jpg', 1),
(60, 'Apple iMac 24\" with Retina 4.5K display/M3 chip/8C CPU/8C GPU/8GB/256GB Silver (2023)', 'iMac สุดยอดคอมพิวเตอร์แบบออลอินวัน วันนี้อัดฉีดพลังแรงโดยชิป M3 โดยมาพร้อมจอภาพขนาด 24 นิ้วที่สวยงามน่าทึ่ง ในดีไซน์อันมีเอกลักษณ์ พร้อมด้วยกล้อง ไมโครโฟน และลำโพงระดับท็อปคลาส บอกเลยว่า iMac เหมาะอย่างยิ่งทั้งสำหรับทำงานและเล่นสนุกและมาใน 4 สีสันสดใสที่พร้อมดึงดูดทุกสายตาไม่ว่าจะวางอยู่ในห้องไหน\r\n\r\nจอภาพ Retina 4.5K ขนาด 24 นิ้ว, ตัวจัดเก็บข้อมูลแบบ SSD\r\nกล้อง FaceTime HD 1080p ชุดไมโครโฟน 3 ตัวคุณภาพระดับสตูดิโอ\r\nระบบเสียง 6 ลำโพงที่มาพร้อมระบบเสียงตามตำแหน่ง\r\nมาพร้อม Magic Mouse และ Magic Keyboard\r\nพอร์ต Thunderbolt / USB 4 จำนวน 2 พอร์ต\r\nWi-Fi 6E และ Bluetooth 5.3\r\n', 49000, '9.jpg', 3),
(47, 'Apple MacBook Pro 14 : M3 Max chip 14C CPU/30C GPU/36GB/1TB Silver (2023)', 'MacBook Pro รุ่น 14 นิ้วพุ่งทะยานไปอีกระดับด้วยชิป M3 Max ซึ่งเป็นชิปสุดล้ำระดับพลิกวงการที่พร้อมขับเคลื่อนประสิทธิภาพให้สูงยิ่งขึ้นสำหรับเวิร์กโฟลว์ที่หนักขึ้น พร้อมแบตเตอรี่ที่ใช้งานได้นานสูงสุด 18 ชั่วโมง และจอภาพ Liquid Retina XDR อันสวยงาม วันนี้มาในสีใหม่อย่าง สีดำสเปซแบล็ค', 121900, 'mac2.jpg', 3),
(48, 'Apple MacBook Air 13 : M3 chip 8C CPU/10C GPU/16GB/512GB - Starlight (2024)', 'ชิป M3 ทำให้ MacBook Air รุ่น 13 นิ้ว ที่พกพาง่ายสุดๆ เครื่องนี้มาพร้อมความสามารถอันยอดเยี่ยมขึ้นไปอีก ด้วยแบตเตอรี่ที่ใช้งานได้นานสูงสุด 18 ชั่วโมง คุณจึงพกพาไปที่ไหนก็ได้ แล้วยังรับมือทั้งเรื่องงานและเรื่องเล่นได้อย่างฉับไวด้วย\r\n\r\n-จอภาพ Liquid Retina ขนาด 13.6 นิ้ว\r\n-ชิป M3 น้ำหนักเบาและบาง\r\n-กล้อง FaceTime HD 1080p\r\n-ช่องต่อ Thunderbolt จำนวน 2 พอร์ต\r\n-Wi-Fi 6E, Bluetooth 5.3\r\n-รองรับการต่อจอภาพภายนอก 2 จอ', 53900, 'mac2.jpg', 3),
(54, 'Apple Lightning Digital AV Adapter', 'Lightning Digital AV Adapter ช่วยให้คุณเชื่อมต่อภาพจาก iPad, iPhone หรือ iPod เพื่อให้คุณสามารถดูในทีวีหรือจอภาพได้ รองรับการสะท้อนสิ่งที่แสดงบนหน้าจออุปกรณ์ของคุณ รวมถึงแอพ การนำเสนอ เว็บไซต์ สไลด์โชว์ และอื่นๆ กับทีวี จอภาพ โปรเจ็กเตอร์ ที่มี HDMI รวมถึงจอภาพชนิดอื่นที่สามารถใช้ร่วมกันได้ โดยแสดงผลได้สูงสุดในระดับ HD 1080p', 1990, '4.jpg', 5),
(55, 'Apple Lightning to USB Cable (1 m)', 'Apple Lightning to USB Cable สาย Lightning ความยาว 1 เมตร สำหรับใช้ชาร์จและ Sync โอนถ่ายข้อมูลกับ iPhone, iPad เพื่อชาร์จอุปกรณ์ได้อย่างสะดวกสบายจากปลั๊กที่ติดผนัง สามารถชาร์จอุปกรณ์ iOS หรือจะใช้ประโยชน์จากคุณสมบัติการชาร์จแบบเร็วใน iPhone และ iPad บางรุ่นก็สามารถทำได้', 790, '5.jpg', 5),
(53, 'Apple 240W USB-C Charge Cable (2 m)', 'สายชาร์จความยาว 2 เมตรในดีไซน์แบบถักเส้นนี้มาพร้อมหัวต่อ USB-C ทั้งสองด้าน จึงเหมาะสำหรับการ ชาร์จ ซิงค์ และถ่ายโอนข้อมูลระหว่างอุปกรณ์ USB-C ด้วยกัน อีกทั้งยังรองรับการชาร์จได้สูงสุดถึง 240 วัตต์ และถ่ายโอนข้อมูลด้วยความเร็วระดับ USB 2 หรือใช้สายชาร์จ USB-C คู่กับอะแดปเตอร์แปลงไฟ USB-C ที่ใช้งานร่วมกันได้เพื่อชาร์จอุปกรณ์ได้อย่างสะดวกสบายจากปลั๊กที่ผนัง และยังใช้ประโยชน์จากความสามารถในการชาร์จเร็วได้อีกด้วย อะแดปเตอร์แปลงไฟ USB-C จำหน่ายแยกต่างหาก\r\n\r\nสายชาร์จ Apple USB-C ขนาด 240 วัตต์ (2 ม.)\r\n-การเชื่อมต่อ USB-C\r\n-iPhone 15 Pro\r\n-iPhone 15 Pro Max\r\n-iPhone 15\r\n-iPhone 15 Plus\r\n-Hot itemผ่อน 0%\r\n', 1190, '3.jpg', 5),
(63, 'Apple iPhone 16 128GB Teal', 'iPhone 16 ขอแนะนำตัวควบคุมกล้องให้คุณเข้าถึงเครื่องมือของกล้องได้อย่างรวดเร็ว และพบกับปุ่มแอ็คชั่น แค่กดค้างไว้ก็เรียกใช้สิ่งที่คุณต้องการได้ทันที ไม่ว่าจะเป็นไฟฉาย เสียงบันทึก โหมดปิดเสียง และอีกมากมาย\r\n\r\nชิป A18 ที่ฉลาดสุดล้ำ\r\nจอภาพ Super Retina XDR ขนาด 6.1 นิ้ว\r\nกล้อง Fusion 48MP ถ่ายภาพความละเอียดสูง และซูมเข้าด้วยเทเลโฟโต้ 2 เท่า', 29900, '11.jpg', 1),
(62, 'Apple MacBook Air 13 : M2 chip 8C CPU/10C GPU/8GB/512GB - Starlight (2022)', 'MacBook Air ได้รับการออกแบบใหม่โดยรวมเอาประสิทธิภาพอันเหนือชั้นเข้ากับแบตเตอรี่ที่ใช้งานได้นานสูงสุด 18 ชั่วโมง ในตัวเครื่องอะลูมิเนียมบางเฉียบ และอัดฉีดพลังแรงโดยชิป M2 เจเนอเรชั่นถัดไป\r\n\r\nจอภาพ Liquid Retina ขนาด 13.6 นิ้ว\r\nชิป M2 พร้อมประสิทธิภาพด้าน CPU\r\nกล้อง FaceTime HD ระดับ 1080p\r\nการเชื่อมต่อแบบไร้สาย Wi-Fi 6 ที่รวดเร็ว\r\nดีไซน์แบบไม่มีพัดลมเพื่อการทำงานที่เงียบสนิท\r\nพอร์ตชาร์จ MagSafe, พอร์ต Thunderbolt จำนวน 2 พอร์ต\r\nใช้งานได้ตลอดทั้งวันด้วยแบตเตอรี่ที่ใช้งานได้นานสูงสุด 18 ชั่วโมง', 40900, '10.jpg', 3),
(64, 'Apple iPhone 15 Pro 128GB White Titanium', 'iPhone 15 Pro เปลี่ยนวัสดุตัวเครื่องเป็นไทเทเนียมที่แข็งแกร่งและมีน้ำหนักเบาเกรดเดียวกับที่ใช้ในอุตสาหกรรมอวกาศ พร้อมกล้องระดับโปรที่อเนกประสงค์ยิ่งกว่าเดิม ถ่ายภาพระยะใกล้ได้คมชัดจากที่ที่ไกลกว่าเดิมด้วยกล้องเทเลโฟโต้ 3 เท่า ให้คุณได้ภาพจากระยะที่ชอบในมุมที่ใช่\r\n\r\nการเชื่อมต่อระดับโปร ด้วยช่องต่อ USB-C\r\nชิป A17 Pro GPU ระดับโปรให้เล่นเกมมือถือรู้สึกเต็มอิ่มสมจริงยิ่งขึ้น\r\nปุ่มแอ็คชั่นที่ปรับแต่งได้ตามต้องการทั้ง ปิดเสียง กล้อง บันทึกเสียง และอีกมากมาย', 35900, '12.jpg', 1),
(65, 'Apple iPhone 13 128GB Pink', 'iPhone 13 ระบบกล้องคู่ที่ล้ำหน้าที่สุดเท่าที่เคยมีมาบน iPhone พร้อมชิป A15 Bionic ที่เร็วสุดขั้ว, แบตเตอรี่ที่ใช้งานได้นานขึ้น แบบก้าวกระโดดครั้งใหญ่, ดีไซน์ที่ทนทาน, 5G ที่เร็วสุดแรงและจอภาพ Super Retina XDR ที่สว่างยิ่งขึ้น\r\n\r\nจอภาพ Super Retina XDR ขนาด 6.1 นิ้ว\r\nโหมดภาพยนตร์เพิ่มมิติความชัดตื้นและสลับจุดโฟกัสในวิดีโอของคุณโดยอัตโนมัติ\r\nระบบกล้องคู่สุดล้ำที่ประกอบด้วยกล้องไวด์และอัลตร้าไวด์ ความละเอียด 12MP\r\nกล้องหน้า TrueDepth ความละเอียด 12MP\r\nชิป A15 Bionic เพื่อประสิทธิภาพที่เร็วสุดขั้ว\r\nเล่นวิดีโอ นานสูงสุด 19 ชั่วโมง', 18800, '14.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `pt_id` int(3) NOT NULL,
  `pt_name` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`pt_id`, `pt_name`) VALUES
(1, 'โทรศัพท์มือถือ'),
(2, 'Ipad'),
(3, 'Mac'),
(4, 'หูฟัง'),
(5, 'สายชาร์จ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Age` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Username`, `Email`, `Age`, `password`, `user_type`) VALUES
(1, 'ass123', 'w@w.com', 15, '1234', ''),
(2, 'a1@a.com', 'a1@a.com', 155, 'a1@a.com', 'user'),
(3, 'a@a.com', 'a@a.com', 11, 'a@a.com', 'admin'),
(4, 'aaaa', 's@s.com', 15, 's@s.com', 'admin'),
(5, 'd@d.com', 'd@d.com', 111, 'd@d.com', ''),
(6, 'ชรัณ ภูวนัยภักดี', 'sandwich', 20, '12345678', 'admin'),
(7, 'test', 'asd@ad.com', 40, '1234', ''),
(8, 'moo', 'sr@sr.com', 25, '1236', ''),
(9, 'sand', 'sand@gmail.com', 20, '12345678', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`od_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`pt_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `a_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(7) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `od_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
