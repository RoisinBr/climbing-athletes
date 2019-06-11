require 'pry'
require_relative 'db_config'
require_relative 'models/profile'

athletes =
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
}

# athletes.each do |athlete|
    profile = Profile.new
    profile.first_name = athletes[:firstname]
    profile.surname = athletes[:lastname]
    profile.save   
# end

#Going to need to do an update script when athletes are in and need to modify