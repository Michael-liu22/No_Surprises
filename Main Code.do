****CODE PREP****

cd "/Users/michael/Documents/2025 - NSA Evaluation/Analysis/Revision #1 Analysis"

set more off

clear
quietly infix                   ///
  int     year       1-4        ///
  long    serial     5-9        ///
  byte    month      10-11      ///
  double  cpsid      12-25      ///
  byte    asecflag   26-26      ///
  double  asecwth    27-37      ///
  byte    mish       38-38      ///
  byte    numprec    39-40      ///
  byte    hhintype   41-41      ///
  byte    statefip   42-43      ///
  double  hhincome   44-51      ///
  byte    foodstmp   52-52      ///
  long    stampval   53-57      ///
  byte    pernum     58-59      ///
  double  cpsidp     60-73      ///
  double  cpsidv     74-88      ///
  double  asecwt     89-99      ///
  byte    age        100-101    ///
  byte    sex        102-102    ///
  int     race       103-105    ///
  byte    marst      106-106    ///
  int     hispan     107-109    ///
  byte    empstat    110-111    ///
  int     educ       112-114    ///
  byte    repwtp     115-115    ///
  double  repwtp1    116-125    ///
  double  repwtp2    126-135    ///
  double  repwtp3    136-145    ///
  double  repwtp4    146-155    ///
  double  repwtp5    156-165    ///
  double  repwtp6    166-175    ///
  double  repwtp7    176-185    ///
  double  repwtp8    186-195    ///
  double  repwtp9    196-205    ///
  double  repwtp10   206-215    ///
  double  repwtp11   216-225    ///
  double  repwtp12   226-235    ///
  double  repwtp13   236-245    ///
  double  repwtp14   246-255    ///
  double  repwtp15   256-265    ///
  double  repwtp16   266-275    ///
  double  repwtp17   276-285    ///
  double  repwtp18   286-295    ///
  double  repwtp19   296-305    ///
  double  repwtp20   306-315    ///
  double  repwtp21   316-325    ///
  double  repwtp22   326-335    ///
  double  repwtp23   336-345    ///
  double  repwtp24   346-355    ///
  double  repwtp25   356-365    ///
  double  repwtp26   366-375    ///
  double  repwtp27   376-385    ///
  double  repwtp28   386-395    ///
  double  repwtp29   396-405    ///
  double  repwtp30   406-415    ///
  double  repwtp31   416-425    ///
  double  repwtp32   426-435    ///
  double  repwtp33   436-445    ///
  double  repwtp34   446-455    ///
  double  repwtp35   456-465    ///
  double  repwtp36   466-475    ///
  double  repwtp37   476-485    ///
  double  repwtp38   486-495    ///
  double  repwtp39   496-505    ///
  double  repwtp40   506-515    ///
  double  repwtp41   516-525    ///
  double  repwtp42   526-535    ///
  double  repwtp43   536-545    ///
  double  repwtp44   546-555    ///
  double  repwtp45   556-565    ///
  double  repwtp46   566-575    ///
  double  repwtp47   576-585    ///
  double  repwtp48   586-595    ///
  double  repwtp49   596-605    ///
  double  repwtp50   606-615    ///
  double  repwtp51   616-625    ///
  double  repwtp52   626-635    ///
  double  repwtp53   636-645    ///
  double  repwtp54   646-655    ///
  double  repwtp55   656-665    ///
  double  repwtp56   666-675    ///
  double  repwtp57   676-685    ///
  double  repwtp58   686-695    ///
  double  repwtp59   696-705    ///
  double  repwtp60   706-715    ///
  double  repwtp61   716-725    ///
  double  repwtp62   726-735    ///
  double  repwtp63   736-745    ///
  double  repwtp64   746-755    ///
  double  repwtp65   756-765    ///
  double  repwtp66   766-775    ///
  double  repwtp67   776-785    ///
  double  repwtp68   786-795    ///
  double  repwtp69   796-805    ///
  double  repwtp70   806-815    ///
  double  repwtp71   816-825    ///
  double  repwtp72   826-835    ///
  double  repwtp73   836-845    ///
  double  repwtp74   846-855    ///
  double  repwtp75   856-865    ///
  double  repwtp76   866-875    ///
  double  repwtp77   876-885    ///
  double  repwtp78   886-895    ///
  double  repwtp79   896-905    ///
  double  repwtp80   906-915    ///
  double  repwtp81   916-925    ///
  double  repwtp82   926-935    ///
  double  repwtp83   936-945    ///
  double  repwtp84   946-955    ///
  double  repwtp85   956-965    ///
  double  repwtp86   966-975    ///
  double  repwtp87   976-985    ///
  double  repwtp88   986-995    ///
  double  repwtp89   996-1005   ///
  double  repwtp90   1006-1015  ///
  double  repwtp91   1016-1025  ///
  double  repwtp92   1026-1035  ///
  double  repwtp93   1036-1045  ///
  double  repwtp94   1046-1055  ///
  double  repwtp95   1056-1065  ///
  double  repwtp96   1066-1075  ///
  double  repwtp97   1076-1085  ///
  double  repwtp98   1086-1095  ///
  double  repwtp99   1096-1105  ///
  double  repwtp100  1106-1115  ///
  double  repwtp101  1116-1125  ///
  double  repwtp102  1126-1135  ///
  double  repwtp103  1136-1145  ///
  double  repwtp104  1146-1155  ///
  double  repwtp105  1156-1165  ///
  double  repwtp106  1166-1175  ///
  double  repwtp107  1176-1185  ///
  double  repwtp108  1186-1195  ///
  double  repwtp109  1196-1205  ///
  double  repwtp110  1206-1215  ///
  double  repwtp111  1216-1225  ///
  double  repwtp112  1226-1235  ///
  double  repwtp113  1236-1245  ///
  double  repwtp114  1246-1255  ///
  double  repwtp115  1256-1265  ///
  double  repwtp116  1266-1275  ///
  double  repwtp117  1276-1285  ///
  double  repwtp118  1286-1295  ///
  double  repwtp119  1296-1305  ///
  double  repwtp120  1306-1315  ///
  double  repwtp121  1316-1325  ///
  double  repwtp122  1326-1335  ///
  double  repwtp123  1336-1345  ///
  double  repwtp124  1346-1355  ///
  double  repwtp125  1356-1365  ///
  double  repwtp126  1366-1375  ///
  double  repwtp127  1376-1385  ///
  double  repwtp128  1386-1395  ///
  double  repwtp129  1396-1405  ///
  double  repwtp130  1406-1415  ///
  double  repwtp131  1416-1425  ///
  double  repwtp132  1426-1435  ///
  double  repwtp133  1436-1445  ///
  double  repwtp134  1446-1455  ///
  double  repwtp135  1456-1465  ///
  double  repwtp136  1466-1475  ///
  double  repwtp137  1476-1485  ///
  double  repwtp138  1486-1495  ///
  double  repwtp139  1496-1505  ///
  double  repwtp140  1506-1515  ///
  double  repwtp141  1516-1525  ///
  double  repwtp142  1526-1535  ///
  double  repwtp143  1536-1545  ///
  double  repwtp144  1546-1555  ///
  double  repwtp145  1556-1565  ///
  double  repwtp146  1566-1575  ///
  double  repwtp147  1576-1585  ///
  double  repwtp148  1586-1595  ///
  double  repwtp149  1596-1605  ///
  double  repwtp150  1606-1615  ///
  double  repwtp151  1616-1625  ///
  double  repwtp152  1626-1635  ///
  double  repwtp153  1636-1645  ///
  double  repwtp154  1646-1655  ///
  double  repwtp155  1656-1665  ///
  double  repwtp156  1666-1675  ///
  double  repwtp157  1676-1685  ///
  double  repwtp158  1686-1695  ///
  double  repwtp159  1696-1705  ///
  double  repwtp160  1706-1715  ///
  double  ftotval    1716-1725  ///
  double  inctot     1726-1734  ///
  byte    offpov     1735-1736  ///
  byte    paidgh     1737-1738  ///
  byte    himcaidly  1739-1739  ///
  byte    himcarely  1740-1740  ///
  byte    himcaidnw  1741-1741  ///
  byte    himcarenw  1742-1742  ///
  byte    hichamp    1743-1743  ///
  byte    phinsur    1744-1744  ///
  byte    phiown     1745-1745  ///
  byte    caidly     1746-1746  ///
  byte    caidnw     1747-1747  ///
  long    moop       1748-1754  ///
  long    hipval     1755-1761  ///
  byte    pubcovly   1762-1763  ///
  byte    grpcovly   1764-1764  ///
  byte    grpdeply   1765-1765  ///
  byte    grpownly   1766-1766  ///
  byte    grpoutly   1767-1767  ///
  byte    grpcoutly  1768-1769  ///
  byte    grptyply   1770-1770  ///
  byte    dpcovly    1771-1772  ///
  using `"cps_00012.dat"'

replace asecwth   = asecwth   / 10000
replace asecwt    = asecwt    / 10000
replace repwtp1   = repwtp1   / 10000
replace repwtp2   = repwtp2   / 10000
replace repwtp3   = repwtp3   / 10000
replace repwtp4   = repwtp4   / 10000
replace repwtp5   = repwtp5   / 10000
replace repwtp6   = repwtp6   / 10000
replace repwtp7   = repwtp7   / 10000
replace repwtp8   = repwtp8   / 10000
replace repwtp9   = repwtp9   / 10000
replace repwtp10  = repwtp10  / 10000
replace repwtp11  = repwtp11  / 10000
replace repwtp12  = repwtp12  / 10000
replace repwtp13  = repwtp13  / 10000
replace repwtp14  = repwtp14  / 10000
replace repwtp15  = repwtp15  / 10000
replace repwtp16  = repwtp16  / 10000
replace repwtp17  = repwtp17  / 10000
replace repwtp18  = repwtp18  / 10000
replace repwtp19  = repwtp19  / 10000
replace repwtp20  = repwtp20  / 10000
replace repwtp21  = repwtp21  / 10000
replace repwtp22  = repwtp22  / 10000
replace repwtp23  = repwtp23  / 10000
replace repwtp24  = repwtp24  / 10000
replace repwtp25  = repwtp25  / 10000
replace repwtp26  = repwtp26  / 10000
replace repwtp27  = repwtp27  / 10000
replace repwtp28  = repwtp28  / 10000
replace repwtp29  = repwtp29  / 10000
replace repwtp30  = repwtp30  / 10000
replace repwtp31  = repwtp31  / 10000
replace repwtp32  = repwtp32  / 10000
replace repwtp33  = repwtp33  / 10000
replace repwtp34  = repwtp34  / 10000
replace repwtp35  = repwtp35  / 10000
replace repwtp36  = repwtp36  / 10000
replace repwtp37  = repwtp37  / 10000
replace repwtp38  = repwtp38  / 10000
replace repwtp39  = repwtp39  / 10000
replace repwtp40  = repwtp40  / 10000
replace repwtp41  = repwtp41  / 10000
replace repwtp42  = repwtp42  / 10000
replace repwtp43  = repwtp43  / 10000
replace repwtp44  = repwtp44  / 10000
replace repwtp45  = repwtp45  / 10000
replace repwtp46  = repwtp46  / 10000
replace repwtp47  = repwtp47  / 10000
replace repwtp48  = repwtp48  / 10000
replace repwtp49  = repwtp49  / 10000
replace repwtp50  = repwtp50  / 10000
replace repwtp51  = repwtp51  / 10000
replace repwtp52  = repwtp52  / 10000
replace repwtp53  = repwtp53  / 10000
replace repwtp54  = repwtp54  / 10000
replace repwtp55  = repwtp55  / 10000
replace repwtp56  = repwtp56  / 10000
replace repwtp57  = repwtp57  / 10000
replace repwtp58  = repwtp58  / 10000
replace repwtp59  = repwtp59  / 10000
replace repwtp60  = repwtp60  / 10000
replace repwtp61  = repwtp61  / 10000
replace repwtp62  = repwtp62  / 10000
replace repwtp63  = repwtp63  / 10000
replace repwtp64  = repwtp64  / 10000
replace repwtp65  = repwtp65  / 10000
replace repwtp66  = repwtp66  / 10000
replace repwtp67  = repwtp67  / 10000
replace repwtp68  = repwtp68  / 10000
replace repwtp69  = repwtp69  / 10000
replace repwtp70  = repwtp70  / 10000
replace repwtp71  = repwtp71  / 10000
replace repwtp72  = repwtp72  / 10000
replace repwtp73  = repwtp73  / 10000
replace repwtp74  = repwtp74  / 10000
replace repwtp75  = repwtp75  / 10000
replace repwtp76  = repwtp76  / 10000
replace repwtp77  = repwtp77  / 10000
replace repwtp78  = repwtp78  / 10000
replace repwtp79  = repwtp79  / 10000
replace repwtp80  = repwtp80  / 10000
replace repwtp81  = repwtp81  / 10000
replace repwtp82  = repwtp82  / 10000
replace repwtp83  = repwtp83  / 10000
replace repwtp84  = repwtp84  / 10000
replace repwtp85  = repwtp85  / 10000
replace repwtp86  = repwtp86  / 10000
replace repwtp87  = repwtp87  / 10000
replace repwtp88  = repwtp88  / 10000
replace repwtp89  = repwtp89  / 10000
replace repwtp90  = repwtp90  / 10000
replace repwtp91  = repwtp91  / 10000
replace repwtp92  = repwtp92  / 10000
replace repwtp93  = repwtp93  / 10000
replace repwtp94  = repwtp94  / 10000
replace repwtp95  = repwtp95  / 10000
replace repwtp96  = repwtp96  / 10000
replace repwtp97  = repwtp97  / 10000
replace repwtp98  = repwtp98  / 10000
replace repwtp99  = repwtp99  / 10000
replace repwtp100 = repwtp100 / 10000
replace repwtp101 = repwtp101 / 10000
replace repwtp102 = repwtp102 / 10000
replace repwtp103 = repwtp103 / 10000
replace repwtp104 = repwtp104 / 10000
replace repwtp105 = repwtp105 / 10000
replace repwtp106 = repwtp106 / 10000
replace repwtp107 = repwtp107 / 10000
replace repwtp108 = repwtp108 / 10000
replace repwtp109 = repwtp109 / 10000
replace repwtp110 = repwtp110 / 10000
replace repwtp111 = repwtp111 / 10000
replace repwtp112 = repwtp112 / 10000
replace repwtp113 = repwtp113 / 10000
replace repwtp114 = repwtp114 / 10000
replace repwtp115 = repwtp115 / 10000
replace repwtp116 = repwtp116 / 10000
replace repwtp117 = repwtp117 / 10000
replace repwtp118 = repwtp118 / 10000
replace repwtp119 = repwtp119 / 10000
replace repwtp120 = repwtp120 / 10000
replace repwtp121 = repwtp121 / 10000
replace repwtp122 = repwtp122 / 10000
replace repwtp123 = repwtp123 / 10000
replace repwtp124 = repwtp124 / 10000
replace repwtp125 = repwtp125 / 10000
replace repwtp126 = repwtp126 / 10000
replace repwtp127 = repwtp127 / 10000
replace repwtp128 = repwtp128 / 10000
replace repwtp129 = repwtp129 / 10000
replace repwtp130 = repwtp130 / 10000
replace repwtp131 = repwtp131 / 10000
replace repwtp132 = repwtp132 / 10000
replace repwtp133 = repwtp133 / 10000
replace repwtp134 = repwtp134 / 10000
replace repwtp135 = repwtp135 / 10000
replace repwtp136 = repwtp136 / 10000
replace repwtp137 = repwtp137 / 10000
replace repwtp138 = repwtp138 / 10000
replace repwtp139 = repwtp139 / 10000
replace repwtp140 = repwtp140 / 10000
replace repwtp141 = repwtp141 / 10000
replace repwtp142 = repwtp142 / 10000
replace repwtp143 = repwtp143 / 10000
replace repwtp144 = repwtp144 / 10000
replace repwtp145 = repwtp145 / 10000
replace repwtp146 = repwtp146 / 10000
replace repwtp147 = repwtp147 / 10000
replace repwtp148 = repwtp148 / 10000
replace repwtp149 = repwtp149 / 10000
replace repwtp150 = repwtp150 / 10000
replace repwtp151 = repwtp151 / 10000
replace repwtp152 = repwtp152 / 10000
replace repwtp153 = repwtp153 / 10000
replace repwtp154 = repwtp154 / 10000
replace repwtp155 = repwtp155 / 10000
replace repwtp156 = repwtp156 / 10000
replace repwtp157 = repwtp157 / 10000
replace repwtp158 = repwtp158 / 10000
replace repwtp159 = repwtp159 / 10000
replace repwtp160 = repwtp160 / 10000

format cpsid     %14.0f
format asecwth   %11.4f
format hhincome  %8.0f
format cpsidp    %14.0f
format cpsidv    %15.0f
format asecwt    %11.4f
format repwtp1   %10.4f
format repwtp2   %10.4f
format repwtp3   %10.4f
format repwtp4   %10.4f
format repwtp5   %10.4f
format repwtp6   %10.4f
format repwtp7   %10.4f
format repwtp8   %10.4f
format repwtp9   %10.4f
format repwtp10  %10.4f
format repwtp11  %10.4f
format repwtp12  %10.4f
format repwtp13  %10.4f
format repwtp14  %10.4f
format repwtp15  %10.4f
format repwtp16  %10.4f
format repwtp17  %10.4f
format repwtp18  %10.4f
format repwtp19  %10.4f
format repwtp20  %10.4f
format repwtp21  %10.4f
format repwtp22  %10.4f
format repwtp23  %10.4f
format repwtp24  %10.4f
format repwtp25  %10.4f
format repwtp26  %10.4f
format repwtp27  %10.4f
format repwtp28  %10.4f
format repwtp29  %10.4f
format repwtp30  %10.4f
format repwtp31  %10.4f
format repwtp32  %10.4f
format repwtp33  %10.4f
format repwtp34  %10.4f
format repwtp35  %10.4f
format repwtp36  %10.4f
format repwtp37  %10.4f
format repwtp38  %10.4f
format repwtp39  %10.4f
format repwtp40  %10.4f
format repwtp41  %10.4f
format repwtp42  %10.4f
format repwtp43  %10.4f
format repwtp44  %10.4f
format repwtp45  %10.4f
format repwtp46  %10.4f
format repwtp47  %10.4f
format repwtp48  %10.4f
format repwtp49  %10.4f
format repwtp50  %10.4f
format repwtp51  %10.4f
format repwtp52  %10.4f
format repwtp53  %10.4f
format repwtp54  %10.4f
format repwtp55  %10.4f
format repwtp56  %10.4f
format repwtp57  %10.4f
format repwtp58  %10.4f
format repwtp59  %10.4f
format repwtp60  %10.4f
format repwtp61  %10.4f
format repwtp62  %10.4f
format repwtp63  %10.4f
format repwtp64  %10.4f
format repwtp65  %10.4f
format repwtp66  %10.4f
format repwtp67  %10.4f
format repwtp68  %10.4f
format repwtp69  %10.4f
format repwtp70  %10.4f
format repwtp71  %10.4f
format repwtp72  %10.4f
format repwtp73  %10.4f
format repwtp74  %10.4f
format repwtp75  %10.4f
format repwtp76  %10.4f
format repwtp77  %10.4f
format repwtp78  %10.4f
format repwtp79  %10.4f
format repwtp80  %10.4f
format repwtp81  %10.4f
format repwtp82  %10.4f
format repwtp83  %10.4f
format repwtp84  %10.4f
format repwtp85  %10.4f
format repwtp86  %10.4f
format repwtp87  %10.4f
format repwtp88  %10.4f
format repwtp89  %10.4f
format repwtp90  %10.4f
format repwtp91  %10.4f
format repwtp92  %10.4f
format repwtp93  %10.4f
format repwtp94  %10.4f
format repwtp95  %10.4f
format repwtp96  %10.4f
format repwtp97  %10.4f
format repwtp98  %10.4f
format repwtp99  %10.4f
format repwtp100 %10.4f
format repwtp101 %10.4f
format repwtp102 %10.4f
format repwtp103 %10.4f
format repwtp104 %10.4f
format repwtp105 %10.4f
format repwtp106 %10.4f
format repwtp107 %10.4f
format repwtp108 %10.4f
format repwtp109 %10.4f
format repwtp110 %10.4f
format repwtp111 %10.4f
format repwtp112 %10.4f
format repwtp113 %10.4f
format repwtp114 %10.4f
format repwtp115 %10.4f
format repwtp116 %10.4f
format repwtp117 %10.4f
format repwtp118 %10.4f
format repwtp119 %10.4f
format repwtp120 %10.4f
format repwtp121 %10.4f
format repwtp122 %10.4f
format repwtp123 %10.4f
format repwtp124 %10.4f
format repwtp125 %10.4f
format repwtp126 %10.4f
format repwtp127 %10.4f
format repwtp128 %10.4f
format repwtp129 %10.4f
format repwtp130 %10.4f
format repwtp131 %10.4f
format repwtp132 %10.4f
format repwtp133 %10.4f
format repwtp134 %10.4f
format repwtp135 %10.4f
format repwtp136 %10.4f
format repwtp137 %10.4f
format repwtp138 %10.4f
format repwtp139 %10.4f
format repwtp140 %10.4f
format repwtp141 %10.4f
format repwtp142 %10.4f
format repwtp143 %10.4f
format repwtp144 %10.4f
format repwtp145 %10.4f
format repwtp146 %10.4f
format repwtp147 %10.4f
format repwtp148 %10.4f
format repwtp149 %10.4f
format repwtp150 %10.4f
format repwtp151 %10.4f
format repwtp152 %10.4f
format repwtp153 %10.4f
format repwtp154 %10.4f
format repwtp155 %10.4f
format repwtp156 %10.4f
format repwtp157 %10.4f
format repwtp158 %10.4f
format repwtp159 %10.4f
format repwtp160 %10.4f
format ftotval   %10.0f
format inctot    %9.0f

label var year      `"Survey year"'
label var serial    `"Household serial number"'
label var month     `"Month"'
label var cpsid     `"CPSID, household record"'
label var asecflag  `"Flag for ASEC"'
label var asecwth   `"Annual Social and Economic Supplement Household weight"'
label var mish      `"Month in sample, household level"'
label var numprec   `"Number of person records following"'
label var hhintype  `"Type of household"'
label var statefip  `"State (FIPS code)"'
label var hhincome  `"Total household income"'
label var foodstmp  `"Food stamp recipiency"'
label var stampval  `"Total value of food stamps"'
label var pernum    `"Person number in sample unit"'
label var cpsidp    `"CPSID, person record"'
label var cpsidv    `"Validated Longitudinal Identifier"'
label var asecwt    `"Annual Social and Economic Supplement Weight"'
label var age       `"Age"'
label var sex       `"Sex"'
label var race      `"Race"'
label var marst     `"Marital status"'
label var hispan    `"Hispanic origin"'
label var empstat   `"Employment status"'
label var educ      `"Educational attainment recode"'
label var repwtp    `"Person replicate weights"'
label var repwtp1   `"Person replicate weight 1"'
label var repwtp2   `"Person replicate weight 2"'
label var repwtp3   `"Person replicate weight 3"'
label var repwtp4   `"Person replicate weight 4"'
label var repwtp5   `"Person replicate weight 5"'
label var repwtp6   `"Person replicate weight 6"'
label var repwtp7   `"Person replicate weight 7"'
label var repwtp8   `"Person replicate weight 8"'
label var repwtp9   `"Person replicate weight 9"'
label var repwtp10  `"Person replicate weight 10"'
label var repwtp11  `"Person replicate weight 11"'
label var repwtp12  `"Person replicate weight 12"'
label var repwtp13  `"Person replicate weight 13"'
label var repwtp14  `"Person replicate weight 14"'
label var repwtp15  `"Person replicate weight 15"'
label var repwtp16  `"Person replicate weight 16"'
label var repwtp17  `"Person replicate weight 17"'
label var repwtp18  `"Person replicate weight 18"'
label var repwtp19  `"Person replicate weight 19"'
label var repwtp20  `"Person replicate weight 20"'
label var repwtp21  `"Person replicate weight 21"'
label var repwtp22  `"Person replicate weight 22"'
label var repwtp23  `"Person replicate weight 23"'
label var repwtp24  `"Person replicate weight 24"'
label var repwtp25  `"Person replicate weight 25"'
label var repwtp26  `"Person replicate weight 26"'
label var repwtp27  `"Person replicate weight 27"'
label var repwtp28  `"Person replicate weight 28"'
label var repwtp29  `"Person replicate weight 29"'
label var repwtp30  `"Person replicate weight 30"'
label var repwtp31  `"Person replicate weight 31"'
label var repwtp32  `"Person replicate weight 32"'
label var repwtp33  `"Person replicate weight 33"'
label var repwtp34  `"Person replicate weight 34"'
label var repwtp35  `"Person replicate weight 35"'
label var repwtp36  `"Person replicate weight 36"'
label var repwtp37  `"Person replicate weight 37"'
label var repwtp38  `"Person replicate weight 38"'
label var repwtp39  `"Person replicate weight 39"'
label var repwtp40  `"Person replicate weight 40"'
label var repwtp41  `"Person replicate weight 41"'
label var repwtp42  `"Person replicate weight 42"'
label var repwtp43  `"Person replicate weight 43"'
label var repwtp44  `"Person replicate weight 44"'
label var repwtp45  `"Person replicate weight 45"'
label var repwtp46  `"Person replicate weight 46"'
label var repwtp47  `"Person replicate weight 47"'
label var repwtp48  `"Person replicate weight 48"'
label var repwtp49  `"Person replicate weight 49"'
label var repwtp50  `"Person replicate weight 50"'
label var repwtp51  `"Person replicate weight 51"'
label var repwtp52  `"Person replicate weight 52"'
label var repwtp53  `"Person replicate weight 53"'
label var repwtp54  `"Person replicate weight 54"'
label var repwtp55  `"Person replicate weight 55"'
label var repwtp56  `"Person replicate weight 56"'
label var repwtp57  `"Person replicate weight 57"'
label var repwtp58  `"Person replicate weight 58"'
label var repwtp59  `"Person replicate weight 59"'
label var repwtp60  `"Person replicate weight 60"'
label var repwtp61  `"Person replicate weight 61"'
label var repwtp62  `"Person replicate weight 62"'
label var repwtp63  `"Person replicate weight 63"'
label var repwtp64  `"Person replicate weight 64"'
label var repwtp65  `"Person replicate weight 65"'
label var repwtp66  `"Person replicate weight 66"'
label var repwtp67  `"Person replicate weight 67"'
label var repwtp68  `"Person replicate weight 68"'
label var repwtp69  `"Person replicate weight 69"'
label var repwtp70  `"Person replicate weight 70"'
label var repwtp71  `"Person replicate weight 71"'
label var repwtp72  `"Person replicate weight 72"'
label var repwtp73  `"Person replicate weight 73"'
label var repwtp74  `"Person replicate weight 74"'
label var repwtp75  `"Person replicate weight 75"'
label var repwtp76  `"Person replicate weight 76"'
label var repwtp77  `"Person replicate weight 77"'
label var repwtp78  `"Person replicate weight 78"'
label var repwtp79  `"Person replicate weight 79"'
label var repwtp80  `"Person replicate weight 80"'
label var repwtp81  `"Person replicate weight 81"'
label var repwtp82  `"Person replicate weight 82"'
label var repwtp83  `"Person replicate weight 83"'
label var repwtp84  `"Person replicate weight 84"'
label var repwtp85  `"Person replicate weight 85"'
label var repwtp86  `"Person replicate weight 86"'
label var repwtp87  `"Person replicate weight 87"'
label var repwtp88  `"Person replicate weight 88"'
label var repwtp89  `"Person replicate weight 89"'
label var repwtp90  `"Person replicate weight 90"'
label var repwtp91  `"Person replicate weight 91"'
label var repwtp92  `"Person replicate weight 92"'
label var repwtp93  `"Person replicate weight 93"'
label var repwtp94  `"Person replicate weight 94"'
label var repwtp95  `"Person replicate weight 95"'
label var repwtp96  `"Person replicate weight 96"'
label var repwtp97  `"Person replicate weight 97"'
label var repwtp98  `"Person replicate weight 98"'
label var repwtp99  `"Person replicate weight 99"'
label var repwtp100 `"Person replicate weight 100"'
label var repwtp101 `"Person replicate weight 101"'
label var repwtp102 `"Person replicate weight 102"'
label var repwtp103 `"Person replicate weight 103"'
label var repwtp104 `"Person replicate weight 104"'
label var repwtp105 `"Person replicate weight 105"'
label var repwtp106 `"Person replicate weight 106"'
label var repwtp107 `"Person replicate weight 107"'
label var repwtp108 `"Person replicate weight 108"'
label var repwtp109 `"Person replicate weight 109"'
label var repwtp110 `"Person replicate weight 110"'
label var repwtp111 `"Person replicate weight 111"'
label var repwtp112 `"Person replicate weight 112"'
label var repwtp113 `"Person replicate weight 113"'
label var repwtp114 `"Person replicate weight 114"'
label var repwtp115 `"Person replicate weight 115"'
label var repwtp116 `"Person replicate weight 116"'
label var repwtp117 `"Person replicate weight 117"'
label var repwtp118 `"Person replicate weight 118"'
label var repwtp119 `"Person replicate weight 119"'
label var repwtp120 `"Person replicate weight 120"'
label var repwtp121 `"Person replicate weight 121"'
label var repwtp122 `"Person replicate weight 122"'
label var repwtp123 `"Person replicate weight 123"'
label var repwtp124 `"Person replicate weight 124"'
label var repwtp125 `"Person replicate weight 125"'
label var repwtp126 `"Person replicate weight 126"'
label var repwtp127 `"Person replicate weight 127"'
label var repwtp128 `"Person replicate weight 128"'
label var repwtp129 `"Person replicate weight 129"'
label var repwtp130 `"Person replicate weight 130"'
label var repwtp131 `"Person replicate weight 131"'
label var repwtp132 `"Person replicate weight 132"'
label var repwtp133 `"Person replicate weight 133"'
label var repwtp134 `"Person replicate weight 134"'
label var repwtp135 `"Person replicate weight 135"'
label var repwtp136 `"Person replicate weight 136"'
label var repwtp137 `"Person replicate weight 137"'
label var repwtp138 `"Person replicate weight 138"'
label var repwtp139 `"Person replicate weight 139"'
label var repwtp140 `"Person replicate weight 140"'
label var repwtp141 `"Person replicate weight 141"'
label var repwtp142 `"Person replicate weight 142"'
label var repwtp143 `"Person replicate weight 143"'
label var repwtp144 `"Person replicate weight 144"'
label var repwtp145 `"Person replicate weight 145"'
label var repwtp146 `"Person replicate weight 146"'
label var repwtp147 `"Person replicate weight 147"'
label var repwtp148 `"Person replicate weight 148"'
label var repwtp149 `"Person replicate weight 149"'
label var repwtp150 `"Person replicate weight 150"'
label var repwtp151 `"Person replicate weight 151"'
label var repwtp152 `"Person replicate weight 152"'
label var repwtp153 `"Person replicate weight 153"'
label var repwtp154 `"Person replicate weight 154"'
label var repwtp155 `"Person replicate weight 155"'
label var repwtp156 `"Person replicate weight 156"'
label var repwtp157 `"Person replicate weight 157"'
label var repwtp158 `"Person replicate weight 158"'
label var repwtp159 `"Person replicate weight 159"'
label var repwtp160 `"Person replicate weight 160"'
label var ftotval   `"Total family income"'
label var inctot    `"Total personal income"'
label var offpov    `"Official Poverty Status (IPUMS constructed)"'
label var paidgh    `"Employer paid for group health plan"'
label var himcaidly `"Covered by Medicaid last year"'
label var himcarely `"Covered by Medicare last year"'
label var himcaidnw `"Current Medicaid, CHIP, or other means-tested coverage"'
label var himcarenw `"Current Medicare coverage"'
label var hichamp   `"Covered by military health insurance last year"'
label var phinsur   `"Reported covered by private health insurance last year"'
label var phiown    `"Private health insurance in own name last year"'
label var caidly    `"Covered by Medicaid last year"'
label var caidnw    `"Current Medicaid coverage"'
label var moop      `"Total family (primary family including related subfamilies) medical out of pocke"'
label var hipval    `"Total family (primary family including related subfamilies) payments (in dollars"'
label var pubcovly  `"Any government health insurance coverage last year"'
label var grpcovly  `"Covered by employment-based group health last year"'
label var grpdeply  `"Dependent covered by employment-based insurance last year"'
label var grpownly  `"Policyholder for employment-based insurance last year"'
label var grpoutly  `"Employment-based insurance covered non-household member"'
label var grpcoutly `"Employment-based insurance coverage through someone outside the household last y"'
label var grptyply  `"Type of employment-based coverage last year"'
label var dpcovly   `"Direct-purchase insurance coverage last year"'

label define month_lbl 01 `"January"'
label define month_lbl 02 `"February"', add
label define month_lbl 03 `"March"', add
label define month_lbl 04 `"April"', add
label define month_lbl 05 `"May"', add
label define month_lbl 06 `"June"', add
label define month_lbl 07 `"July"', add
label define month_lbl 08 `"August"', add
label define month_lbl 09 `"September"', add
label define month_lbl 10 `"October"', add
label define month_lbl 11 `"November"', add
label define month_lbl 12 `"December"', add
label values month month_lbl

label define asecflag_lbl 1 `"ASEC"'
label define asecflag_lbl 2 `"March Basic"', add
label values asecflag asecflag_lbl

label define mish_lbl 1 `"One"'
label define mish_lbl 2 `"Two"', add
label define mish_lbl 3 `"Three"', add
label define mish_lbl 4 `"Four"', add
label define mish_lbl 5 `"Five"', add
label define mish_lbl 6 `"Six"', add
label define mish_lbl 7 `"Seven"', add
label define mish_lbl 8 `"Eight"', add
label values mish mish_lbl

label define hhintype_lbl 1 `"Interview"'
label define hhintype_lbl 2 `"Type A non-interview"', add
label define hhintype_lbl 3 `"Type B/C non-interview"', add
label values hhintype hhintype_lbl

label define statefip_lbl 01 `"Alabama"'
label define statefip_lbl 02 `"Alaska"', add
label define statefip_lbl 04 `"Arizona"', add
label define statefip_lbl 05 `"Arkansas"', add
label define statefip_lbl 06 `"California"', add
label define statefip_lbl 08 `"Colorado"', add
label define statefip_lbl 09 `"Connecticut"', add
label define statefip_lbl 10 `"Delaware"', add
label define statefip_lbl 11 `"District of Columbia"', add
label define statefip_lbl 12 `"Florida"', add
label define statefip_lbl 13 `"Georgia"', add
label define statefip_lbl 15 `"Hawaii"', add
label define statefip_lbl 16 `"Idaho"', add
label define statefip_lbl 17 `"Illinois"', add
label define statefip_lbl 18 `"Indiana"', add
label define statefip_lbl 19 `"Iowa"', add
label define statefip_lbl 20 `"Kansas"', add
label define statefip_lbl 21 `"Kentucky"', add
label define statefip_lbl 22 `"Louisiana"', add
label define statefip_lbl 23 `"Maine"', add
label define statefip_lbl 24 `"Maryland"', add
label define statefip_lbl 25 `"Massachusetts"', add
label define statefip_lbl 26 `"Michigan"', add
label define statefip_lbl 27 `"Minnesota"', add
label define statefip_lbl 28 `"Mississippi"', add
label define statefip_lbl 29 `"Missouri"', add
label define statefip_lbl 30 `"Montana"', add
label define statefip_lbl 31 `"Nebraska"', add
label define statefip_lbl 32 `"Nevada"', add
label define statefip_lbl 33 `"New Hampshire"', add
label define statefip_lbl 34 `"New Jersey"', add
label define statefip_lbl 35 `"New Mexico"', add
label define statefip_lbl 36 `"New York"', add
label define statefip_lbl 37 `"North Carolina"', add
label define statefip_lbl 38 `"North Dakota"', add
label define statefip_lbl 39 `"Ohio"', add
label define statefip_lbl 40 `"Oklahoma"', add
label define statefip_lbl 41 `"Oregon"', add
label define statefip_lbl 42 `"Pennsylvania"', add
label define statefip_lbl 44 `"Rhode Island"', add
label define statefip_lbl 45 `"South Carolina"', add
label define statefip_lbl 46 `"South Dakota"', add
label define statefip_lbl 47 `"Tennessee"', add
label define statefip_lbl 48 `"Texas"', add
label define statefip_lbl 49 `"Utah"', add
label define statefip_lbl 50 `"Vermont"', add
label define statefip_lbl 51 `"Virginia"', add
label define statefip_lbl 53 `"Washington"', add
label define statefip_lbl 54 `"West Virginia"', add
label define statefip_lbl 55 `"Wisconsin"', add
label define statefip_lbl 56 `"Wyoming"', add
label define statefip_lbl 61 `"Maine-New Hampshire-Vermont"', add
label define statefip_lbl 65 `"Montana-Idaho-Wyoming"', add
label define statefip_lbl 68 `"Alaska-Hawaii"', add
label define statefip_lbl 69 `"Nebraska-North Dakota-South Dakota"', add
label define statefip_lbl 70 `"Maine-Massachusetts-New Hampshire-Rhode Island-Vermont"', add
label define statefip_lbl 71 `"Michigan-Wisconsin"', add
label define statefip_lbl 72 `"Minnesota-Iowa"', add
label define statefip_lbl 73 `"Nebraska-North Dakota-South Dakota-Kansas"', add
label define statefip_lbl 74 `"Delaware-Virginia"', add
label define statefip_lbl 75 `"North Carolina-South Carolina"', add
label define statefip_lbl 76 `"Alabama-Mississippi"', add
label define statefip_lbl 77 `"Arkansas-Oklahoma"', add
label define statefip_lbl 78 `"Arizona-New Mexico-Colorado"', add
label define statefip_lbl 79 `"Idaho-Wyoming-Utah-Montana-Nevada"', add
label define statefip_lbl 80 `"Alaska-Washington-Hawaii"', add
label define statefip_lbl 81 `"New Hampshire-Maine-Vermont-Rhode Island"', add
label define statefip_lbl 83 `"South Carolina-Georgia"', add
label define statefip_lbl 84 `"Kentucky-Tennessee"', add
label define statefip_lbl 85 `"Arkansas-Louisiana-Oklahoma"', add
label define statefip_lbl 87 `"Iowa-N Dakota-S Dakota-Nebraska-Kansas-Minnesota-Missouri"', add
label define statefip_lbl 88 `"Washington-Oregon-Alaska-Hawaii"', add
label define statefip_lbl 89 `"Montana-Wyoming-Colorado-New Mexico-Utah-Nevada-Arizona"', add
label define statefip_lbl 90 `"Delaware-Maryland-Virginia-West Virginia"', add
label define statefip_lbl 99 `"State not identified"', add
label values statefip statefip_lbl

label define foodstmp_lbl 0 `"NIU"'
label define foodstmp_lbl 1 `"No"', add
label define foodstmp_lbl 2 `"Yes"', add
label values foodstmp foodstmp_lbl

label define age_lbl 00 `"Under 1 year"'
label define age_lbl 01 `"1"', add
label define age_lbl 02 `"2"', add
label define age_lbl 03 `"3"', add
label define age_lbl 04 `"4"', add
label define age_lbl 05 `"5"', add
label define age_lbl 06 `"6"', add
label define age_lbl 07 `"7"', add
label define age_lbl 08 `"8"', add
label define age_lbl 09 `"9"', add
label define age_lbl 10 `"10"', add
label define age_lbl 11 `"11"', add
label define age_lbl 12 `"12"', add
label define age_lbl 13 `"13"', add
label define age_lbl 14 `"14"', add
label define age_lbl 15 `"15"', add
label define age_lbl 16 `"16"', add
label define age_lbl 17 `"17"', add
label define age_lbl 18 `"18"', add
label define age_lbl 19 `"19"', add
label define age_lbl 20 `"20"', add
label define age_lbl 21 `"21"', add
label define age_lbl 22 `"22"', add
label define age_lbl 23 `"23"', add
label define age_lbl 24 `"24"', add
label define age_lbl 25 `"25"', add
label define age_lbl 26 `"26"', add
label define age_lbl 27 `"27"', add
label define age_lbl 28 `"28"', add
label define age_lbl 29 `"29"', add
label define age_lbl 30 `"30"', add
label define age_lbl 31 `"31"', add
label define age_lbl 32 `"32"', add
label define age_lbl 33 `"33"', add
label define age_lbl 34 `"34"', add
label define age_lbl 35 `"35"', add
label define age_lbl 36 `"36"', add
label define age_lbl 37 `"37"', add
label define age_lbl 38 `"38"', add
label define age_lbl 39 `"39"', add
label define age_lbl 40 `"40"', add
label define age_lbl 41 `"41"', add
label define age_lbl 42 `"42"', add
label define age_lbl 43 `"43"', add
label define age_lbl 44 `"44"', add
label define age_lbl 45 `"45"', add
label define age_lbl 46 `"46"', add
label define age_lbl 47 `"47"', add
label define age_lbl 48 `"48"', add
label define age_lbl 49 `"49"', add
label define age_lbl 50 `"50"', add
label define age_lbl 51 `"51"', add
label define age_lbl 52 `"52"', add
label define age_lbl 53 `"53"', add
label define age_lbl 54 `"54"', add
label define age_lbl 55 `"55"', add
label define age_lbl 56 `"56"', add
label define age_lbl 57 `"57"', add
label define age_lbl 58 `"58"', add
label define age_lbl 59 `"59"', add
label define age_lbl 60 `"60"', add
label define age_lbl 61 `"61"', add
label define age_lbl 62 `"62"', add
label define age_lbl 63 `"63"', add
label define age_lbl 64 `"64"', add
label define age_lbl 65 `"65"', add
label define age_lbl 66 `"66"', add
label define age_lbl 67 `"67"', add
label define age_lbl 68 `"68"', add
label define age_lbl 69 `"69"', add
label define age_lbl 70 `"70"', add
label define age_lbl 71 `"71"', add
label define age_lbl 72 `"72"', add
label define age_lbl 73 `"73"', add
label define age_lbl 74 `"74"', add
label define age_lbl 75 `"75"', add
label define age_lbl 76 `"76"', add
label define age_lbl 77 `"77"', add
label define age_lbl 78 `"78"', add
label define age_lbl 79 `"79"', add
label define age_lbl 80 `"80"', add
label define age_lbl 81 `"81"', add
label define age_lbl 82 `"82"', add
label define age_lbl 83 `"83"', add
label define age_lbl 84 `"84"', add
label define age_lbl 85 `"85"', add
label define age_lbl 86 `"86"', add
label define age_lbl 87 `"87"', add
label define age_lbl 88 `"88"', add
label define age_lbl 89 `"89"', add
label define age_lbl 90 `"90 (90+, 1988-2002)"', add
label define age_lbl 91 `"91"', add
label define age_lbl 92 `"92"', add
label define age_lbl 93 `"93"', add
label define age_lbl 94 `"94"', add
label define age_lbl 95 `"95"', add
label define age_lbl 96 `"96"', add
label define age_lbl 97 `"97"', add
label define age_lbl 98 `"98"', add
label define age_lbl 99 `"99+"', add
label values age age_lbl

label define sex_lbl 1 `"Male"'
label define sex_lbl 2 `"Female"', add
label define sex_lbl 9 `"NIU"', add
label values sex sex_lbl

label define race_lbl 100 `"White"'
label define race_lbl 200 `"Black"', add
label define race_lbl 300 `"American Indian/Aleut/Eskimo"', add
label define race_lbl 650 `"Asian or Pacific Islander"', add
label define race_lbl 651 `"Asian only"', add
label define race_lbl 652 `"Hawaiian/Pacific Islander only"', add
label define race_lbl 700 `"Other (single) race, n.e.c."', add
label define race_lbl 801 `"White-Black"', add
label define race_lbl 802 `"White-American Indian"', add
label define race_lbl 803 `"White-Asian"', add
label define race_lbl 804 `"White-Hawaiian/Pacific Islander"', add
label define race_lbl 805 `"Black-American Indian"', add
label define race_lbl 806 `"Black-Asian"', add
label define race_lbl 807 `"Black-Hawaiian/Pacific Islander"', add
label define race_lbl 808 `"American Indian-Asian"', add
label define race_lbl 809 `"Asian-Hawaiian/Pacific Islander"', add
label define race_lbl 810 `"White-Black-American Indian"', add
label define race_lbl 811 `"White-Black-Asian"', add
label define race_lbl 812 `"White-American Indian-Asian"', add
label define race_lbl 813 `"White-Asian-Hawaiian/Pacific Islander"', add
label define race_lbl 814 `"White-Black-American Indian-Asian"', add
label define race_lbl 815 `"American Indian-Hawaiian/Pacific Islander"', add
label define race_lbl 816 `"White-Black--Hawaiian/Pacific Islander"', add
label define race_lbl 817 `"White-American Indian-Hawaiian/Pacific Islander"', add
label define race_lbl 818 `"Black-American Indian-Asian"', add
label define race_lbl 819 `"White-American Indian-Asian-Hawaiian/Pacific Islander"', add
label define race_lbl 820 `"Two or three races, unspecified"', add
label define race_lbl 830 `"Four or five races, unspecified"', add
label define race_lbl 999 `"Blank"', add
label values race race_lbl

label define marst_lbl 1 `"Married, spouse present"'
label define marst_lbl 2 `"Married, spouse absent"', add
label define marst_lbl 3 `"Separated"', add
label define marst_lbl 4 `"Divorced"', add
label define marst_lbl 5 `"Widowed"', add
label define marst_lbl 6 `"Never married/single"', add
label define marst_lbl 7 `"Widowed or Divorced"', add
label define marst_lbl 9 `"NIU"', add
label values marst marst_lbl

label define hispan_lbl 000 `"Not Hispanic"'
label define hispan_lbl 100 `"Mexican"', add
label define hispan_lbl 102 `"Mexican American"', add
label define hispan_lbl 103 `"Mexicano/Mexicana"', add
label define hispan_lbl 104 `"Chicano/Chicana"', add
label define hispan_lbl 108 `"Mexican (Mexicano)"', add
label define hispan_lbl 109 `"Mexicano/Chicano"', add
label define hispan_lbl 200 `"Puerto Rican"', add
label define hispan_lbl 300 `"Cuban"', add
label define hispan_lbl 400 `"Dominican"', add
label define hispan_lbl 500 `"Salvadoran"', add
label define hispan_lbl 600 `"Other Hispanic"', add
label define hispan_lbl 610 `"Central/South American"', add
label define hispan_lbl 611 `"Central American, (excluding Salvadoran)"', add
label define hispan_lbl 612 `"South American"', add
label define hispan_lbl 901 `"Do not know"', add
label define hispan_lbl 902 `"N/A (and no response 1985-87)"', add
label values hispan hispan_lbl

label define empstat_lbl 00 `"NIU"'
label define empstat_lbl 01 `"Armed Forces"', add
label define empstat_lbl 10 `"At work"', add
label define empstat_lbl 12 `"Has job, not at work last week"', add
label define empstat_lbl 20 `"Unemployed"', add
label define empstat_lbl 21 `"Unemployed, experienced worker"', add
label define empstat_lbl 22 `"Unemployed, new worker"', add
label define empstat_lbl 30 `"Not in labor force"', add
label define empstat_lbl 31 `"NILF, housework"', add
label define empstat_lbl 32 `"NILF, unable to work"', add
label define empstat_lbl 33 `"NILF, school"', add
label define empstat_lbl 34 `"NILF, other"', add
label define empstat_lbl 35 `"NILF, unpaid, lt 15 hours"', add
label define empstat_lbl 36 `"NILF, retired"', add
label values empstat empstat_lbl

label define educ_lbl 000 `"NIU or no schooling"'
label define educ_lbl 001 `"NIU or blank"', add
label define educ_lbl 002 `"None or preschool"', add
label define educ_lbl 010 `"Grades 1, 2, 3, or 4"', add
label define educ_lbl 011 `"Grade 1"', add
label define educ_lbl 012 `"Grade 2"', add
label define educ_lbl 013 `"Grade 3"', add
label define educ_lbl 014 `"Grade 4"', add
label define educ_lbl 020 `"Grades 5 or 6"', add
label define educ_lbl 021 `"Grade 5"', add
label define educ_lbl 022 `"Grade 6"', add
label define educ_lbl 030 `"Grades 7 or 8"', add
label define educ_lbl 031 `"Grade 7"', add
label define educ_lbl 032 `"Grade 8"', add
label define educ_lbl 040 `"Grade 9"', add
label define educ_lbl 050 `"Grade 10"', add
label define educ_lbl 060 `"Grade 11"', add
label define educ_lbl 070 `"Grade 12"', add
label define educ_lbl 071 `"12th grade, no diploma"', add
label define educ_lbl 072 `"12th grade, diploma unclear"', add
label define educ_lbl 073 `"High school diploma or equivalent"', add
label define educ_lbl 080 `"1 year of college"', add
label define educ_lbl 081 `"Some college but no degree"', add
label define educ_lbl 090 `"2 years of college"', add
label define educ_lbl 091 `"Associate's degree, occupational/vocational program"', add
label define educ_lbl 092 `"Associate's degree, academic program"', add
label define educ_lbl 100 `"3 years of college"', add
label define educ_lbl 110 `"4 years of college"', add
label define educ_lbl 111 `"Bachelor's degree"', add
label define educ_lbl 120 `"5+ years of college"', add
label define educ_lbl 121 `"5 years of college"', add
label define educ_lbl 122 `"6+ years of college"', add
label define educ_lbl 123 `"Master's degree"', add
label define educ_lbl 124 `"Professional school degree"', add
label define educ_lbl 125 `"Doctorate degree"', add
label define educ_lbl 999 `"Missing/Unknown"', add
label values educ educ_lbl

label define offpov_lbl 01 `"Below Poverty Line"'
label define offpov_lbl 02 `"Above Poverty Line"', add
label define offpov_lbl 99 `"NIU"', add
label values offpov offpov_lbl

label define paidgh_lbl 00 `"NIU"'
label define paidgh_lbl 10 `"No"', add
label define paidgh_lbl 20 `"Yes"', add
label define paidgh_lbl 21 `"Yes, paid for part"', add
label define paidgh_lbl 22 `"Yes, paid for all"', add
label values paidgh paidgh_lbl

label define himcaidly_lbl 1 `"No"'
label define himcaidly_lbl 2 `"Yes"', add
label define himcaidly_lbl 9 `"NIU"', add
label values himcaidly himcaidly_lbl

label define himcarely_lbl 0 `"NIU"'
label define himcarely_lbl 1 `"No"', add
label define himcarely_lbl 2 `"Yes"', add
label values himcarely himcarely_lbl

label define himcaidnw_lbl 1 `"No"'
label define himcaidnw_lbl 2 `"Yes"', add
label values himcaidnw himcaidnw_lbl

label define himcarenw_lbl 1 `"No"'
label define himcarenw_lbl 2 `"Yes"', add
label values himcarenw himcarenw_lbl

label define hichamp_lbl 1 `"No"'
label define hichamp_lbl 2 `"Yes"', add
label define hichamp_lbl 9 `"NIU"', add
label values hichamp hichamp_lbl

label define phinsur_lbl 0 `"NIU"'
label define phinsur_lbl 1 `"No"', add
label define phinsur_lbl 2 `"Yes"', add
label values phinsur phinsur_lbl

label define phiown_lbl 0 `"NIU"'
label define phiown_lbl 1 `"No"', add
label define phiown_lbl 2 `"Yes"', add
label values phiown phiown_lbl

label define caidly_lbl 1 `"No"'
label define caidly_lbl 2 `"Yes"', add
label define caidly_lbl 9 `"NIU"', add
label values caidly caidly_lbl

label define caidnw_lbl 1 `"No"'
label define caidnw_lbl 2 `"Yes"', add
label values caidnw caidnw_lbl

label define pubcovly_lbl 01 `"No"'
label define pubcovly_lbl 02 `"Yes"', add
label define pubcovly_lbl 99 `"NIU"', add
label values pubcovly pubcovly_lbl

label define grpcovly_lbl 0 `"NIU"'
label define grpcovly_lbl 1 `"No"', add
label define grpcovly_lbl 2 `"Yes"', add
label values grpcovly grpcovly_lbl

label define grpdeply_lbl 1 `"No"'
label define grpdeply_lbl 2 `"Yes"', add
label define grpdeply_lbl 9 `"NIU"', add
label values grpdeply grpdeply_lbl

label define grpownly_lbl 0 `"NIU"'
label define grpownly_lbl 1 `"No"', add
label define grpownly_lbl 2 `"Yes"', add
label values grpownly grpownly_lbl

label define grpoutly_lbl 0 `"NIU"'
label define grpoutly_lbl 1 `"No"', add
label define grpoutly_lbl 2 `"Yes"', add
label values grpoutly grpoutly_lbl

label define grpcoutly_lbl 01 `"No"'
label define grpcoutly_lbl 02 `"Yes"', add
label define grpcoutly_lbl 99 `"NIU"', add
label values grpcoutly grpcoutly_lbl

label define grptyply_lbl 0 `"NIU"'
label define grptyply_lbl 1 `"Family plan"', add
label define grptyply_lbl 2 `"Self only plan"', add
label define grptyply_lbl 3 `"Self plus one plan"', add
label values grptyply grptyply_lbl

label define dpcovly_lbl 01 `"No"'
label define dpcovly_lbl 02 `"Yes"', add
label define dpcovly_lbl 99 `"NIU"', add
label values dpcovly dpcovly_lbl

* Subset to intervention and control states
keep if inlist(statefip, 11, 2, 15, 45, 21, 47, 1, 22, 5, 40, 20, 55, 46, 38, 30, 56, 16, 49, 6, 9, 12, 17, 24, 36)

* Create indicator variable for intervention 
gen policy_change_state = .
replace policy_change_state = 1 if inlist(statefip, 11, 2, 15, 45, 21, 47, 1, 22, 5, 40, 20, 55, 46, 38, 30, 56, 16, 49)
replace policy_change_state = 0 if inlist(statefip, 6, 9, 12, 17, 24, 36)

* Subset to study period: ASEC 2019-2024
* Exclude 2022 data 
keep if year >= 2019
drop if year == 2022

* Subset to participants with direct-purchase insurance 
keep if dpcovly == 2

* Subset to aduts 19-64
drop if age < 19 
drop if age > 64

* Exclude participants with public insurance and employer-based insurance
 drop if himcaidly == 2
 drop if himcarely  == 2
 drop if hichamp == 2
 drop if grpcovly == 2

* Generate indicator variable for time period 
gen post_NSA = .
replace post_NSA = 0 if year < 2022 
replace post_NSA = 1 if year > 2022 

* Fix year variable (given 1-year lookback period)
replace year = year - 1

* Remove premium spending from healthcare spending 
replace moop = moop - hipval
gen total_spending = moop + hipval

* Generate high burden medical spending outcome
gen high_medical_spending = .
replace high_medical_spending = 1 if ftotval > 0 & (total_spending / ftotval) > 0.1
replace high_medical_spending = 0 if ftotval > 0 & (total_spending / ftotval) <= 0.1
replace high_medical_spending = 0 if total_spending == 0
replace high_medical_spending = . if ftotval <= 0
tabulate high_medical_spending

* Inflation-adjust spending outcomes
replace moop = moop * (304.7/ 251.1) if year == 2018
replace moop = moop * (304.7 / 255.7) if year == 2019
replace moop = moop * (304.7 / 258.8) if year == 2020
replace moop = moop * (304.7/ 271.0) if year == 2021
replace moop = moop * (304.7/ 292.7) if year == 2022

replace hipval = hipval * (304.7/ 251.1) if year == 2018
replace hipval = hipval * (304.7 / 255.7) if year == 2019
replace hipval = hipval * (304.7 / 258.8) if year == 2020
replace hipval = hipval * (304.7 / 271.0) if year == 2021
replace hipval = hipval * (304.7 / 292.7) if year == 2022

* Generate covariates

* Age
gen age_group = ""
replace age_group = "19-25" if age >= 19 & age <= 25
replace age_group = "26-44" if age >= 26 & age <= 44
replace age_group = "45-64" if age > 44

* Race/Ethnicity
gen race_group = "Other"
replace race_group = "White" if race == 100
replace race_group = "Black" if race == 200
replace race_group = "Asian" if inlist(race, 651, 652)
replace race_group = "Hispanic" if inlist(hispan, 100, 200, 300, 400, 500, 600, 611, 612)

* Education
gen education_group = ""
replace education_group = "High School or Less" if inlist(educ, 2, 10, 20, 30, 40, 50, 60, 71, 73)
replace education_group = "College or More" if inlist(educ, 92, 91, 81, 111, 125, 124, 123)

* Employment status
gen employment_status = ""
replace employment_status = "Employed" if inlist(empstat, 1, 10, 12)
replace employment_status = "Unemployed" if inlist(empstat, 21, 22)
replace employment_status = "Not in Labor Force" if inlist(empstat, 32, 34, 36)

* Poverty 
gen poverty = .
replace poverty = 1 if offpov == 1
replace poverty = 0 if offpov == 2
 
* Convert to factor variables 
encode age_group, gen(factor_age)
encode education_group, gen(factor_education)
encode employment_status, gen(factor_employment)
encode race_group, gen(factor_race)



