#############################################################################
##
#W  primorial.g              GAP4 Package `FactInt'               Stefan Kohl
##
#H  @(#)$Id: primorial.g,v 1.2 2005/01/11 09:48:54 stefan Exp $
##
##  This file contains a database of factors of numbers of the form
##  p1 * p2 * p3 * ... * pk +/- 1, where pi denotes the ith prime.
##
Revision.primorial_g :=
  "@(#)$Id: primorial.g,v 1.2 2005/01/11 09:48:54 stefan Exp $";

MakeReadWriteGlobal( "K_PRIMORIAL_M1_FACTORS" );
K_PRIMORIAL_M1_FACTORS :=
[ 1372062943, 1450184819, 1581363911, 1880785297, 2238203923, 2324921219,
  2565890287, 2705777831, 3666321961, 5869655087, 6174446933, 7036640657,
  10172884549, 10508085821, 14117210027, 14215086019, 15414974591,
  27600124633, 35806575047, 38746702321, 40163137549, 42697366619,
  54273959359, 90710124413, 104001413863, 104718299011, 192699873029,
  234277373353, 260681003321, 430796819021, 580921563293, 715834581677,
  917337320621, 1164394344083, 2463838256443, 2990092035859, 4893826436623,
  11992468992157, 12575441052481, 13170522280541, 18299730308381,
  20962699238647, 31376977774573, 31536908305027, 33637693242743,
  41204155505831, 46274172247987, 70130101304951, 70587793986617,
  183289461261013, 205335958836311, 216281814742687, 245652323403761,
  304250263527209, 389804042062703, 434131516805761, 448045542064369,
  545012941449887, 779980872607823, 7037216702504839, 8881908402042853,
  10639208937288223, 11379319098532079, 11463039340315601, 12318911453427703,
  31961871189065801, 51826588622905609, 53836523233421347, 69179370134379301,
  166748157677124857, 213872651865626627, 566471804985844321,
  567840892706882863, 1447932044030080907, 4784328604523758357,
  6566983041745360901, 7107593640109421533, 83295975985520577647,
  141929971892850488111, 171608868874990994549, 185809449979049590103,
  563246585673404032021, 962389165640406763213, 1447641166619113176017,
  2849239123772750489371, 3220975490939318218453, 9966924050498910251857,
  30384465170048145022609, 50469098962422028923887, 62792061476751488746157,
  195266286094155838540091, 303665792864057405074693,
  973104505470446969309113, 3881590179124452191153083,
  20988504343363646127926611, 20996638941932036180486431,
  178545722262071151482152751, 619780408302187874237918207,
  1217670675652709713577568997, 1231393632556286622892198907,
  3570547671926024135523469081, 4886278425797257511145616469,
  389582295794232168674263739917, 4925989017548114581010994897383,
  6674582810019315719043672155983, 46499920734701574780956751713981,
  89644308483145450484697016758269, 1046871190981073158010761424147857,
  23768741896345550770650537601358309, 35593901058734517633723601126029371,
  136590594005536078038547663661165417,
  5497565129461239035650709608982319328127,
  149039245305638880318701790537479430494077,
  15700021586055397160311310308325895690972977,
  117277141037621524016699418297213730021625341 ];
MakeReadOnlyGlobal( "K_PRIMORIAL_M1_FACTORS" );

MakeReadWriteGlobal( "K_PRIMORIAL_P1_FACTORS" );
K_PRIMORIAL_P1_FACTORS :=
[ 1503181961, 1553606101, 1737142793, 2346607889, 3957327431, 4611953063,
  5634838141, 5876645549, 8311930927, 9700398839, 13221604619, 13349635141,
  20613044953, 21639496447, 22300450379, 44159768129, 45029582471,
  53252429177, 54730729297, 57470069653, 74119649873, 75311908487,
  82268833403, 100282859827, 139650775093, 154236286097, 160823938621,
  173766523691, 175603474759, 179365737007, 200560490131, 238824724169,
  398078244463, 718713552547, 1291798623217, 1525310189119, 1601684368321,
  2076514060559, 2254306890769, 2687493999689, 3297118571963, 5330099340103,
  9458145520867, 9484896326989, 12640654570543, 13867889468159,
  57900988201093, 62633748760943, 77148541513247, 141817427570657,
  148015898637479, 232407306191143, 292812710684839, 502039587537773,
  531489841545151, 1650289933478587, 7064576339566763, 11463039340315601,
  23269086799180847, 30501264491063137, 38893867968570583, 40829741150863579,
  78931425554466677, 154491616237417891, 214114727210560829,
  287683675991534887, 473511977621365483, 906077190456575539,
  1232300915886592711, 2963206058339377313, 4793361871924428403,
  6900895672359645977, 32267019267402210517, 39081170243262541027,
  65018161573521013453, 74764332127349806087, 212057846985596301637,
  583579995758527221397, 1046299953256110466183, 2935643260423069641631,
  9057272859117914235451, 10070764744578881500043, 460510058368076603383799,
  856949461054094326679441, 7979125905967339495018877,
  16441081297983673247170201, 25276968433343666948419739,
  212536532647480887561479147, 286066602745434780680837711,
  364797447191176510346181659, 678279959005528882498681487,
  1207499319227522718393192409, 1702001166295564185254173813,
  1783414933249556329882751243, 27893824618337613620879631211,
  51420888649203007716619883183, 57620579376482127166154112047,
  176879825310092531660311384621, 190883459271153022334840970773,
  2766671858089535693493463559207, 4286054032039546304836890894583,
  25098482428840021840888422712477, 1107468799967598177002554891344421,
  1983989029829662277517988545921869, 5915036078238665768300503768754291,
  495056820952423648923564303249326797, 652867811755756787681937200216989253,
  68396136787144717561091841779546774293,
  14209707448699806612680132420076872871953,
  7174645079748110122986720794600650220537699 ];
MakeReadOnlyGlobal( "K_PRIMORIAL_P1_FACTORS" );

#############################################################################
##
#E  primorial.g . . . . . . . . . . . . . . . . . . . . . . . . . . ends here