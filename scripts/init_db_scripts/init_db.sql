-- Database: septa_crime_dev

-- DROP DATABASE septa_crime_dev;

DROP TABLE IF EXISTS  csv_rail_stops;

CREATE TABLE csv_rail_stops
(
    id serial primary key,
    stop_id character varying(255),
    stop_name character varying(255),
    stop_desc character varying(255),
    stop_lat double precision,
    stop_lon double precision,
    zone_id character varying(255)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE csv_rail_stops
  OWNER TO opengeo;

COPY csv_rail_stops FROM STDIN DELIMITER ',' CSV HEADER;

stop_id,stop_name, stop_desc, stop_lat, stop_lon, zone_id
90001,Cynwyd,Cynwyd Line,40.0066667,-75.2316667,2
90002,Bala,Cynwyd Line,40.0011111,-75.2277778,2
90003,Wynnefield Avenue,Cynwyd Line,39.99,-75.2255556,1
90004,30th Street Station,All Regional Rail
Lines,39.9566667,-75.1816667,C
90005,Suburban Station,All Regional Rail Lines,39.9538889,-75.1677778,C
90006,Market East,All Regional Rail Lines,39.9525,-75.1580556,C
90007,Temple University,All Regional Rail Lines,39.9813889,-75.1494444,C
90008,North Broad,Multiple Lines,39.9922222,-75.1538889,1
90009,Wayne Junction,Multiple Lines,40.0222222,-75.16,1
90201,Newark,Wilmington Newark Line,39.6705556,-75.7527778,4
90202,Churchman's Crossing,Wilmington Newark Line,39.695,-75.6725,4
90203,Wilmington,Wilmington Newark Line,39.7372222,-75.5511111,4
90204,Claymont,Wilmington Newark Line,39.7977778,-75.4522222,4
90205,Marcus Hook,Wilmington Newark Line,39.8216667,-75.4194444,3
90206,Highland Avenue,Wilmington Newark Line,39.8336111,-75.3933333,3
90207,Chester,Wilmington Newark Line,39.8497222,-75.36,3
90208,Eddystone,Wilmington Newark Line,39.8572222,-75.3422222,3
90209,Crum Lynne,Wilmington Newark Line,39.8719444,-75.3311111,3
90210,Ridley Park,Wilmington Newark Line,39.8805556,-75.3222222,3
90211,Prospect Park - Moore,Wilmington Newark
Line,39.8883333,-75.3088889,2
90212,Norwood,Wilmington Newark Line,39.8916667,-75.3016667,2
90213,Glenolden,Wilmington Newark Line,39.8963889,-75.29,2
90214,Folcroft,Wilmington Newark Line,39.9005556,-75.2797222,2
90215,Sharon Hill,Wilmington Newark Line,39.9044444,-75.2708333,2
90216,Curtis Park,Wilmington Newark Line,39.9080556,-75.265,2
90217,Darby,Wilmington Newark Line,39.9130556,-75.2544444,2
90218,Allegheny,Manayunk Norristown Line,40.0036111,-75.1647222,1
90219,East Falls,Manayunk Norristown Line,40.0113889,-75.1919444,1
90220,Wissahickon,Manayunk Norristown Line,40.0166667,-75.2102778,2
90221,Manayunk,Manayunk Norristown Line,40.0269444,-75.225,2
90222,Ivy Ridge,Manayunk Norristown Line,40.0341667,-75.2355556,2
90223,Miquon,Manayunk Norristown Line,40.0586111,-75.2663889,2
90224,Spring Mill,Manayunk Norristown Line,40.0741667,-75.2861111,3
90225,Conshohocken,Manayunk Norristown Line,40.0722222,-75.3086111,3
90226,Norristown T.C.,Manayunk Norristown Line,40.1127778,-75.3441667,3
90227,Main Street,Manayunk Norristown Line,40.1172222,-75.3486111,3
90228,Norristown,Manayunk Norristown Line,40.1202778,-75.3475,3
90301,Elwyn,Media Elwyn Line,39.9075,-75.4116667,3
90302,Media,Media Elwyn Line,39.9144444,-75.395,3
90303,Moylan-Rose Valley,Media Elwyn Line,39.9061111,-75.3886111,3
90304,Wallingford,Media Elwyn Line,39.9036111,-75.3719444,3
90305,Swarthmore,Media Elwyn Line,39.9022222,-75.3508333,3
90306,Morton-Rutledge,Media Elwyn Line,39.9077778,-75.3288889,2
90307,Secane,Media Elwyn Line,39.9158333,-75.3097222,2
90308,Primos,Media Elwyn Line,39.9216667,-75.2983333,2
90309,Clifton-Aldan,Media Elwyn Line,39.9266667,-75.2902778,2
90310,Gladstone,Media Elwyn Line,39.9327778,-75.2822222,2
90311,Lansdowne,Media Elwyn Line,39.9375,-75.2708333,2
90312,Fernwood-Yeadon,Media Elwyn Line,39.9397222,-75.2558333,2
90313,Angora,Media Elwyn Line,39.9447222,-75.2386111,1
90314,49th Street,Media Elwyn Line,39.9436111,-75.2166667,1
90315,Noble,West Trenton Line,40.1044444,-75.1241667,3
90316,Rydal,West Trenton Line,40.1075,-75.1105556,3
90317,Meadowbrook,West Trenton Line,40.1113889,-75.0925,3
90318,Bethayres,West Trenton Line,40.1166667,-75.0683333,3
90319,Philmont,West Trenton Line,40.1219444,-75.0436111,3
90320,Forest Hills,West Trenton Line,40.1277778,-75.0205556,3
90321,Somerton,West Trenton Line,40.1305556,-75.0119444,3
90322,Trevose,West Trenton Line,40.1402778,-74.9825,3
90323,Neshaminy,West Trenton Line,40.1469444,-74.9616667,3
90324,Langhorne,West Trenton Line,40.1608333,-74.9125,4
90325,Woodbourne,West Trenton Line,40.1925,-74.8891667,4
90326,Yardley,West Trenton Line,40.2352778,-74.8305556,4
90327,West Trenton,West Trenton Line,40.2577778,-74.8152778,NJ
90401,Airport Terminal E F,Airport Line,39.8794444,-75.2397222,4
90402,Airport Terminal C D,Airport Line,39.8780556,-75.24,4
90403,Airport Terminal B,Airport Line,39.8772222,-75.2413889,4
90404,Airport Terminal A,Airport Line,39.8761111,-75.2452778,4
90405,Eastwick,Airport Line,39.8927778,-75.2438889,2
90406,University City,Multiple Lines,39.9480556,-75.1902778,C
90407,Fern Rock T C,Multiple Lines,40.0405556,-75.1347222,1
90408,Melrose Park,Multiple Lines,40.0594444,-75.1291667,2
90409,Elkins Park,Multiple Lines,40.0713889,-75.1277778,2
90410,Jenkintown Wyncote,Multiple Lines,40.0927778,-75.1375,3
90411,Glenside,Multiple Lines,40.1013889,-75.1536111,3
90412,Ardsley,Warminster Line,40.1141667,-75.1530556,3
90413,Roslyn,Warminster Line,40.1208333,-75.1341667,3
90414,Crestmont,Warminster Line,40.1333333,-75.1186111,3
90415,Willow Grove,Warminster Line,40.1438889,-75.1141667,3
90416,Hatboro,Warminster Line,40.1761111,-75.1025,4
90417,Warminster,Warminster Line,40.1952778,-75.0891667,4
90501,Thorndale,Paoli Thorndale Line,39.9927778,-75.7636111,4
90502,Downingtown,Paoli Thorndale Line,40.0022222,-75.7102778,4
90503,Whitford,Paoli Thorndale Line,40.0147222,-75.6380556,4
90504,Exton,Paoli Thorndale Line,40.0191667,-75.6227778,4
90505,Malvern,Paoli Thorndale Line,40.0363889,-75.5155556,4
90506,Paoli,Paoli Thorndale Line,40.0430556,-75.4827778,4
90507,Daylesford,Paoli Thorndale Line,40.0430556,-75.4605556,3
90508,Berwyn,Paoli Thorndale Line,40.0480556,-75.4422222,3
90509,Devon,Paoli Thorndale Line,40.0472222,-75.4227778,3
90510,Strafford,Paoli Thorndale Line,40.0494444,-75.4030556,3
90511,Wayne,Paoli Thorndale Line,40.0458333,-75.3866667,3
90512,St. Davids,Paoli Thorndale Line,40.0438889,-75.3725,3
90513,Radnor,Paoli Thorndale Line,40.0447222,-75.3588889,3
90514,Villanova,Paoli Thorndale Line,40.0383333,-75.3416667,3
90515,Rosemont,Paoli Thorndale Line,40.0277778,-75.3266667,3
90516,Bryn Mawr,Paoli Thorndale Line,40.0219444,-75.3163889,3
90517,Haverford,Paoli Thorndale Line,40.0138889,-75.2997222,2
90518,Ardmore,Paoli Thorndale Line,40.0083333,-75.2902778,2
90519,Wynnewood,Paoli Thorndale Line,40.0027778,-75.2725,2
90520,Narberth,Paoli Thorndale Line,40.0047222,-75.2613889,2
90521,Merion,Paoli Thorndale Line,39.9986111,-75.2513889,2
90522,Overbrook,Paoli Thorndale Line,39.9894444,-75.2494444,2
90523,North Hills,Lansdale Doylestown Line,40.1119444,-75.1694444,3
90524,Oreland,Lansdale Doylestown Line,40.1183333,-75.1838889,3
90525,Fort Washington,Lansdale Doylestown Line,40.1358333,-75.2122222,3
90526,Ambler,Lansdale Doylestown Line,40.1536111,-75.2247222,3
90527,Penllyn,Lansdale Doylestown Line,40.17,-75.2441667,3
90528,Gwynedd Valley,Lansdale Doylestown Line,40.1847222,-75.2569444,3
90529,North Wales,Lansdale Doylestown Line,40.2141667,-75.2772222,4
90530,Pennbrook,Lansdale Doylestown Line,40.2302778,-75.2816667,4
90531,Lansdale,Lansdale Doylestown Line,40.2427778,-75.285,4
90532,Fortuna,Lansdale Doylestown Line,40.2594444,-75.2661111,4
90533,Colmar,Lansdale Doylestown Line,40.2683333,-75.2544444,4
90534,Link Belt,Lansdale Doylestown Line,40.2738889,-75.2466667,4
90535,Chalfont,Lansdale Doylestown Line,40.2877778,-75.2097222,4
90536,New Britain,Lansdale Doylestown Line,40.2975,-75.1797222,4
90537,Delaware Valley College,Lansdale Doylestown
Line,40.2972222,-75.1616667,4
90538,Doylestown,Lansdale Doylestown Line,40.3063889,-75.1302778,4
90701,Trenton,Trenton Line,40.2177778,-74.755,NJ
90702,Levittown-Tullytown,Trenton Line,40.1402778,-74.8169444,4
90703,Bristol,Trenton Line,40.1047222,-74.8547222,4
90704,Croydon,Trenton Line,40.0936111,-74.9066667,3
90705,Eddington,Trenton Line,40.0830556,-74.9336111,3
90706,Cornwells Heights,Trenton Line,40.0716667,-74.9522222,3
90707,Torresdale,Trenton Line,40.0544444,-74.9844444,3
90708,Holmesburg Jct,Trenton Line,40.0327778,-75.0236111,2
90709,Tacony,Trenton Line,40.0233333,-75.0388889,2
90710,Bridesburg,Trenton Line,40.0105556,-75.0697222,2
90711,North Philadelphia Amtrak,Trenton Line,39.9972222,-75.155,1
90712,Wister,Chestnut Hill East Line,40.0361111,-75.1611111,1
90713,Germantown,Chestnut Hill East Line,40.0375,-75.1716667,1
90714,Washington Lane,Chestnut Hill East Line,40.0508333,-75.1713889,2
90715,Stenton,Chestnut Hill East Line,40.0605556,-75.1786111,2
90716,Sedgwick,Chestnut Hill East Line,40.0627778,-75.1852778,2
90717,Mount Airy,Chestnut Hill East Line,40.0652778,-75.1908333,2
90718,Wyndmoor,Chestnut Hill East Line,40.0733333,-75.1966667,2
90719,Gravers,Chestnut Hill East Line,40.0775,-75.2016667,2
90720,Chestnut Hill East,Chestnut Hill East
Line,40.0811111,-75.2072222,2
90801,Chestnut Hill West,Chestnut Hill West
Line,40.0763889,-75.2083333,2
90802,Highland,Chestnut Hill West Line,40.0705556,-75.2111111,2
90803,St. Martins,Chestnut Hill West Line,40.0658333,-75.2044444,2
90804,Allen Lane,Chestnut Hill West Line,40.0575,-75.1947222,2
90805,Carpenter,Chestnut Hill West Line,40.0511111,-75.1913889,2
90806,Upsal,Chestnut Hill West Line,40.0425,-75.19,2
90807,Tulpehocken,Chestnut Hill West Line,40.0352778,-75.1869444,2
90808,Chelten Avenue,Chestnut Hill West Line,40.03,-75.1808333,1
90809,Queen Lane,Chestnut Hill West Line,40.0233333,-75.1780556,1
90810,North Philadelphia,Chestnut Hill West
Line,39.9977778,-75.1563889,1
90811,Olney,Fox Chase Line,40.0333333,-75.1227778,1
90812,Lawndale,Fox Chase Line,40.0513889,-75.1030556,2
90813,Cheltenham,Fox Chase Line,40.0580556,-75.0927778,2
90814,Ryers,Fox Chase Line,40.0641667,-75.0863889,2
90815,Fox Chase,Fox Chase Line,40.0763889,-75.0833333,2
\.
