require 'pry'
require_relative 'db_config'
require_relative 'models/profile'
require_relative 'models/result'

athletes = [
    {
    "lastname": "Kassay",
    "firstname": "James",
    "gender": "male",
    "nation": "AUS",
    "federation": "Sport Climbing Australia",
    "homepage": "http://www.jameskassay.com",
    "facebook": "pages/James-Kassay/147596508616294?ref=hl",
    "instagram": "jimmykxox",
    "youtube": "user/qb6kasj",
    "state": "Victoria",
    "lead_national_rank": 2,
    "speed_national_rank": "NA",
    "boulder_national_rank": 2,
    "last_comp": "2017-05-06",
    "photo": "https://ifsc-egw.wavecdn.net/jpgs/JKA05M0.jpg?1448952652",
    "photo2": "https://ifsc-egw.wavecdn.net/jpgs/JKA05M0-2.jpg?1448952652",
    "results": [
    {
    "rank": "59",
    "date": "2017-05-06",
    "name": "IFSC Climbing Worldcup (B) - Hachioji, Tokyo (JPN) 2017",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=6174&cat=6",
    "WetId": "6174",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "20",
    "date": "2016-09-14",
    "name": "IFSC Climbing World Championships - Paris (FRA) 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1563&cat=6",
    "WetId": "1563",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "1",
    "date": "2016-06-17",
    "name": "Oceania Continental Championship - Sidney (AUS) 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=6094&cat=1",
    "WetId": "6094",
    "cat_name": "lead",
    "GrpId": "1"
    },
    {
    "rank": "29",
    "date": "2016-04-30",
    "name": "IFSC Climbing Worldcup (B, S) - Chongqing (CHN) 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1640&cat=6",
    "WetId": "1640",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "14",
    "date": "2016-04-23",
    "name": "IFSC Climbing Worldcup (B) - Kazo (JPN) 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1635&cat=6",
    "WetId": "1635",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "13",
    "date": "2015-06-26",
    "name": "IFSC Climbing Worldcup (B,S) - Haiyang (CHN) 2015",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1587&cat=6",
    "WetId": "1587",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "13",
    "date": "2015-06-20",
    "name": "IFSC Climbing Worldcup (B,S) - Chongqing (CHN) 2015",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1581&cat=6",
    "WetId": "1581",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "25",
    "date": "2015-06-05",
    "name": "IFSC Climbing Worldcup (B) - Vail (USA) 2015",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1586&cat=6",
    "WetId": "1586",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "23",
    "date": "2015-05-30",
    "name": "IFSC Climbing Worldcup (B) - Toronto (CAN) 2015",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1585&cat=6",
    "WetId": "1585",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "6",
    "date": "2014-08-30",
    "name": "Intl. Event (L, B) - ROCKMASTER - Arco (ITA) 2014",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1535&cat=6",
    "WetId": "1535",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "13",
    "date": "2014-08-21",
    "name": "IFSC Climbing World Championship (B) - Munich (GER) 2014",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1499&cat=6",
    "WetId": "1499",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "16",
    "date": "2014-06-27",
    "name": "IFSC Climbing Worldcup (B) - Laval (FRA) 2014",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1522&cat=6",
    "WetId": "1522",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "26",
    "date": "2014-06-06",
    "name": "IFSC Climbing Worldcup (B) - Vail (USA) 2014",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1520&cat=6",
    "WetId": "1520",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "6",
    "date": "2014-05-31",
    "name": "IFSC Climbing Worldcup (B) - Toronto (CAN) 2014 ",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1517&cat=6",
    "WetId": "1517",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "27",
    "date": "2014-05-16",
    "name": "IFSC Climbing Worldcup (B) - Innsbruck (AUT) 2014 ",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1519&cat=6",
    "WetId": "1519",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "16",
    "date": "2014-05-10",
    "name": "IFSC Climbing Worldcup (B) - Grindelwald (SUI) 2014 ",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1532&cat=6",
    "WetId": "1532",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "7",
    "date": "2014-05-03",
    "name": "IFSC Climbing Worldcup (B,S) - Baku (AZE) 2014",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1552&cat=6",
    "WetId": "1552",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "4",
    "date": "2014-04-26",
    "name": "IFSC Climbing Worldcup (B,S) - Chongqing (CHN) 2014 ",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1518&cat=6",
    "WetId": "1518",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "41",
    "date": "2013-05-17",
    "name": "IFSC Climbing Worldcup (B) - Innsbruck (AUT) 2013",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1449&cat=6",
    "WetId": "1449",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "5",
    "date": "2013-05-11",
    "name": "IFSC Climbing Worldcup (B) - Log-Dragomer (SLO) 2013",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1450&cat=6",
    "WetId": "1450",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "23",
    "date": "2013-04-26",
    "name": "IFSC Climbing Worldcup (B) - Kitzbühel (AUT) 2013",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1465&cat=6",
    "WetId": "1465",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "21",
    "date": "2013-04-05",
    "name": "IFSC Climbing Worldcup (B) - Millau (FRA) 2013",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1453&cat=6",
    "WetId": "1453",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "13",
    "date": "2012-06-01",
    "name": "IFSC Climbing Worldcup (B) - Vail (USA) 2012 ",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1372&cat=6",
    "WetId": "1372",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "13",
    "date": "2012-05-18",
    "name": "IFSC Climbing Worldcup (B) - Innsbruck (AUT) 2012",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1371&cat=6",
    "WetId": "1371",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "39",
    "date": "2012-04-27",
    "name": "IFSC Climbing Worldcup (B) - Vienna (AUT) 2012",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1373&cat=6",
    "WetId": "1373",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "41",
    "date": "2012-04-21",
    "name": "IFSC Climbing Worldcup (B) - Log-Dragomer (SLO) 2012",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1387&cat=6",
    "WetId": "1387",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "8",
    "date": "2005-07-22",
    "name": "<big>International World Games (L+S) - Duisburg (GER) 2005</big>",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=679&cat=1",
    "WetId": "679",
    "cat_name": "lead",
    "GrpId": "1"
    }
    ],
    },
    {
    "lastname": "Mackenzie",
    "firstname": "Oceania",
    "gender": "female",
    "nation": "AUS",
    "state": "Victoria",
    "lead_national_rank": 2,
    "speed_national_rank": "NA",
    "boulder_national_rank": "NA",
    "federation": "Sport Climbing Australia",
    "fed_url": "http://www.sportclimbingaustralia.org.au",
    "last_comp": "2019-05-18",
    "results": [
    {
    "rank": "17",
    "date": "2019-05-18",
    "name": "IFSC Climbing Worldcup (B) - Munich (GER) 2019",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7932&cat=5",
    "WetId": "7932",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "31",
    "date": "2019-05-03",
    "name": "IFSC Climbing Worldcup (B,S) - Wujiang (CHN) 2019",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7959&cat=24",
    "WetId": "7959",
    "cat_name": "speed",
    "GrpId": "24"
    },
    {
    "rank": "33",
    "date": "2019-05-03",
    "name": "IFSC Climbing Worldcup (B,S) - Wujiang (CHN) 2019",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7959&cat=5",
    "WetId": "7959",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "29",
    "date": "2019-04-26",
    "name": "IFSC Climbing Worldcup (B,S) - Chongqing (CHN) 2019",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7929&cat=24",
    "WetId": "7929",
    "cat_name": "speed",
    "GrpId": "24"
    },
    {
    "rank": "45",
    "date": "2019-04-26",
    "name": "IFSC Climbing Worldcup (B,S) - Chongqing (CHN) 2019",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7929&cat=5",
    "WetId": "7929",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "6",
    "date": "2019-04-05",
    "name": "IFSC Climbing Worldcup (B) - Meiringen (SUI) 2019 ",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7923&cat=5",
    "WetId": "7923",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "23",
    "date": "2018-10-27",
    "name": "IFSC Climbing Worldcup (L,S) - Xiamen (CHN) 2018 ",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7182&cat=2",
    "WetId": "7182",
    "cat_name": "lead",
    "GrpId": "2"
    },
    {
    "rank": "26",
    "date": "2018-10-27",
    "name": "IFSC Climbing Worldcup (L,S) - Xiamen (CHN) 2018 ",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7182&cat=24",
    "WetId": "7182",
    "cat_name": "speed",
    "GrpId": "24"
    },
    {
    "rank": "19",
    "date": "2018-10-20",
    "name": "IFSC Climbing Worldcup (L,S) - Wujiang (CHN) 2018 ",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7179&cat=2",
    "WetId": "7179",
    "cat_name": "lead",
    "GrpId": "2"
    },
    {
    "rank": "21",
    "date": "2018-10-20",
    "name": "IFSC Climbing Worldcup (L,S) - Wujiang (CHN) 2018 ",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7179&cat=24",
    "WetId": "7179",
    "cat_name": "speed",
    "GrpId": "24"
    },
    {
    "rank": "27",
    "date": "2018-09-06",
    "name": "IFSC Climbing World Championships - Innsbruck (AUT) 2018",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1564&cat=5",
    "WetId": "1564",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "35",
    "date": "2018-09-06",
    "name": "IFSC Climbing World Championships - Innsbruck (AUT) 2018",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1564&cat=2",
    "WetId": "1564",
    "cat_name": "lead",
    "GrpId": "2"
    },
    {
    "rank": "39",
    "date": "2018-09-06",
    "name": "IFSC Climbing World Championships - Innsbruck (AUT) 2018",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1564&cat=24",
    "WetId": "1564",
    "cat_name": "speed",
    "GrpId": "24"
    },
    {
    "rank": "8",
    "date": "2018-08-09",
    "name": "IFSC Youth World Championships -  Moscow (RUS) 2018",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7188&cat=79",
    "WetId": "7188",
    "cat_name": "female youth A boulder",
    "GrpId": "79"
    },
    {
    "rank": "14",
    "date": "2018-08-09",
    "name": "IFSC Youth World Championships -  Moscow (RUS) 2018",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7188&cat=60",
    "WetId": "7188",
    "cat_name": "female youth A speed",
    "GrpId": "60"
    },
    {
    "rank": "29",
    "date": "2018-08-09",
    "name": "IFSC Youth World Championships -  Moscow (RUS) 2018",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7188&cat=19",
    "WetId": "7188",
    "cat_name": "female youth A lead",
    "GrpId": "19"
    },
    {
    "rank": "20",
    "date": "2018-06-02",
    "name": "IFSC Climbing Worldcup (B) - Hachioji (JPN) 2018 ",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7152&cat=5",
    "WetId": "7152",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "1",
    "date": "2017-10-12",
    "name": "Oceania Continental Championships & Oceania Youth Championships (L,S,B) - Noumea (FRA) 2017",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7044&cat=20",
    "WetId": "7044",
    "cat_name": "female youth B lead",
    "GrpId": "20"
    },
    {
    "rank": "1",
    "date": "2017-10-12",
    "name": "Oceania Continental Championships & Oceania Youth Championships (L,S,B) - Noumea (FRA) 2017",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7044&cat=80",
    "WetId": "7044",
    "cat_name": "female youth B boulder",
    "GrpId": "80"
    },
    {
    "rank": "1",
    "date": "2017-10-12",
    "name": "Oceania Continental Championships & Oceania Youth Championships (L,S,B) - Noumea (FRA) 2017",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7044&cat=61",
    "WetId": "7044",
    "cat_name": "female youth B speed",
    "GrpId": "61"
    },
    {
    "rank": "9",
    "date": "2017-08-30",
    "name": "IFSC Youth World Championships - Innsbruck (AUT) - 2017",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=6106&cat=287",
    "WetId": "6106",
    "cat_name": "female youth B combined",
    "GrpId": "287"
    },
    {
    "rank": "9",
    "date": "2017-08-30",
    "name": "IFSC Youth World Championships - Innsbruck (AUT) - 2017",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=6106&cat=20",
    "WetId": "6106",
    "cat_name": "female youth B lead",
    "GrpId": "20"
    },
    {
    "rank": "15",
    "date": "2017-08-30",
    "name": "IFSC Youth World Championships - Innsbruck (AUT) - 2017",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=6106&cat=80",
    "WetId": "6106",
    "cat_name": "female youth B boulder",
    "GrpId": "80"
    },
    {
    "rank": "31",
    "date": "2017-08-30",
    "name": "IFSC Youth World Championships - Innsbruck (AUT) - 2017",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=6106&cat=61",
    "WetId": "6106",
    "cat_name": "female youth B speed",
    "GrpId": "61"
    },
    {
    "rank": "18",
    "date": "2016-11-07",
    "name": "IFSC World Youth Championships - Guangzhou (CHN) - 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1616&cat=80",
    "WetId": "1616",
    "cat_name": "female youth B boulder",
    "GrpId": "80"
    },
    {
    "rank": "35",
    "date": "2016-11-07",
    "name": "IFSC World Youth Championships - Guangzhou (CHN) - 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1616&cat=61",
    "WetId": "1616",
    "cat_name": "female youth B speed",
    "GrpId": "61"
    },
    {
    "rank": "39",
    "date": "2016-11-07",
    "name": "IFSC World Youth Championships - Guangzhou (CHN) - 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1616&cat=20",
    "WetId": "1616",
    "cat_name": "female youth B lead",
    "GrpId": "20"
    },
    {
    "rank": "1",
    "date": "2016-06-17",
    "name": "Oceania Continental Championship - Sidney (AUS) 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=6094&cat=20",
    "WetId": "6094",
    "cat_name": "female youth B lead",
    "GrpId": "20"
    }
    ],
    "rankings": [
    {
    "rank": 34,
    "name": "Worldranking",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!type=ranking&cat=5",
    "date": "2019-06-07",
    "points": "41.89"
    },
    {
    "rank": 26,
    "name": "IFSC Climbing World Cup 2019",
    "SerId": "744",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!type=ranking&cat=5&cup=744",
    "date": "2019-12-31",
    "points": "62.00"
    },
    {
    "rank": 54,
    "name": "IFSC Climbing Worldcup 2018",
    "SerId": "672",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!type=ranking&cat=5&cup=672",
    "date": "2018-12-31",
    "points": "12.00"
    },
    {
    "name": "IFSC Climbing Worldcup 2017",
    "SerId": "574",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!type=ranking&cat=5&cup=574",
    "date": "2017-12-31"
    }
    ]
    },
    {
    "lastname": "Harrison",
    "firstname": "Campbell",
    "gender": "male",
    "nation": "AUS",
    "federation": "Sport Climbing Australia",
    "fed_url": "http://www.sportclimbingaustralia.org.au",
    "state": "Victoria",
    "lead_national_rank": "NA",
    "speed_national_rank": "NA",
    "boulder_national_rank": "NA",
    "last_comp": "2019-05-03",
    "results": [
    {
    "rank": "67",
    "date": "2019-05-03",
    "name": "IFSC Climbing Worldcup (B,S) - Wujiang (CHN) 2019",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7959&cat=6",
    "WetId": "7959",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "86",
    "date": "2019-04-26",
    "name": "IFSC Climbing Worldcup (B,S) - Chongqing (CHN) 2019",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7929&cat=6",
    "WetId": "7929",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "83",
    "date": "2018-09-06",
    "name": "IFSC Climbing World Championships - Innsbruck (AUT) 2018",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1564&cat=1",
    "WetId": "1564",
    "cat_name": "lead",
    "GrpId": "1"
    },
    {
    "rank": "132",
    "date": "2018-09-06",
    "name": "IFSC Climbing World Championships - Innsbruck (AUT) 2018",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1564&cat=6",
    "WetId": "1564",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "58",
    "date": "2018-07-27",
    "name": "IFSC Climbing Worldcup (L,S) - Arco (ITA) 2018 ",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7149&cat=1",
    "WetId": "7149",
    "cat_name": "lead",
    "GrpId": "1"
    },
    {
    "rank": "43",
    "date": "2018-07-11",
    "name": "IFSC Climbing Worldcup (L,S) - Chamonix (FRA) 2018 ",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7185&cat=1",
    "WetId": "7185",
    "cat_name": "lead",
    "GrpId": "1"
    },
    {
    "rank": "58",
    "date": "2018-07-06",
    "name": "IFSC Climbing Worldcup (L,S) - Villars (SUI) 2018 ",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=7164&cat=1",
    "WetId": "7164",
    "cat_name": "lead",
    "GrpId": "1"
    },
    {
    "rank": "28",
    "date": "2017-10-14",
    "name": "IFSC Climbing Worldcup (L,S) - Xiamen (CHN) 2017",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=6206&cat=1",
    "WetId": "6206",
    "cat_name": "lead",
    "GrpId": "1"
    },
    {
    "rank": "23",
    "date": "2017-10-07",
    "name": "IFSC Climbing Worldcup (L,S) - Wujiang (CHN) 2017",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=6331&cat=1",
    "WetId": "6331",
    "cat_name": "lead",
    "GrpId": "1"
    },
    {
    "rank": "36",
    "date": "2017-09-23",
    "name": "IFSC Climbing Worldcup (L,S) - Edinburgh (GBR) 2017",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=6248&cat=1",
    "WetId": "6248",
    "cat_name": "lead",
    "GrpId": "1"
    },
    {
    "rank": "36",
    "date": "2017-08-25",
    "name": "IFSC Climbing Worldcup (L,S) - Arco (ITA) 2017 ",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=6202&cat=1",
    "WetId": "6202",
    "cat_name": "lead",
    "GrpId": "1"
    },
    {
    "rank": "126",
    "date": "2017-08-18",
    "name": "IFSC Climbing Worldcup (B) - Munich (GER) 2017 ",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=6198&cat=6",
    "WetId": "6198",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "46",
    "date": "2017-07-28",
    "name": "IFSC Climbing Worldcup (L) - Briançon (FRA) 2017",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=6190&cat=1",
    "WetId": "6190",
    "cat_name": "lead",
    "GrpId": "1"
    },
    {
    "rank": "8",
    "date": "2017-07-21",
    "name": "The World Games 2017 - Wroclaw (POL) 2017",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1611&cat=6",
    "WetId": "1611",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "8",
    "date": "2017-07-21",
    "name": "The World Games 2017 - Wroclaw (POL) 2017",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1611&cat=1",
    "WetId": "1611",
    "cat_name": "lead",
    "GrpId": "1"
    },
    {
    "rank": "18",
    "date": "2016-11-07",
    "name": "IFSC World Youth Championships - Guangzhou (CHN) - 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1616&cat=17",
    "WetId": "1616",
    "cat_name": "male juniors lead",
    "GrpId": "17"
    },
    {
    "rank": "38",
    "date": "2016-11-07",
    "name": "IFSC World Youth Championships - Guangzhou (CHN) - 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1616&cat=84",
    "WetId": "1616",
    "cat_name": "male juniors boulder",
    "GrpId": "84"
    },
    {
    "rank": "41",
    "date": "2016-11-07",
    "name": "IFSC World Youth Championships - Guangzhou (CHN) - 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1616&cat=58",
    "WetId": "1616",
    "cat_name": "male juniors speed",
    "GrpId": "58"
    },
    {
    "rank": "65",
    "date": "2016-09-14",
    "name": "IFSC Climbing World Championships - Paris (FRA) 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1563&cat=1",
    "WetId": "1563",
    "cat_name": "lead",
    "GrpId": "1"
    },
    {
    "rank": "74",
    "date": "2016-09-14",
    "name": "IFSC Climbing World Championships - Paris (FRA) 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1563&cat=6",
    "WetId": "1563",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "51",
    "date": "2016-08-26",
    "name": "IFSC Climbing Worldcup (L, S) - Arco (ITA) 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1642&cat=1",
    "WetId": "1642",
    "cat_name": "lead",
    "GrpId": "1"
    },
    {
    "rank": "58",
    "date": "2016-08-19",
    "name": "IFSC Climbing Worldcup (L) - Imst (AUT) 2016 ",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1646&cat=1",
    "WetId": "1646",
    "cat_name": "lead",
    "GrpId": "1"
    },
    {
    "rank": "101",
    "date": "2016-08-12",
    "name": "IFSC Climbing Worldcup (B) - Munich (GER) 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1639&cat=6",
    "WetId": "1639",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "50",
    "date": "2016-07-22",
    "name": "IFSC Climbing Worldcup (L) - Briançon (FRA) 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1643&cat=1",
    "WetId": "1643",
    "cat_name": "lead",
    "GrpId": "1"
    },
    {
    "rank": "60",
    "date": "2016-07-15",
    "name": "IFSC Climbing Worldcup (L, S) - Villars (SUI) 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1644&cat=1",
    "WetId": "1644",
    "cat_name": "lead",
    "GrpId": "1"
    },
    {
    "rank": "53",
    "date": "2016-07-11",
    "name": "IFSC Climbing Worldcup (L,S) -Chamonix (FRA) 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1641&cat=1",
    "WetId": "1641",
    "cat_name": "lead",
    "GrpId": "1"
    },
    {
    "rank": "1",
    "date": "2016-06-17",
    "name": "Oceania Continental Championship - Sidney (AUS) 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=6094&cat=17",
    "WetId": "6094",
    "cat_name": "male juniors lead",
    "GrpId": "17"
    },
    {
    "rank": "2",
    "date": "2016-06-17",
    "name": "Oceania Continental Championship - Sidney (AUS) 2016",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=6094&cat=1",
    "WetId": "6094",
    "cat_name": "lead",
    "GrpId": "1"
    },
    {
    "rank": "69",
    "date": "2015-08-14",
    "name": "IFSC Climbing Worldcup (B) - Munich (GER) 2015",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1584&cat=6",
    "WetId": "1584",
    "cat_name": "bouldering",
    "GrpId": "6"
    },
    {
    "rank": "15",
    "date": "2014-09-19",
    "name": "IFSC World Youth Championship - Noumea, New Caledonia (FRA) - 2014",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1498&cat=15",
    "WetId": "1498",
    "cat_name": "male youth A lead",
    "GrpId": "15"
    },
    {
    "rank": "33",
    "date": "2013-08-15",
    "name": "IFSC World Youth Championship - Central Saanich (CAN) - 2013",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1411&cat=15",
    "WetId": "1411",
    "cat_name": "male youth A lead",
    "GrpId": "15"
    },
    {
    "rank": "1",
    "date": "2013-05-25",
    "name": "Oceania Continental Championship - Nouméa (New Caledonia) 2013",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1476&cat=15",
    "WetId": "1476",
    "cat_name": "male youth A lead",
    "GrpId": "15"
    },
    {
    "rank": "46",
    "date": "2012-08-29",
    "name": "IFSC World Youth Championship - Singapore (SIN) - 2012",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1415&cat=16",
    "WetId": "1415",
    "cat_name": "male youth B lead",
    "GrpId": "16"
    }
    ],
    "rankings": [
    {
    "name": "Worldranking",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!type=ranking&cat=6",
    "date": "2019-06-07"
    },
    {
    "name": "IFSC Climbing World Cup 2019",
    "SerId": "744",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!type=ranking&cat=6&cup=744",
    "date": "2019-12-31"
    },
    {
    "name": "IFSC Climbing Worldcup 2018",
    "SerId": "672",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!type=ranking&cat=6&cup=672",
    "date": "2018-12-31"
    },
    {
    "name": "IFSC Climbing Worldcup 2017",
    "SerId": "574",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!type=ranking&cat=6&cup=574",
    "date": "2017-12-31"
    }
    ]
    },
    {
    "lastname": "Berry",
    "firstname": "Samantha",
    "gender": "female",
    "nation": "AUS",
    "federation": "Sport Climbing Australia",
    "fed_url": "http://www.sportclimbingaustralia.org.au",
    "state": "TBC",
    "lead_national_rank": "NA",
    "speed_national_rank": "NA",
    "boulder_national_rank": "NA",
    "last_comp": "2010-06-04",
    "results": [
    {
    "rank": "24",
    "date": "2010-06-04",
    "name": "IFSC Climbing Worldcup (B) - Vail (USA) 2010",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1247&cat=5",
    "WetId": "1247",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "21",
    "date": "2010-05-28",
    "name": "IFSC Climbing Worldcup (B) - Wien (AUT) 2010",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1248&cat=5",
    "WetId": "1248",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "17",
    "date": "2010-05-14",
    "name": "IFSC Climbing Worldcup (B) - Greifensee (SUI) 2010",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1258&cat=5",
    "WetId": "1258",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "35",
    "date": "2009-05-01",
    "name": "IFSC Climbing Worldcup (B) - Hall (AUT) 2009",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1190&cat=5",
    "WetId": "1190",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "15",
    "date": "2009-04-11",
    "name": "IFSC Climbing Worldcup (B) - Kazo (JPN) 2009",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=1187&cat=5",
    "WetId": "1187",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "7",
    "date": "2007-09-08",
    "name": "Int. Event (L+B+S) ROCKMASTER - Arco (ITA) 2007",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=977&cat=5",
    "WetId": "977",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "14",
    "date": "2007-06-22",
    "name": "IFSC Climbing Worldcup (B) - Fiera di Primiero (ITA) 2007",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=969&cat=5",
    "WetId": "969",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "18",
    "date": "2007-06-08",
    "name": "IFSC Climbing Worldcup (B) - Grindelwald (SUI) 2007",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=967&cat=5",
    "WetId": "967",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "6",
    "date": "2007-04-27",
    "name": "IFSC Climbing Worldcup (B) - Hall (AUT) 2007",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=961&cat=5",
    "WetId": "961",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "9",
    "date": "2007-04-20",
    "name": "IFSC Climbing Worldcup (B) - Sofia (BUL) 2007",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=960&cat=5",
    "WetId": "960",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "8",
    "date": "2007-03-30",
    "name": "IFSC Climbing Worldcup (B) - Erlangen (GER) 2007",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=958&cat=5",
    "WetId": "958",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "16",
    "date": "2006-06-23",
    "name": "UIAA Climbing Worldcup (B) - Hall (AUT) 2006",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=889&cat=5",
    "WetId": "889",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "21",
    "date": "2006-06-16",
    "name": "UIAA Climbing Worldcup (B) - Fiera di Primiero (ITA) 2006",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=888&cat=5",
    "WetId": "888",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "15",
    "date": "2006-06-09",
    "name": "UIAA Climbing Worldcup (B) - Grindelwald (SUI) 2006",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=886&cat=5",
    "WetId": "886",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "16",
    "date": "2006-03-17",
    "name": "UIAA Climbing Worldcup (B) - Birmingham (GBR) 2006",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=877&cat=5",
    "WetId": "877",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "7",
    "date": "2005-07-22",
    "name": "<big>International World Games (L+S) - Duisburg (GER) 2005</big>",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=679&cat=2",
    "WetId": "679",
    "cat_name": "lead",
    "GrpId": "2"
    },
    {
    "rank": "21",
    "date": "2005-07-12",
    "name": "UIAA Worldcup (L+S) - Chamonix (FRA) 2005",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=759&cat=2",
    "WetId": "759",
    "cat_name": "lead",
    "GrpId": "2"
    },
    {
    "rank": "28",
    "date": "2005-07-01",
    "name": "<big>UIAA World Championship - Munich (GER) 2005</big>",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=671&cat=5",
    "WetId": "671",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "37",
    "date": "2005-07-01",
    "name": "<big>UIAA World Championship - Munich (GER) 2005</big>",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=671&cat=2",
    "WetId": "671",
    "cat_name": "lead",
    "GrpId": "2"
    },
    {
    "rank": "19",
    "date": "2005-06-24",
    "name": "UIAA Worldcup (L) - Zürich (SUI) 2005",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=758&cat=2",
    "WetId": "758",
    "cat_name": "lead",
    "GrpId": "2"
    },
    {
    "rank": "20",
    "date": "2005-06-17",
    "name": "UIAA Worldcup (B) - Fiera di Primiero (ITA) 2005",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=756&cat=5",
    "WetId": "756",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "11",
    "date": "2005-03-18",
    "name": "UIAA Worldcup (B) - Birmingham (GBR) 2005",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=745&cat=5",
    "WetId": "745",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "24",
    "date": "2004-10-02",
    "name": "UIAA Worldcup - Shanghai (CHN) 2004",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=647&cat=2",
    "WetId": "647",
    "cat_name": "lead",
    "GrpId": "2"
    },
    {
    "rank": "11",
    "date": "2004-09-24",
    "name": "UIAA Worldcup - Huzou (CHN) 2004",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=650&cat=5",
    "WetId": "650",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "14",
    "date": "2004-08-19",
    "name": "UIAA Worldcup - Bardonecchia (ITA) 2004",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=645&cat=5",
    "WetId": "645",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "5",
    "date": "2004-04-16",
    "name": "UIAA Worldcup - Erlangen (GER) 2004",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=635&cat=5",
    "WetId": "635",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "9",
    "date": "2004-04-02",
    "name": "UIAA Worldcup - Birmingham (GBR) 2004",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=634&cat=5",
    "WetId": "634",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "5",
    "date": "2003-07-25",
    "name": "UIAA Worldcup - L'Argentière (FRA) 2003",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=585&cat=5",
    "WetId": "585",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "13",
    "date": "2003-07-09",
    "name": "<big>UIAA Worldchampionship - Chamonix (FRA) 2003</big>",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=534&cat=5",
    "WetId": "534",
    "cat_name": "bouldering",
    "GrpId": "5"
    },
    {
    "rank": "29",
    "date": "2003-06-25",
    "name": "UIAA Worldcup - Lecco (ITA) 2003 (boulder)",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!comp=584&cat=5",
    "WetId": "584",
    "cat_name": "bouldering",
    "GrpId": "5"
    }
    ],
    "rankings": [
    {
    "name": "Worldranking",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!type=ranking&cat=5",
    "date": "2019-06-07"
    },
    {
    "name": "IFSC Climbing World Cup 2019",
    "SerId": "744",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!type=ranking&cat=5&cup=744",
    "date": "2019-12-31"
    },
    {
    "name": "IFSC Climbing Worldcup 2018",
    "SerId": "672",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!type=ranking&cat=5&cup=672",
    "date": "2018-12-31"
    },
    {
    "name": "IFSC Climbing Worldcup 2017",
    "SerId": "574",
    "url": "https://www.ifsc-climbing.org/index.php/world-competition#!type=ranking&cat=5&cup=574",
    "date": "2017-12-31"
    }
    ]
    }
]

athletes.each do |athlete|
  # binding.pry
  profile = Profile.new
  profile.first_name = athlete[:firstname]
  profile.surname = athlete[:lastname]
  profile.gender = athlete[:gender]
  profile.state = athlete[:state]
  profile.lead_national_ranking = athlete[:lead_national_rank]
  profile.boulder_national_ranking = athlete[:boulder_national_rank]
  # profile.world_ranking = athlete[:rankings][:name]
  profile.website = athlete[:homepage]
  profile.facebook = athlete[:facebook]
  profile.instagram = athlete[:instagram]
  profile.last_comp = athlete[:slast_comp]
  profile.photo = athlete[:photo]
  profile.save
  
  athlete[:results].each do |comp_result|
    result = Result.new
    result.profile_id = profile.id
    result.rank = comp_result[:rank]
    result.date = comp_result[:date]
    result.name = comp_result[:name]
    result.url = comp_result[:url]
    result.cat_name = comp_result[:cat_name]
    result.save
  end
end

#Going to need to do an update script when athletes are in and need to modify