-- MariaDB dump 10.19  Distrib 10.11.4-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: camsrv
-- ------------------------------------------------------
-- Server version	10.11.4-MariaDB-1~deb12u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls` (
  `callId` int(11) NOT NULL AUTO_INCREMENT,
  `cguniq` varchar(6) NOT NULL,
  `cduniq` varchar(6) NOT NULL,
  `sdpOffer` text DEFAULT NULL,
  `sdpAnswer` text DEFAULT NULL,
  `parentCallId` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT 0,
  `period` int(11) DEFAULT 0,
  PRIMARY KEY (`callId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
INSERT INTO `calls` VALUES
(24,'6ddf9','a58d7','{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 6758666494019603338 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0 1\\r\\na=extmap-allow-mixed\\r\\na=msid-semantic: WMS 7925fb4a-9978-4d80-98e1-42f18f1d13df\\r\\nm=audio 9 UDP/TLS/RTP/SAVPF 111 63 9 0 8 13 110 126\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:PO8u\\r\\na=ice-pwd:7lTGE0bt87Ra6zBkJUY8Zv7R\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 AD:1A:7C:A6:1E:C7:36:CB:74:44:94:E0:E3:81:A2:4A:B2:82:63:32:D4:D2:A8:2C:D1:02:0E:D8:EF:4E:D6:79\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=extmap:1 urn:ietf:params:rtp-hdrext:ssrc-audio-level\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=sendrecv\\r\\na=msid:7925fb4a-9978-4d80-98e1-42f18f1d13df ff259156-0b73-47ce-b1a9-71377fcd952c\\r\\na=rtcp-mux\\r\\na=rtpmap:111 opus/48000/2\\r\\na=rtcp-fb:111 transport-cc\\r\\na=fmtp:111 minptime=10;useinbandfec=1\\r\\na=rtpmap:63 red/48000/2\\r\\na=fmtp:63 111/111\\r\\na=rtpmap:9 G722/8000\\r\\na=rtpmap:0 PCMU/8000\\r\\na=rtpmap:8 PCMA/8000\\r\\na=rtpmap:13 CN/8000\\r\\na=rtpmap:110 telephone-event/48000\\r\\na=rtpmap:126 telephone-event/8000\\r\\na=ssrc:1854050717 cname:bJBt0nEhbThlrgkf\\r\\na=ssrc:1854050717 msid:7925fb4a-9978-4d80-98e1-42f18f1d13df ff259156-0b73-47ce-b1a9-71377fcd952c\\r\\nm=video 9 UDP/TLS/RTP/SAVPF 96 97 102 103 104 105 106 107 108 109 127 125 39 40 45 46 98 99 100 101 112 113 116 117 118\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:PO8u\\r\\na=ice-pwd:7lTGE0bt87Ra6zBkJUY8Zv7R\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 AD:1A:7C:A6:1E:C7:36:CB:74:44:94:E0:E3:81:A2:4A:B2:82:63:32:D4:D2:A8:2C:D1:02:0E:D8:EF:4E:D6:79\\r\\na=setup:actpass\\r\\na=mid:1\\r\\na=extmap:14 urn:ietf:params:rtp-hdrext:toffset\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:13 urn:3gpp:video-orientation\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:5 http://www.webrtc.org/experiments/rtp-hdrext/playout-delay\\r\\na=extmap:6 http://www.webrtc.org/experiments/rtp-hdrext/video-content-type\\r\\na=extmap:7 http://www.webrtc.org/experiments/rtp-hdrext/video-timing\\r\\na=extmap:8 http://www.webrtc.org/experiments/rtp-hdrext/color-space\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=extmap:10 urn:ietf:params:rtp-hdrext:sdes:rtp-stream-id\\r\\na=extmap:11 urn:ietf:params:rtp-hdrext:sdes:repaired-rtp-stream-id\\r\\na=sendrecv\\r\\na=msid:7925fb4a-9978-4d80-98e1-42f18f1d13df 68ab0720-8e41-43d0-aec9-77a901d5edcb\\r\\na=rtcp-mux\\r\\na=rtcp-rsize\\r\\na=rtpmap:96 VP8/90000\\r\\na=rtcp-fb:96 goog-remb\\r\\na=rtcp-fb:96 transport-cc\\r\\na=rtcp-fb:96 ccm fir\\r\\na=rtcp-fb:96 nack\\r\\na=rtcp-fb:96 nack pli\\r\\na=rtpmap:97 rtx/90000\\r\\na=fmtp:97 apt=96\\r\\na=rtpmap:102 H264/90000\\r\\na=rtcp-fb:102 goog-remb\\r\\na=rtcp-fb:102 transport-cc\\r\\na=rtcp-fb:102 ccm fir\\r\\na=rtcp-fb:102 nack\\r\\na=rtcp-fb:102 nack pli\\r\\na=fmtp:102 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=42001f\\r\\na=rtpmap:103 rtx/90000\\r\\na=fmtp:103 apt=102\\r\\na=rtpmap:104 H264/90000\\r\\na=rtcp-fb:104 goog-remb\\r\\na=rtcp-fb:104 transport-cc\\r\\na=rtcp-fb:104 ccm fir\\r\\na=rtcp-fb:104 nack\\r\\na=rtcp-fb:104 nack pli\\r\\na=fmtp:104 level-asymmetry-allowed=1;packetization-mode=0;profile-level-id=42001f\\r\\na=rtpmap:105 rtx/90000\\r\\na=fmtp:105 apt=104\\r\\na=rtpmap:106 H264/90000\\r\\na=rtcp-fb:106 goog-remb\\r\\na=rtcp-fb:106 transport-cc\\r\\na=rtcp-fb:106 ccm fir\\r\\na=rtcp-fb:106 nack\\r\\na=rtcp-fb:106 nack pli\\r\\na=fmtp:106 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=42e01f\\r\\na=rtpmap:107 rtx/90000\\r\\na=fmtp:107 apt=106\\r\\na=rtpmap:108 H264/90000\\r\\na=rtcp-fb:108 goog-remb\\r\\na=rtcp-fb:108 transport-cc\\r\\na=rtcp-fb:108 ccm fir\\r\\na=rtcp-fb:108 nack\\r\\na=rtcp-fb:108 nack pli\\r\\na=fmtp:108 level-asymmetry-allowed=1;packetization-mode=0;profile-level-id=42e01f\\r\\na=rtpmap:109 rtx/90000\\r\\na=fmtp:109 apt=108\\r\\na=rtpmap:127 H264/90000\\r\\na=rtcp-fb:127 goog-remb\\r\\na=rtcp-fb:127 transport-cc\\r\\na=rtcp-fb:127 ccm fir\\r\\na=rtcp-fb:127 nack\\r\\na=rtcp-fb:127 nack pli\\r\\na=fmtp:127 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=4d001f\\r\\na=rtpmap:125 rtx/90000\\r\\na=fmtp:125 apt=127\\r\\na=rtpmap:39 H264/90000\\r\\na=rtcp-fb:39 goog-remb\\r\\na=rtcp-fb:39 transport-cc\\r\\na=rtcp-fb:39 ccm fir\\r\\na=rtcp-fb:39 nack\\r\\na=rtcp-fb:39 nack pli\\r\\na=fmtp:39 level-asymmetry-allowed=1;packetization-mode=0;profile-level-id=4d001f\\r\\na=rtpmap:40 rtx/90000\\r\\na=fmtp:40 apt=39\\r\\na=rtpmap:45 AV1/90000\\r\\na=rtcp-fb:45 goog-remb\\r\\na=rtcp-fb:45 transport-cc\\r\\na=rtcp-fb:45 ccm fir\\r\\na=rtcp-fb:45 nack\\r\\na=rtcp-fb:45 nack pli\\r\\na=rtpmap:46 rtx/90000\\r\\na=fmtp:46 apt=45\\r\\na=rtpmap:98 VP9/90000\\r\\na=rtcp-fb:98 goog-remb\\r\\na=rtcp-fb:98 transport-cc\\r\\na=rtcp-fb:98 ccm fir\\r\\na=rtcp-fb:98 nack\\r\\na=rtcp-fb:98 nack pli\\r\\na=fmtp:98 profile-id=0\\r\\na=rtpmap:99 rtx/90000\\r\\na=fmtp:99 apt=98\\r\\na=rtpmap:100 VP9/90000\\r\\na=rtcp-fb:100 goog-remb\\r\\na=rtcp-fb:100 transport-cc\\r\\na=rtcp-fb:100 ccm fir\\r\\na=rtcp-fb:100 nack\\r\\na=rtcp-fb:100 nack pli\\r\\na=fmtp:100 profile-id=2\\r\\na=rtpmap:101 rtx/90000\\r\\na=fmtp:101 apt=100\\r\\na=rtpmap:112 H264/90000\\r\\na=rtcp-fb:112 goog-remb\\r\\na=rtcp-fb:112 transport-cc\\r\\na=rtcp-fb:112 ccm fir\\r\\na=rtcp-fb:112 nack\\r\\na=rtcp-fb:112 nack pli\\r\\na=fmtp:112 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=64001f\\r\\na=rtpmap:113 rtx/90000\\r\\na=fmtp:113 apt=112\\r\\na=rtpmap:116 red/90000\\r\\na=rtpmap:117 rtx/90000\\r\\na=fmtp:117 apt=116\\r\\na=rtpmap:118 ulpfec/90000\\r\\na=ssrc-group:FID 1835160773 3678310540\\r\\na=ssrc:1835160773 cname:bJBt0nEhbThlrgkf\\r\\na=ssrc:1835160773 msid:7925fb4a-9978-4d80-98e1-42f18f1d13df 68ab0720-8e41-43d0-aec9-77a901d5edcb\\r\\na=ssrc:3678310540 cname:bJBt0nEhbThlrgkf\\r\\na=ssrc:3678310540 msid:7925fb4a-9978-4d80-98e1-42f18f1d13df 68ab0720-8e41-43d0-aec9-77a901d5edcb\\r\\n\"}','{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 3274254524429545474 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0 1\\r\\na=extmap-allow-mixed\\r\\na=msid-semantic: WMS 2ed08676-e122-47ae-993a-4f148c2e63c7\\r\\nm=audio 9 UDP/TLS/RTP/SAVPF 111 63 9 0 8 13 110 126\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:GU6X\\r\\na=ice-pwd:1CKFlLTaxFSU4zb9mmScIRTw\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 2C:22:8D:67:D9:A9:63:74:D1:93:35:11:42:42:EB:5A:20:53:3A:1F:81:71:92:87:B2:E3:3F:58:B6:37:2B:A3\\r\\na=setup:active\\r\\na=mid:0\\r\\na=extmap:1 urn:ietf:params:rtp-hdrext:ssrc-audio-level\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=sendrecv\\r\\na=msid:2ed08676-e122-47ae-993a-4f148c2e63c7 b1568478-9276-445b-bb7e-2d0cea043eac\\r\\na=rtcp-mux\\r\\na=rtpmap:111 opus/48000/2\\r\\na=rtcp-fb:111 transport-cc\\r\\na=fmtp:111 minptime=10;useinbandfec=1\\r\\na=rtpmap:63 red/48000/2\\r\\na=fmtp:63 111/111\\r\\na=rtpmap:9 G722/8000\\r\\na=rtpmap:0 PCMU/8000\\r\\na=rtpmap:8 PCMA/8000\\r\\na=rtpmap:13 CN/8000\\r\\na=rtpmap:110 telephone-event/48000\\r\\na=rtpmap:126 telephone-event/8000\\r\\na=ssrc:2971309079 cname:nccwm4nVmVXuZR9l\\r\\nm=video 9 UDP/TLS/RTP/SAVPF 96 97 106 107 108 109 98 99 116 117 118\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:GU6X\\r\\na=ice-pwd:1CKFlLTaxFSU4zb9mmScIRTw\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 2C:22:8D:67:D9:A9:63:74:D1:93:35:11:42:42:EB:5A:20:53:3A:1F:81:71:92:87:B2:E3:3F:58:B6:37:2B:A3\\r\\na=setup:active\\r\\na=mid:1\\r\\na=extmap:14 urn:ietf:params:rtp-hdrext:toffset\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:13 urn:3gpp:video-orientation\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:5 http://www.webrtc.org/experiments/rtp-hdrext/playout-delay\\r\\na=extmap:6 http://www.webrtc.org/experiments/rtp-hdrext/video-content-type\\r\\na=extmap:7 http://www.webrtc.org/experiments/rtp-hdrext/video-timing\\r\\na=extmap:8 http://www.webrtc.org/experiments/rtp-hdrext/color-space\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=extmap:10 urn:ietf:params:rtp-hdrext:sdes:rtp-stream-id\\r\\na=extmap:11 urn:ietf:params:rtp-hdrext:sdes:repaired-rtp-stream-id\\r\\na=sendrecv\\r\\na=msid:2ed08676-e122-47ae-993a-4f148c2e63c7 cb9f183e-96aa-4f98-a218-f9fcf2ed7c3a\\r\\na=rtcp-mux\\r\\na=rtcp-rsize\\r\\na=rtpmap:96 VP8/90000\\r\\na=rtcp-fb:96 goog-remb\\r\\na=rtcp-fb:96 transport-cc\\r\\na=rtcp-fb:96 ccm fir\\r\\na=rtcp-fb:96 nack\\r\\na=rtcp-fb:96 nack pli\\r\\na=rtpmap:97 rtx/90000\\r\\na=fmtp:97 apt=96\\r\\na=rtpmap:106 H264/90000\\r\\na=rtcp-fb:106 goog-remb\\r\\na=rtcp-fb:106 transport-cc\\r\\na=rtcp-fb:106 ccm fir\\r\\na=rtcp-fb:106 nack\\r\\na=rtcp-fb:106 nack pli\\r\\na=fmtp:106 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=42e01f\\r\\na=rtpmap:107 rtx/90000\\r\\na=fmtp:107 apt=106\\r\\na=rtpmap:108 H264/90000\\r\\na=rtcp-fb:108 goog-remb\\r\\na=rtcp-fb:108 transport-cc\\r\\na=rtcp-fb:108 ccm fir\\r\\na=rtcp-fb:108 nack\\r\\na=rtcp-fb:108 nack pli\\r\\na=fmtp:108 level-asymmetry-allowed=1;packetization-mode=0;profile-level-id=42e01f\\r\\na=rtpmap:109 rtx/90000\\r\\na=fmtp:109 apt=108\\r\\na=rtpmap:98 VP9/90000\\r\\na=rtcp-fb:98 goog-remb\\r\\na=rtcp-fb:98 transport-cc\\r\\na=rtcp-fb:98 ccm fir\\r\\na=rtcp-fb:98 nack\\r\\na=rtcp-fb:98 nack pli\\r\\na=fmtp:98 profile-id=0\\r\\na=rtpmap:99 rtx/90000\\r\\na=fmtp:99 apt=98\\r\\na=rtpmap:116 red/90000\\r\\na=rtpmap:117 rtx/90000\\r\\na=fmtp:117 apt=116\\r\\na=rtpmap:118 ulpfec/90000\\r\\na=ssrc-group:FID 41455932 4232928856\\r\\na=ssrc:41455932 cname:nccwm4nVmVXuZR9l\\r\\na=ssrc:4232928856 cname:nccwm4nVmVXuZR9l\\r\\n\"}',NULL,0,0);
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uniqs`
--

DROP TABLE IF EXISTS `uniqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uniqs` (
  `uniq_idx` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `uniq` varchar(6) NOT NULL,
  `sessionStr` varchar(36) NOT NULL,
  `lastAckTime` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`uniq_idx`),
  UNIQUE KEY `uniq` (`uniq`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uniqs`
--

LOCK TABLES `uniqs` WRITE;
/*!40000 ALTER TABLE `uniqs` DISABLE KEYS */;
INSERT INTO `uniqs` VALUES
(20,9,'74563','89kqjac929k9nkbv7eibh3n8767p76nq',0),
(33,5,'a58d7','tnh030ng9l98hf2ohksec4cjc2ai53pp',0),
(34,6,'6ddf9','hrnv9bibmhtj647t0jacdi35snl20blv',0),
(35,4,'81d6f','fv69bc0enaoegu2g4mimcl4j48nihsle',1701528406);
/*!40000 ALTER TABLE `uniqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userGroups`
--

DROP TABLE IF EXISTS `userGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userGroups` (
  `ugroupId` int(11) NOT NULL AUTO_INCREMENT,
  `ugroupName` varchar(16) NOT NULL,
  PRIMARY KEY (`ugroupId`),
  UNIQUE KEY `ugroupName` (`ugroupName`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userGroups`
--

LOCK TABLES `userGroups` WRITE;
/*!40000 ALTER TABLE `userGroups` DISABLE KEYS */;
INSERT INTO `userGroups` VALUES
(5,'作业人员'),
(2,'普通用户'),
(3,'科室'),
(1,'系统管理组'),
(4,'职员');
/*!40000 ALTER TABLE `userGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(16) DEFAULT NULL,
  `uname` varchar(16) DEFAULT NULL,
  `ustate` varchar(8) DEFAULT 'OFFLINE',
  `callIdx` int(11) DEFAULT 0,
  `passhash` varchar(128) DEFAULT NULL,
  `ugroupId` int(10) unsigned DEFAULT 2,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'0','系统管理员','OFFLINE',0,'078bbb4bf0f7117fb131ec45f15b5b87',1),
(2,'13000000001','科室一','OFFLINE',0,'ab56b4d92b40713acc5af89985d4b786',3),
(3,'13000000002','科室二','OFFLINE',0,'ab56b4d92b40713acc5af89985d4b786',3),
(4,'13000000003','科室三','ONLINE',0,'ab56b4d92b40713acc5af89985d4b786',3),
(5,'13000000004','科室四','OFFLINE',0,'ab56b4d92b40713acc5af89985d4b786',3),
(6,'13000000005','科室五','OFFLINE',0,'ab56b4d92b40713acc5af89985d4b786',3),
(7,'15000000001','用户A','OFFLINE',0,'ab56b4d92b40713acc5af89985d4b786',4),
(8,'15000000002','用户B','OFFLINE',0,'ab56b4d92b40713acc5af89985d4b786',4),
(9,'15000000003','用户C','OFFLINE',0,'ab56b4d92b40713acc5af89985d4b786',4),
(10,'15000000004','用户D','OFFLINE',0,'ab56b4d92b40713acc5af89985d4b786',4),
(11,'15000000005','用户E','OFFLINE',0,'ab56b4d92b40713acc5af89985d4b786',4),
(12,'18000000001','作业人员一','OFFLINE',0,'ab56b4d92b40713acc5af89985d4b786',5),
(13,'18000000002','作业人员二','OFFLINE',0,'ab56b4d92b40713acc5af89985d4b786',5),
(14,'18000000003','作业人员三','OFFLINE',0,'ab56b4d92b40713acc5af89985d4b786',5),
(15,'18000000004','作业人员四','OFFLINE',0,'ab56b4d92b40713acc5af89985d4b786',5),
(16,'18000000005','作业人员五','OFFLINE',0,'ab56b4d92b40713acc5af89985d4b786',5);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-02 22:49:20
