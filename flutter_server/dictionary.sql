/*
 Navicat Premium Data Transfer

 Source Server         : localhost_mysql
 Source Server Type    : MySQL
 Source Server Version : 100129
 Source Host           : localhost:3306
 Source Schema         : dictionary

 Target Server Type    : MySQL
 Target Server Version : 100129
 File Encoding         : 65001

 Date: 02/06/2020 11:46:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `user_Id` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `body` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (1, 1, 'informasi', 'keseluruhan makna yang menunjang amanat yang terlihat dalam bagian-bagian amanat itu');
INSERT INTO `dictionary` VALUES (1, 2, 'program', 'urutan perintah yang diberikan pada komputer untuk membuat fungsi atau tugas tertentu');
INSERT INTO `dictionary` VALUES (1, 3, 'bahasa', 'sistem kata atau simbol yang memungkinkan untuk berkomunikasi dengan komputer, terutama untuk memasukkan instruksi-instruksi komputer melalui kata-kata yang mudah dipahami, dan kemudian diterjemahkan ke dalam kode mesin');
INSERT INTO `dictionary` VALUES (1, 4, 'sulit', 'sukar sekali; susah (diselesaikan, dikerjakan, dan sebagainya): pekerjaan yang -- diselesaikan; rasanya -- baginya untuk memberitahukan hal itu kepadamu');
INSERT INTO `dictionary` VALUES (1, 5, 'belajar', 'berubah tingkah laku atau tanggapan yang disebabkan oleh pengalaman');

SET FOREIGN_KEY_CHECKS = 1;
