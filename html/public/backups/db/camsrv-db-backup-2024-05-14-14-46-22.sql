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
  `cduniq` varchar(6) DEFAULT NULL,
  `calltype` int(11) DEFAULT NULL,
  `cduid` int(10) unsigned DEFAULT NULL,
  `sdpOffer` text DEFAULT NULL,
  `sdpAnswer` text DEFAULT NULL,
  `parentCallId` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT 0,
  `period` int(11) DEFAULT 0,
  PRIMARY KEY (`callId`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
INSERT INTO `calls` VALUES
(99,'22d5f','7ee25',0,NULL,'{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 7424442413749982355 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0 1\\r\\na=extmap-allow-mixed\\r\\na=msid-semantic: WMS 0668e064-1731-45da-aef2-b1f7a2a67352\\r\\nm=audio 9 UDP/TLS/RTP/SAVPF 111 63 9 0 8 13 110 126\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:1kKU\\r\\na=ice-pwd:3ccjeamAcLJHWPyz1Fg0hXoM\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 5C:87:94:47:17:A3:7B:0F:EE:43:B1:CB:AE:CC:8C:0F:EB:84:72:F1:B7:FF:B2:39:99:AC:3E:2F:4E:86:72:32\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=extmap:1 urn:ietf:params:rtp-hdrext:ssrc-audio-level\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=sendrecv\\r\\na=msid:0668e064-1731-45da-aef2-b1f7a2a67352 ee3465a2-bd69-46bd-ae98-3cfb3a7ba07e\\r\\na=rtcp-mux\\r\\na=rtpmap:111 opus/48000/2\\r\\na=rtcp-fb:111 transport-cc\\r\\na=fmtp:111 minptime=10;useinbandfec=1\\r\\na=rtpmap:63 red/48000/2\\r\\na=fmtp:63 111/111\\r\\na=rtpmap:9 G722/8000\\r\\na=rtpmap:0 PCMU/8000\\r\\na=rtpmap:8 PCMA/8000\\r\\na=rtpmap:13 CN/8000\\r\\na=rtpmap:110 telephone-event/48000\\r\\na=rtpmap:126 telephone-event/8000\\r\\na=ssrc:2668832680 cname:aMegd4bkC7Nj3nmq\\r\\na=ssrc:2668832680 msid:0668e064-1731-45da-aef2-b1f7a2a67352 ee3465a2-bd69-46bd-ae98-3cfb3a7ba07e\\r\\nm=video 9 UDP/TLS/RTP/SAVPF 96 97 102 103 104 105 106 107 108 109 127 125 39 40 45 46 98 99 100 101 112 113 116 117 118\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:1kKU\\r\\na=ice-pwd:3ccjeamAcLJHWPyz1Fg0hXoM\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 5C:87:94:47:17:A3:7B:0F:EE:43:B1:CB:AE:CC:8C:0F:EB:84:72:F1:B7:FF:B2:39:99:AC:3E:2F:4E:86:72:32\\r\\na=setup:actpass\\r\\na=mid:1\\r\\na=extmap:14 urn:ietf:params:rtp-hdrext:toffset\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:13 urn:3gpp:video-orientation\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:5 http://www.webrtc.org/experiments/rtp-hdrext/playout-delay\\r\\na=extmap:6 http://www.webrtc.org/experiments/rtp-hdrext/video-content-type\\r\\na=extmap:7 http://www.webrtc.org/experiments/rtp-hdrext/video-timing\\r\\na=extmap:8 http://www.webrtc.org/experiments/rtp-hdrext/color-space\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=extmap:10 urn:ietf:params:rtp-hdrext:sdes:rtp-stream-id\\r\\na=extmap:11 urn:ietf:params:rtp-hdrext:sdes:repaired-rtp-stream-id\\r\\na=sendrecv\\r\\na=msid:0668e064-1731-45da-aef2-b1f7a2a67352 5fc967ad-bbc0-4dba-b38d-b084cb8e3d62\\r\\na=rtcp-mux\\r\\na=rtcp-rsize\\r\\na=rtpmap:96 VP8/90000\\r\\na=rtcp-fb:96 goog-remb\\r\\na=rtcp-fb:96 transport-cc\\r\\na=rtcp-fb:96 ccm fir\\r\\na=rtcp-fb:96 nack\\r\\na=rtcp-fb:96 nack pli\\r\\na=rtpmap:97 rtx/90000\\r\\na=fmtp:97 apt=96\\r\\na=rtpmap:102 H264/90000\\r\\na=rtcp-fb:102 goog-remb\\r\\na=rtcp-fb:102 transport-cc\\r\\na=rtcp-fb:102 ccm fir\\r\\na=rtcp-fb:102 nack\\r\\na=rtcp-fb:102 nack pli\\r\\na=fmtp:102 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=42001f\\r\\na=rtpmap:103 rtx/90000\\r\\na=fmtp:103 apt=102\\r\\na=rtpmap:104 H264/90000\\r\\na=rtcp-fb:104 goog-remb\\r\\na=rtcp-fb:104 transport-cc\\r\\na=rtcp-fb:104 ccm fir\\r\\na=rtcp-fb:104 nack\\r\\na=rtcp-fb:104 nack pli\\r\\na=fmtp:104 level-asymmetry-allowed=1;packetization-mode=0;profile-level-id=42001f\\r\\na=rtpmap:105 rtx/90000\\r\\na=fmtp:105 apt=104\\r\\na=rtpmap:106 H264/90000\\r\\na=rtcp-fb:106 goog-remb\\r\\na=rtcp-fb:106 transport-cc\\r\\na=rtcp-fb:106 ccm fir\\r\\na=rtcp-fb:106 nack\\r\\na=rtcp-fb:106 nack pli\\r\\na=fmtp:106 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=42e01f\\r\\na=rtpmap:107 rtx/90000\\r\\na=fmtp:107 apt=106\\r\\na=rtpmap:108 H264/90000\\r\\na=rtcp-fb:108 goog-remb\\r\\na=rtcp-fb:108 transport-cc\\r\\na=rtcp-fb:108 ccm fir\\r\\na=rtcp-fb:108 nack\\r\\na=rtcp-fb:108 nack pli\\r\\na=fmtp:108 level-asymmetry-allowed=1;packetization-mode=0;profile-level-id=42e01f\\r\\na=rtpmap:109 rtx/90000\\r\\na=fmtp:109 apt=108\\r\\na=rtpmap:127 H264/90000\\r\\na=rtcp-fb:127 goog-remb\\r\\na=rtcp-fb:127 transport-cc\\r\\na=rtcp-fb:127 ccm fir\\r\\na=rtcp-fb:127 nack\\r\\na=rtcp-fb:127 nack pli\\r\\na=fmtp:127 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=4d001f\\r\\na=rtpmap:125 rtx/90000\\r\\na=fmtp:125 apt=127\\r\\na=rtpmap:39 H264/90000\\r\\na=rtcp-fb:39 goog-remb\\r\\na=rtcp-fb:39 transport-cc\\r\\na=rtcp-fb:39 ccm fir\\r\\na=rtcp-fb:39 nack\\r\\na=rtcp-fb:39 nack pli\\r\\na=fmtp:39 level-asymmetry-allowed=1;packetization-mode=0;profile-level-id=4d001f\\r\\na=rtpmap:40 rtx/90000\\r\\na=fmtp:40 apt=39\\r\\na=rtpmap:45 AV1/90000\\r\\na=rtcp-fb:45 goog-remb\\r\\na=rtcp-fb:45 transport-cc\\r\\na=rtcp-fb:45 ccm fir\\r\\na=rtcp-fb:45 nack\\r\\na=rtcp-fb:45 nack pli\\r\\na=fmtp:45 level-idx=5;profile=0;tier=0\\r\\na=rtpmap:46 rtx/90000\\r\\na=fmtp:46 apt=45\\r\\na=rtpmap:98 VP9/90000\\r\\na=rtcp-fb:98 goog-remb\\r\\na=rtcp-fb:98 transport-cc\\r\\na=rtcp-fb:98 ccm fir\\r\\na=rtcp-fb:98 nack\\r\\na=rtcp-fb:98 nack pli\\r\\na=fmtp:98 profile-id=0\\r\\na=rtpmap:99 rtx/90000\\r\\na=fmtp:99 apt=98\\r\\na=rtpmap:100 VP9/90000\\r\\na=rtcp-fb:100 goog-remb\\r\\na=rtcp-fb:100 transport-cc\\r\\na=rtcp-fb:100 ccm fir\\r\\na=rtcp-fb:100 nack\\r\\na=rtcp-fb:100 nack pli\\r\\na=fmtp:100 profile-id=2\\r\\na=rtpmap:101 rtx/90000\\r\\na=fmtp:101 apt=100\\r\\na=rtpmap:112 H264/90000\\r\\na=rtcp-fb:112 goog-remb\\r\\na=rtcp-fb:112 transport-cc\\r\\na=rtcp-fb:112 ccm fir\\r\\na=rtcp-fb:112 nack\\r\\na=rtcp-fb:112 nack pli\\r\\na=fmtp:112 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=64001f\\r\\na=rtpmap:113 rtx/90000\\r\\na=fmtp:113 apt=112\\r\\na=rtpmap:116 red/90000\\r\\na=rtpmap:117 rtx/90000\\r\\na=fmtp:117 apt=116\\r\\na=rtpmap:118 ulpfec/90000\\r\\na=ssrc-group:FID 3786039582 625970458\\r\\na=ssrc:3786039582 cname:aMegd4bkC7Nj3nmq\\r\\na=ssrc:3786039582 msid:0668e064-1731-45da-aef2-b1f7a2a67352 5fc967ad-bbc0-4dba-b38d-b084cb8e3d62\\r\\na=ssrc:625970458 cname:aMegd4bkC7Nj3nmq\\r\\na=ssrc:625970458 msid:0668e064-1731-45da-aef2-b1f7a2a67352 5fc967ad-bbc0-4dba-b38d-b084cb8e3d62\\r\\n\"}',NULL,NULL,0,0),
(100,'22d5f',NULL,0,NULL,'{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 7095682225083717800 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0 1\\r\\na=extmap-allow-mixed\\r\\na=msid-semantic: WMS 8a52f752-acbf-42a9-95d8-1ee47dfcd1e4\\r\\nm=audio 9 UDP/TLS/RTP/SAVPF 111 63 9 0 8 13 110 126\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:kBTW\\r\\na=ice-pwd:0O8ZdCkGbNuophB1nlK1LKrO\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 20:0F:0F:47:8D:69:FE:69:A0:C5:A5:BC:B8:D5:90:D4:48:20:A5:4A:93:42:7D:0C:84:E8:3A:A2:FF:C2:70:F1\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=extmap:1 urn:ietf:params:rtp-hdrext:ssrc-audio-level\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=sendrecv\\r\\na=msid:8a52f752-acbf-42a9-95d8-1ee47dfcd1e4 026b2f35-f251-42a5-a2c8-5937dc948e7e\\r\\na=rtcp-mux\\r\\na=rtpmap:111 opus/48000/2\\r\\na=rtcp-fb:111 transport-cc\\r\\na=fmtp:111 minptime=10;useinbandfec=1\\r\\na=rtpmap:63 red/48000/2\\r\\na=fmtp:63 111/111\\r\\na=rtpmap:9 G722/8000\\r\\na=rtpmap:0 PCMU/8000\\r\\na=rtpmap:8 PCMA/8000\\r\\na=rtpmap:13 CN/8000\\r\\na=rtpmap:110 telephone-event/48000\\r\\na=rtpmap:126 telephone-event/8000\\r\\na=ssrc:3516981685 cname:+w0NC1rXchMEcvud\\r\\na=ssrc:3516981685 msid:8a52f752-acbf-42a9-95d8-1ee47dfcd1e4 026b2f35-f251-42a5-a2c8-5937dc948e7e\\r\\nm=video 9 UDP/TLS/RTP/SAVPF 96 97 102 103 104 105 106 107 108 109 127 125 39 40 45 46 98 99 100 101 112 113 116 117 118\\r\\nc=IN IP4 0.0.0.0\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:kBTW\\r\\na=ice-pwd:0O8ZdCkGbNuophB1nlK1LKrO\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 20:0F:0F:47:8D:69:FE:69:A0:C5:A5:BC:B8:D5:90:D4:48:20:A5:4A:93:42:7D:0C:84:E8:3A:A2:FF:C2:70:F1\\r\\na=setup:actpass\\r\\na=mid:1\\r\\na=extmap:14 urn:ietf:params:rtp-hdrext:toffset\\r\\na=extmap:2 http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time\\r\\na=extmap:13 urn:3gpp:video-orientation\\r\\na=extmap:3 http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01\\r\\na=extmap:5 http://www.webrtc.org/experiments/rtp-hdrext/playout-delay\\r\\na=extmap:6 http://www.webrtc.org/experiments/rtp-hdrext/video-content-type\\r\\na=extmap:7 http://www.webrtc.org/experiments/rtp-hdrext/video-timing\\r\\na=extmap:8 http://www.webrtc.org/experiments/rtp-hdrext/color-space\\r\\na=extmap:4 urn:ietf:params:rtp-hdrext:sdes:mid\\r\\na=extmap:10 urn:ietf:params:rtp-hdrext:sdes:rtp-stream-id\\r\\na=extmap:11 urn:ietf:params:rtp-hdrext:sdes:repaired-rtp-stream-id\\r\\na=sendrecv\\r\\na=msid:8a52f752-acbf-42a9-95d8-1ee47dfcd1e4 9ee65d59-acd1-480c-bae3-96b84993c052\\r\\na=rtcp-mux\\r\\na=rtcp-rsize\\r\\na=rtpmap:96 VP8/90000\\r\\na=rtcp-fb:96 goog-remb\\r\\na=rtcp-fb:96 transport-cc\\r\\na=rtcp-fb:96 ccm fir\\r\\na=rtcp-fb:96 nack\\r\\na=rtcp-fb:96 nack pli\\r\\na=rtpmap:97 rtx/90000\\r\\na=fmtp:97 apt=96\\r\\na=rtpmap:102 H264/90000\\r\\na=rtcp-fb:102 goog-remb\\r\\na=rtcp-fb:102 transport-cc\\r\\na=rtcp-fb:102 ccm fir\\r\\na=rtcp-fb:102 nack\\r\\na=rtcp-fb:102 nack pli\\r\\na=fmtp:102 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=42001f\\r\\na=rtpmap:103 rtx/90000\\r\\na=fmtp:103 apt=102\\r\\na=rtpmap:104 H264/90000\\r\\na=rtcp-fb:104 goog-remb\\r\\na=rtcp-fb:104 transport-cc\\r\\na=rtcp-fb:104 ccm fir\\r\\na=rtcp-fb:104 nack\\r\\na=rtcp-fb:104 nack pli\\r\\na=fmtp:104 level-asymmetry-allowed=1;packetization-mode=0;profile-level-id=42001f\\r\\na=rtpmap:105 rtx/90000\\r\\na=fmtp:105 apt=104\\r\\na=rtpmap:106 H264/90000\\r\\na=rtcp-fb:106 goog-remb\\r\\na=rtcp-fb:106 transport-cc\\r\\na=rtcp-fb:106 ccm fir\\r\\na=rtcp-fb:106 nack\\r\\na=rtcp-fb:106 nack pli\\r\\na=fmtp:106 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=42e01f\\r\\na=rtpmap:107 rtx/90000\\r\\na=fmtp:107 apt=106\\r\\na=rtpmap:108 H264/90000\\r\\na=rtcp-fb:108 goog-remb\\r\\na=rtcp-fb:108 transport-cc\\r\\na=rtcp-fb:108 ccm fir\\r\\na=rtcp-fb:108 nack\\r\\na=rtcp-fb:108 nack pli\\r\\na=fmtp:108 level-asymmetry-allowed=1;packetization-mode=0;profile-level-id=42e01f\\r\\na=rtpmap:109 rtx/90000\\r\\na=fmtp:109 apt=108\\r\\na=rtpmap:127 H264/90000\\r\\na=rtcp-fb:127 goog-remb\\r\\na=rtcp-fb:127 transport-cc\\r\\na=rtcp-fb:127 ccm fir\\r\\na=rtcp-fb:127 nack\\r\\na=rtcp-fb:127 nack pli\\r\\na=fmtp:127 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=4d001f\\r\\na=rtpmap:125 rtx/90000\\r\\na=fmtp:125 apt=127\\r\\na=rtpmap:39 H264/90000\\r\\na=rtcp-fb:39 goog-remb\\r\\na=rtcp-fb:39 transport-cc\\r\\na=rtcp-fb:39 ccm fir\\r\\na=rtcp-fb:39 nack\\r\\na=rtcp-fb:39 nack pli\\r\\na=fmtp:39 level-asymmetry-allowed=1;packetization-mode=0;profile-level-id=4d001f\\r\\na=rtpmap:40 rtx/90000\\r\\na=fmtp:40 apt=39\\r\\na=rtpmap:45 AV1/90000\\r\\na=rtcp-fb:45 goog-remb\\r\\na=rtcp-fb:45 transport-cc\\r\\na=rtcp-fb:45 ccm fir\\r\\na=rtcp-fb:45 nack\\r\\na=rtcp-fb:45 nack pli\\r\\na=fmtp:45 level-idx=5;profile=0;tier=0\\r\\na=rtpmap:46 rtx/90000\\r\\na=fmtp:46 apt=45\\r\\na=rtpmap:98 VP9/90000\\r\\na=rtcp-fb:98 goog-remb\\r\\na=rtcp-fb:98 transport-cc\\r\\na=rtcp-fb:98 ccm fir\\r\\na=rtcp-fb:98 nack\\r\\na=rtcp-fb:98 nack pli\\r\\na=fmtp:98 profile-id=0\\r\\na=rtpmap:99 rtx/90000\\r\\na=fmtp:99 apt=98\\r\\na=rtpmap:100 VP9/90000\\r\\na=rtcp-fb:100 goog-remb\\r\\na=rtcp-fb:100 transport-cc\\r\\na=rtcp-fb:100 ccm fir\\r\\na=rtcp-fb:100 nack\\r\\na=rtcp-fb:100 nack pli\\r\\na=fmtp:100 profile-id=2\\r\\na=rtpmap:101 rtx/90000\\r\\na=fmtp:101 apt=100\\r\\na=rtpmap:112 H264/90000\\r\\na=rtcp-fb:112 goog-remb\\r\\na=rtcp-fb:112 transport-cc\\r\\na=rtcp-fb:112 ccm fir\\r\\na=rtcp-fb:112 nack\\r\\na=rtcp-fb:112 nack pli\\r\\na=fmtp:112 level-asymmetry-allowed=1;packetization-mode=1;profile-level-id=64001f\\r\\na=rtpmap:113 rtx/90000\\r\\na=fmtp:113 apt=112\\r\\na=rtpmap:116 red/90000\\r\\na=rtpmap:117 rtx/90000\\r\\na=fmtp:117 apt=116\\r\\na=rtpmap:118 ulpfec/90000\\r\\na=ssrc-group:FID 755586343 430537258\\r\\na=ssrc:755586343 cname:+w0NC1rXchMEcvud\\r\\na=ssrc:755586343 msid:8a52f752-acbf-42a9-95d8-1ee47dfcd1e4 9ee65d59-acd1-480c-bae3-96b84993c052\\r\\na=ssrc:430537258 cname:+w0NC1rXchMEcvud\\r\\na=ssrc:430537258 msid:8a52f752-acbf-42a9-95d8-1ee47dfcd1e4 9ee65d59-acd1-480c-bae3-96b84993c052\\r\\n\"}',NULL,NULL,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uniqs`
--

LOCK TABLES `uniqs` WRITE;
/*!40000 ALTER TABLE `uniqs` DISABLE KEYS */;
INSERT INTO `uniqs` VALUES
(63,5,'cb2a2','ef148616e5fb1868b4499198d9765227',1715668991),
(223,4,'d1c86','57471e1a857bac9de7cdb04d36e699dd',1715661921),
(225,6,'7ee25','b77f15e221cba78be8d9be925e033d19',1715668991),
(323,3,'fbb0e','5aefc0758ff563e0d78eec29026e0c25',1715666127),
(331,2,'22d5f','201f0a03240523b493358415ff22c85a',0);
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
  `callnumber` varchar(16) DEFAULT NULL,
  `uname` varchar(16) DEFAULT NULL,
  `ustate` varchar(8) DEFAULT 'OFFLINE',
  `passhash` varchar(128) DEFAULT NULL,
  `ugroupId` int(10) unsigned DEFAULT 2,
  `avatarSrc` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'0','系统管理员','OFFLINE','078bbb4bf0f7117fb131ec45f15b5b87',1,NULL),
(2,'13000000001','科室一','ONLINE','ab56b4d92b40713acc5af89985d4b786',3,NULL),
(3,'13000000002','科室二','OFFLINE','ab56b4d92b40713acc5af89985d4b786',3,NULL),
(4,'13000000003','科室三','OFFLINE','ab56b4d92b40713acc5af89985d4b786',3,NULL),
(5,'13000000004','科室四','ONLINE','ab56b4d92b40713acc5af89985d4b786',3,NULL),
(6,'13000000005','科室五','ONLINE','ab56b4d92b40713acc5af89985d4b786',3,NULL),
(7,'15000000001','用户A','OFFLINE','ab56b4d92b40713acc5af89985d4b786',4,NULL),
(8,'15000000002','用户B','OFFLINE','ab56b4d92b40713acc5af89985d4b786',4,NULL),
(9,'15000000003','用户C','OFFLINE','ab56b4d92b40713acc5af89985d4b786',4,NULL),
(10,'15000000004','我的用户','OFFLINE','ab56b4d92b40713acc5af89985d4b786',4,'https://github.githubassets.com/assets/yolo-default-be0bbff04951.png'),
(11,'15000000005','用户E','OFFLINE','ab56b4d92b40713acc5af89985d4b786',4,NULL),
(12,'18000000001','作业人员一','OFFLINE','ab56b4d92b40713acc5af89985d4b786',5,NULL),
(13,'18000000002','作业人员二','OFFLINE','ab56b4d92b40713acc5af89985d4b786',5,NULL),
(14,'18000000003','作业人员三','OFFLINE','ab56b4d92b40713acc5af89985d4b786',5,NULL),
(15,'18000000004','作业人员四','OFFLINE','ab56b4d92b40713acc5af89985d4b786',5,NULL),
(16,'18000000005','作业人员五','OFFLINE','ab56b4d92b40713acc5af89985d4b786',5,NULL),
(17,'82966185','maker','OFFLINE','ab56b4d92b40713acc5af89985d4b786',2,'https://github.githubassets.com/assets/yolo-default-be0bbff04951.png'),
(18,'15000000008','我的用户','OFFLINE','ab56b4d92b40713acc5af89985d4b786',2,'https://github.githubassets.com/assets/yolo-default-be0bbff04951.png'),
(19,'15000000009','我的用户','OFFLINE','ab56b4d92b40713acc5af89985d4b786',2,'https://github.githubassets.com/assets/yolo-default-be0bbff04951.png'),
(20,'150000000092','我的用户','OFFLINE','ab56b4d92b40713acc5af89985d4b786',2,NULL),
(21,'89508266','高婷怡','OFFLINE','ab56b4d92b40713acc5af89985d4b786',2,NULL),
(22,'81295851','孙远','OFFLINE','ab56b4d92b40713acc5af89985d4b786',2,'http://192.168.1.168:82/oriot_op/userfiles/fileupload/202401/1752154325165993984.jpg'),
(23,'80685295','李星良','OFFLINE','ab56b4d92b40713acc5af89985d4b786',2,'http://192.168.1.168:82/oriot_op/userfiles/fileupload/202402/1759768959394799616.jpg'),
(24,'86126051','李星良','OFFLINE','ab56b4d92b40713acc5af89985d4b786',2,'http://192.168.1.168:82/oriot_op/userfiles/fileupload/202402/1759768959394799616.jpg'),
(25,'81868666','','OFFLINE','ab56b4d92b40713acc5af89985d4b786',2,NULL),
(26,'81109602','开发测试','OFFLINE','ab56b4d92b40713acc5af89985d4b786',2,NULL),
(27,'89186999','王旭东','OFFLINE','ab56b4d92b40713acc5af89985d4b786',2,'http://192.168.1.168:82/oriot_op/userfiles/fileupload/202402/1759768959394799616.jpg');
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

-- Dump completed on 2024-05-14 14:46:22
