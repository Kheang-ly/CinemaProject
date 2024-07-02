/*
 Navicat Premium Data Transfer

 Source Server         : Kheang
 Source Server Type    : MySQL
 Source Server Version : 80036
 Source Host           : 192.168.152.135:3306
 Source Schema         : Cinema

 Target Server Type    : MySQL
 Target Server Version : 80036
 File Encoding         : 65001

 Date: 17/06/2024 20:40:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Booking
-- ----------------------------
DROP TABLE IF EXISTS `Booking`;
CREATE TABLE `Booking`  (
  `bookID` int NOT NULL AUTO_INCREMENT,
  `bookDate` date NOT NULL,
  `bTime` time NOT NULL,
  `telephone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Seller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `bStatus` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`bookID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Booking
-- ----------------------------

-- ----------------------------
-- Table structure for BookingDetail
-- ----------------------------
DROP TABLE IF EXISTS `BookingDetail`;
CREATE TABLE `BookingDetail`  (
  `bookID` int NOT NULL,
  `RoomiD` int NOT NULL,
  `Price` decimal(10, 0) NOT NULL,
  PRIMARY KEY (`bookID`, `RoomiD`) USING BTREE,
  INDEX `BookingDetailFK_Room`(`RoomiD` ASC) USING BTREE,
  CONSTRAINT `BookingDetailFK_Booking` FOREIGN KEY (`bookID`) REFERENCES `Booking` (`bookID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `BookingDetailFK_Room` FOREIGN KEY (`RoomiD`) REFERENCES `tbRooms` (`Roomid`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of BookingDetail
-- ----------------------------

-- ----------------------------
-- Table structure for Order
-- ----------------------------
DROP TABLE IF EXISTS `Order`;
CREATE TABLE `Order`  (
  `OrdID` bigint NOT NULL AUTO_INCREMENT,
  `OrdDate` date NOT NULL,
  `OrdTime` time NOT NULL,
  `Discount` float(10, 2) NULL DEFAULT NULL,
  `Seller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`OrdID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Order
-- ----------------------------

-- ----------------------------
-- Table structure for OrderDetail
-- ----------------------------
DROP TABLE IF EXISTS `OrderDetail`;
CREATE TABLE `OrderDetail`  (
  `OrdID` bigint NOT NULL,
  `RoomID` int NOT NULL,
  `Price` double NOT NULL,
  PRIMARY KEY (`OrdID`, `RoomID`) USING BTREE,
  INDEX `OrdtFK_Rooms`(`RoomID` ASC) USING BTREE,
  CONSTRAINT `OrdtFK_Order` FOREIGN KEY (`OrdID`) REFERENCES `Order` (`OrdID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `OrdtFK_Rooms` FOREIGN KEY (`RoomID`) REFERENCES `tbRooms` (`Roomid`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of OrderDetail
-- ----------------------------

-- ----------------------------
-- Table structure for tbRooms
-- ----------------------------
DROP TABLE IF EXISTS `tbRooms`;
CREATE TABLE `tbRooms`  (
  `Roomid` int NOT NULL AUTO_INCREMENT,
  `Seat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Price` decimal(10, 2) NOT NULL,
  `Status` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`Roomid`) USING BTREE,
  INDEX `index_seat`(`Seat` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1253 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbRooms
-- ----------------------------
INSERT INTO `tbRooms` VALUES (654, 'A-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (655, 'A-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (656, 'A-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (657, 'A-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (658, 'A-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (659, 'A-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (660, 'A-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (661, 'A-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (662, 'A-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (663, 'A-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (664, 'A-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (665, 'A-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (666, 'A-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (667, 'A-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (668, 'A-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (669, 'A-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (670, 'A-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (671, 'A-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (672, 'A-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (673, 'A-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (674, 'A-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (675, 'A-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (676, 'A-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (677, 'A-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (678, 'A-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (679, 'A-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (680, 'A-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (681, 'A-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (682, 'A-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (683, 'A-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (684, 'B-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (685, 'B-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (686, 'B-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (687, 'B-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (688, 'B-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (689, 'B-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (690, 'B-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (691, 'B-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (692, 'B-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (693, 'B-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (694, 'B-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (695, 'B-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (696, 'B-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (697, 'B-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (698, 'B-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (699, 'B-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (700, 'B-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (701, 'B-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (702, 'B-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (703, 'B-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (704, 'B-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (705, 'B-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (706, 'B-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (707, 'B-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (708, 'B-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (709, 'B-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (710, 'B-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (711, 'B-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (712, 'B-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (713, 'B-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (714, 'C-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (715, 'C-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (716, 'C-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (717, 'C-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (718, 'C-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (719, 'C-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (720, 'C-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (721, 'C-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (722, 'C-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (723, 'C-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (724, 'C-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (725, 'C-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (726, 'C-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (727, 'C-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (728, 'C-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (729, 'C-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (730, 'C-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (731, 'C-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (732, 'C-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (733, 'C-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (734, 'C-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (735, 'C-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (736, 'C-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (737, 'C-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (738, 'C-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (739, 'C-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (740, 'C-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (741, 'C-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (742, 'C-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (743, 'C-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (744, 'D-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (745, 'D-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (746, 'D-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (747, 'D-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (748, 'D-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (749, 'D-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (750, 'D-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (751, 'D-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (752, 'D-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (753, 'D-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (754, 'D-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (755, 'D-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (756, 'D-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (757, 'D-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (758, 'D-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (759, 'D-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (760, 'D-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (761, 'D-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (762, 'D-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (763, 'D-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (764, 'D-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (765, 'D-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (766, 'D-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (767, 'D-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (768, 'D-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (769, 'D-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (770, 'D-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (771, 'D-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (772, 'D-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (773, 'D-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (774, 'E-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (775, 'E-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (776, 'E-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (777, 'E-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (778, 'E-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (779, 'E-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (780, 'E-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (781, 'E-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (782, 'E-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (783, 'E-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (784, 'E-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (785, 'E-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (786, 'E-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (787, 'E-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (788, 'E-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (789, 'E-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (790, 'E-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (791, 'E-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (792, 'E-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (793, 'E-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (794, 'E-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (795, 'E-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (796, 'E-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (797, 'E-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (798, 'E-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (799, 'E-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (800, 'E-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (801, 'E-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (802, 'E-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (803, 'E-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (804, 'F-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (805, 'F-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (806, 'F-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (807, 'F-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (808, 'F-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (809, 'F-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (810, 'F-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (811, 'F-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (812, 'F-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (813, 'F-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (814, 'F-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (815, 'F-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (816, 'F-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (817, 'F-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (818, 'F-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (819, 'F-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (820, 'F-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (821, 'F-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (822, 'F-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (823, 'F-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (824, 'F-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (825, 'F-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (826, 'F-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (827, 'F-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (828, 'F-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (829, 'F-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (830, 'F-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (831, 'F-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (832, 'F-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (833, 'F-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (834, 'G-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (835, 'G-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (836, 'G-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (837, 'G-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (838, 'G-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (839, 'G-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (840, 'G-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (841, 'G-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (842, 'G-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (843, 'G-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (844, 'G-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (845, 'G-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (846, 'G-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (847, 'G-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (848, 'G-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (849, 'G-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (850, 'G-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (851, 'G-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (852, 'G-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (853, 'G-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (854, 'G-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (855, 'G-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (856, 'G-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (857, 'G-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (858, 'G-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (859, 'G-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (860, 'G-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (861, 'G-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (862, 'G-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (863, 'G-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (864, 'H-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (865, 'H-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (866, 'H-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (867, 'H-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (868, 'H-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (869, 'H-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (870, 'H-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (871, 'H-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (872, 'H-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (873, 'H-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (874, 'H-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (875, 'H-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (876, 'H-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (877, 'H-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (878, 'H-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (879, 'H-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (880, 'H-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (881, 'H-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (882, 'H-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (883, 'H-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (884, 'H-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (885, 'H-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (886, 'H-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (887, 'H-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (888, 'H-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (889, 'H-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (890, 'H-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (891, 'H-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (892, 'H-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (893, 'H-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (894, 'I-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (895, 'I-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (896, 'I-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (897, 'I-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (898, 'I-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (899, 'I-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (900, 'I-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (901, 'I-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (902, 'I-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (903, 'I-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (904, 'I-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (905, 'I-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (906, 'I-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (907, 'I-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (908, 'I-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (909, 'I-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (910, 'I-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (911, 'I-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (912, 'I-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (913, 'I-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (914, 'I-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (915, 'I-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (916, 'I-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (917, 'I-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (918, 'I-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (919, 'I-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (920, 'I-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (921, 'I-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (922, 'I-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (923, 'I-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (924, 'J-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (925, 'J-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (926, 'J-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (927, 'J-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (928, 'J-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (929, 'J-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (930, 'J-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (931, 'J-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (932, 'J-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (933, 'J-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (934, 'J-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (935, 'J-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (936, 'J-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (937, 'J-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (938, 'J-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (939, 'J-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (940, 'J-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (941, 'J-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (942, 'J-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (943, 'J-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (944, 'J-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (945, 'J-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (946, 'J-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (947, 'J-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (948, 'J-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (949, 'J-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (950, 'J-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (951, 'J-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (952, 'J-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (953, 'J-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (954, 'K-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (955, 'K-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (956, 'K-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (957, 'K-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (958, 'K-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (959, 'K-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (960, 'K-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (961, 'K-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (962, 'K-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (963, 'K-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (964, 'K-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (965, 'K-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (966, 'K-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (967, 'K-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (968, 'K-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (969, 'K-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (970, 'K-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (971, 'K-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (972, 'K-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (973, 'K-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (974, 'K-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (975, 'K-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (976, 'K-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (977, 'K-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (978, 'K-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (979, 'K-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (980, 'K-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (981, 'K-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (982, 'K-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (983, 'K-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (984, 'L-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (985, 'L-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (986, 'L-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (987, 'L-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (988, 'L-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (989, 'L-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (990, 'L-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (991, 'L-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (992, 'L-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (993, 'L-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (994, 'L-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (995, 'L-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (996, 'L-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (997, 'L-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (998, 'L-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (999, 'L-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1000, 'L-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1001, 'L-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1002, 'L-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1003, 'L-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1004, 'L-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1005, 'L-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1006, 'L-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1007, 'L-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1008, 'L-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1009, 'L-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1010, 'L-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1011, 'L-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1012, 'L-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1013, 'L-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1014, 'M-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1015, 'M-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1016, 'M-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1017, 'M-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1018, 'M-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1019, 'M-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1020, 'M-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1021, 'M-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1022, 'M-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1023, 'M-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1024, 'M-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1025, 'M-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1026, 'M-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1027, 'M-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1028, 'M-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1029, 'M-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1030, 'M-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1031, 'M-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1032, 'M-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1033, 'M-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1034, 'M-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1035, 'M-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1036, 'M-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1037, 'M-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1038, 'M-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1039, 'M-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1040, 'M-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1041, 'M-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1042, 'M-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1043, 'M-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1044, 'N-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1045, 'N-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1046, 'N-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1047, 'N-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1048, 'N-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1049, 'N-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1050, 'N-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1051, 'N-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1052, 'N-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1053, 'N-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1054, 'N-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1055, 'N-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1056, 'N-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1057, 'N-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1058, 'N-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1059, 'N-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1060, 'N-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1061, 'N-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1062, 'N-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1063, 'N-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1064, 'N-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1065, 'N-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1066, 'N-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1067, 'N-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1068, 'N-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1069, 'N-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1070, 'N-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1071, 'N-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1072, 'N-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1073, 'N-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1074, 'O-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1075, 'O-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1076, 'O-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1077, 'O-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1078, 'O-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1079, 'O-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1080, 'O-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1081, 'O-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1082, 'O-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1083, 'O-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1084, 'O-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1085, 'O-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1086, 'O-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1087, 'O-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1088, 'O-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1089, 'O-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1090, 'O-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1091, 'O-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1092, 'O-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1093, 'O-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1094, 'O-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1095, 'O-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1096, 'O-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1097, 'O-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1098, 'O-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1099, 'O-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1100, 'O-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1101, 'O-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1102, 'O-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1103, 'O-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1104, 'P-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1105, 'P-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1106, 'P-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1107, 'P-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1108, 'P-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1109, 'P-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1110, 'P-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1111, 'P-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1112, 'P-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1113, 'P-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1114, 'P-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1115, 'P-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1116, 'P-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1117, 'P-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1118, 'P-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1119, 'P-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1120, 'P-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1121, 'P-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1122, 'P-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1123, 'P-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1124, 'P-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1125, 'P-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1126, 'P-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1127, 'P-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1128, 'P-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1129, 'P-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1130, 'P-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1131, 'P-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1132, 'P-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1133, 'P-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1134, 'Q-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1135, 'Q-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1136, 'Q-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1137, 'Q-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1138, 'Q-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1139, 'Q-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1140, 'Q-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1141, 'Q-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1142, 'Q-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1143, 'Q-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1144, 'Q-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1145, 'Q-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1146, 'Q-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1147, 'Q-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1148, 'Q-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1149, 'Q-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1150, 'Q-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1151, 'Q-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1152, 'Q-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1153, 'Q-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1154, 'Q-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1155, 'Q-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1156, 'Q-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1157, 'Q-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1158, 'Q-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1159, 'Q-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1160, 'Q-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1161, 'Q-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1162, 'Q-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1163, 'Q-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1164, 'R-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1165, 'R-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1166, 'R-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1167, 'R-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1168, 'R-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1169, 'R-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1170, 'R-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1171, 'R-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1172, 'R-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1173, 'R-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1174, 'R-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1175, 'R-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1176, 'R-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1177, 'R-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1178, 'R-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1179, 'R-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1180, 'R-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1181, 'R-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1182, 'R-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1183, 'R-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1184, 'R-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1185, 'R-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1186, 'R-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1187, 'R-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1188, 'R-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1189, 'R-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1190, 'R-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1191, 'R-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1192, 'R-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1193, 'R-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1194, 'S-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1195, 'S-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1196, 'S-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1197, 'S-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1198, 'S-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1199, 'S-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1200, 'S-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1201, 'S-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1202, 'S-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1203, 'S-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1204, 'S-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1205, 'S-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1206, 'S-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1207, 'S-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1208, 'S-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1209, 'S-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1210, 'S-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1211, 'S-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1212, 'S-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1213, 'S-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1214, 'S-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1215, 'S-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1216, 'S-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1217, 'S-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1218, 'S-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1219, 'S-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1220, 'S-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1221, 'S-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1222, 'S-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1223, 'S-30', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1224, 'T-1', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1225, 'T-2', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1226, 'T-3', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1227, 'T-4', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1228, 'T-5', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1229, 'T-6', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1230, 'T-7', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1231, 'T-8', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1232, 'T-9', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1233, 'T-10', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1234, 'T-11', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1235, 'T-12', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1236, 'T-13', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1237, 'T-14', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1238, 'T-15', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1239, 'T-16', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1240, 'T-17', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1241, 'T-18', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1242, 'T-19', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1243, 'T-20', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1244, 'T-21', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1245, 'T-22', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1246, 'T-23', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1247, 'T-24', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1248, 'T-25', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1249, 'T-26', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1250, 'T-27', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1251, 'T-28', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1252, 'T-29', 5.00, 0);
INSERT INTO `tbRooms` VALUES (1253, 'T-30', 5.00, 0);

SET FOREIGN_KEY_CHECKS = 1;
