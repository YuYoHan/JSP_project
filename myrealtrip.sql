create database myrealtrip;
use myrealtrip;

create table user(
    useremail varchar(300) primary key,
    username varchar(300) not null,
    userpw varchar(300) not null,
    check1 boolean not null,
    check2 boolean not null,
    check3 boolean not null,
    check4 boolean
);
select * from user;

drop table user;
create table wish_list(
	pick_num int primary key auto_increment,
    tour_ticket varchar(3000),
    userid varchar(300),
    constraint id_fk foreign key(userid) references user(userid)
);

create table notice(
	notice_idx int primary key auto_increment,
    notice_info varchar(3000)
);

create table airplane(
	fly_idx int primary key,
	airline_name varchar(300) not null,
    flight_num varchar(300) not null,
    departure_airport varchar(300) not null,
    arrival_airport varchar(300) not null,
    daparture_time varchar(300) not null,
    arrival_time varchar(300) not null,
    passengers_num int not null
);

create table room(
	room_idx int primary key,
    room_kind varchar(300) not null,
    room_people varchar(300) not null,
    room_info varchar(3000) not null,
    room_guide varchar(3000) not null,
    room_review varchar(3000),
    room_option varchar(3000),
    room_price varchar(3000) not null
);




create table payment(
	pay_idx int primary key,
    pay_pay varchar(3000) not null,
    pay_bank varchar(3000) not null,
    pay_date datetime,
    pay_name varchar(300) not null,
    room_idx int,
    constraint room_idx_fk foreign key(room_idx) references room(room_idx),
    ticket_name varchar(300),
    constraint ticket_name_fk foreign key(ticket_name) references tourticket(ticket_name),
    fly_idx int,
    constraint fly_idx_fk foreign key(fly_idx) references airplane(fly_idx)
);

create table questions(
	qu_idx int primary key,
    qu_ask varchar(3000) not null,
    qu_answer varchar(3000) not null
);
create table myinfo(
	mycode int primary key,
    userid varchar(300),
    constraint id_fk foreign key(userid) references user(userid),
	pay_idx int,
    constraint pay_idx_fk foreign key(pay_idx) references payment(pay_idx),
    fly_idx int,
    constraint fly_idx_fk foreign key(fly_idx) references airplane(fly_idx),
    room_idx int,
    constraint room_idx_fk foreign key(room_idx) references room(room_idx),
    ticket_name varchar(300),
    constraint ticket_name_fk foreign key(ticket_name) references tourticket(ticket_name),
    qu_idx int,
    constraint qu_idx_fk foreign key(qu_idx) references questions(qu_idx)
);

create table travelCard (
	cardid varchar(300) primary key,
    traveltitle varchar(300) not null,
    travelcontent varchar(300) not null,
    isolate boolean,
    travelpicture varchar(1000)
);
drop table travelCard;
select * from travelCard limit 12;

insert into travelCard values('뉴욕', '뉴욕', '340', false, 'https://d2ur7st6jjikze.cloudfront.net/landscapes/4721_large_square_1535704006.jpg?1535704006');
insert into travelCard values('피렌체','피렌체','170',false,'https://d2ur7st6jjikze.cloudfront.net/landscapes/476_large_square_1448513381.jpg?1448513381');
insert into travelCard values('부산','부산','580',true,'https://d2ur7st6jjikze.cloudfront.net/offer_photos/52934/325477_large_1625622448.jpg?1625622448');
insert into travelCard values('라스베가스','라스베가스','250',false,'https://d2ur7st6jjikze.cloudfront.net/landscapes/4654_large_square_1535621335.jpg?1535621335');
insert into travelCard values('파리','파리','680',false,'https://d2ur7st6jjikze.cloudfront.net/landscapes/4747_large_square_1536047752.jpg?1536047752');
insert into travelCard values('제주도','제주도','3,150',true,'https://d2ur7st6jjikze.cloudfront.net/landscapes/4737_large_square_1535949304.jpg?1535949304');
insert into travelCard values('강원도','강원도','2,660',true,'https://d2ur7st6jjikze.cloudfront.net/landscapes/5192_large_square_1593063893.jpg?1593063893');
insert into travelCard values('런던','런던','430',true,'https://d2ur7st6jjikze.cloudfront.net/landscapes/4750_large_square_1536049651.jpg?1536049651');
insert into travelCard values('바르셀로나','바르셀로나','260',false,'https://d2ur7st6jjikze.cloudfront.net/landscapes/4672_large_square_1535678422.jpg?1535678422');
insert into travelCard values('로마','로마','260',false,'https://d2ur7st6jjikze.cloudfront.net/landscapes/4751_large_square_1536050273.jpg?1536050273');
insert into travelCard values('루체른','루체른','50',false,'https://d2ur7st6jjikze.cloudfront.net/landscapes/476_large_square_1448513381.jpg?1448513381');
insert into travelCard values('인터라켄','인터라켄','70',false,'https://d2ur7st6jjikze.cloudfront.net/landscapes/4650_large_square_1535618926.jpg?1535618926');
insert into travelCard values('세고비아', '세고비아', '40', false, 'https://d2ur7st6jjikze.cloudfront.net/landscapes/210_large_square_1405351805.jpg?1405351805');
insert into travelCard values('톨레도','톨레도', '50', false, 'https://d2ur7st6jjikze.cloudfront.net/landscapes/725_large_square_1482978918.jpg?1482978918');

delete from travelCard where cardid = "부산";
create table mainbanner(
bannerId int primary key auto_increment,
bannerURL varchar(1000) not null,
bannerImage varchar(1000) not null
);
insert into mainbanner values(1,'https://www.myrealtrip.com/promotions/lucky_week3_main','https://d2ur7st6jjikze.cloudfront.net/cms/1560_original_1654246467.png?1654246467');
insert into mainbanner values(2,'https://www.myrealtrip.com/promotions/mrtcommunity','https://d2ur7st6jjikze.cloudfront.net/cms/2125_original_1652664555.png?1652664555');
insert into mainbanner values(3,'https://www.myrealtrip.com/themes/1041/offers','https://d2ur7st6jjikze.cloudfront.net/cms/1252_original_1653271301.png?1653271301');
insert into mainbanner values(4,'https://market.bomappbiz.co.kr/overseas-axa?partner=MYREALTRIP','https://d2ur7st6jjikze.cloudfront.net/cms/1643_original_1652173495.png?1652173495');
insert into mainbanner values(5,'https://www.myrealtrip.com/promotions/donkey','https://d2ur7st6jjikze.cloudfront.net/cms/1527_original_1650959341.png?1650959341');
insert into mainbanner values(6,'https://www.myrealtrip.com/promotions/jejuplus_202204','https://d2ur7st6jjikze.cloudfront.net/cms/1648_original_1653994068.png?1653994068');
insert into mainbanner values(7,'https://www.myrealtrip.com/promotions/overseastravel','https://d2ur7st6jjikze.cloudfront.net/cms/1684_original_1652022421.png?1652022421');
insert into mainbanner values(8,'https://www.myrealtrip.com/promotions/myrealhocance_ep130','https://d2ur7st6jjikze.cloudfront.net/cms/1424_original_1653962625.png?1653962625');
insert into mainbanner values(9,'https://www.myrealtrip.com/promotions/myrealhocance_zip','https://d2ur7st6jjikze.cloudfront.net/cms/1117_original_1653354747.png?1653354747');
select * from mainbanner;

create table tour_ticket(
    ticket_name varchar(500) primary key,
    ticket_kind varchar(300) not null,
    ticket_event varchar(300) not null,
    country varchar(300) not null,
    scope int not null,
    replyCount varchar(300) not null,
    heart_like boolean not null,
    image varchar(300),
    standard_num int not null,
	originalPrice varchar(300),
    price varchar(300) not null
);
select * from  mainbanner;
##  tour_ticket 데이터 넣기
insert into tour_ticket values("[제주] 제주투어패스 48시간 프리패스권", "티켓/패스","단독특가",
"제주도", 5, "1,053", false,  
"https://d2ur7st6jjikze.cloudfront.net/offer_photos/102916/631993_medium_1653985577.jpg?1653985577",
1, "", "21,375"
);
insert into tour_ticket values("[QR바로입장] 롯데월드 어드벤처 종합이용권 (After4 종합1인권~)", "티켓/패스","",
"서울", 5, "1,506", false,  
"https://d2ur7st6jjikze.cloudfront.net/offer_photos/70816/633568_medium_1654527971.jpg?1654527971",
1, "62,000", "21,375"
);
insert into tour_ticket values("[경기 용인] 에버랜드 이용권 통합딜(~8/31)", "티켓/패스","",
"서울", 5, "1,631", false,  
"https://d2ur7st6jjikze.cloudfront.net/offer_photos/43365/634572_medium_1654759114.jpg?1654759114",
1, "", "27,160"
);
insert into tour_ticket values("페어몬트 앰배서더 서울 숙박권", "티켓/패스","단독특가",
"서울", 5, "", false,  
"https://d2ur7st6jjikze.cloudfront.net/offer_photos/116285/633550_medium_1654518457.jpg?1654518457",
1, "660,000", "275,000"
);
insert into tour_ticket values("서머셋 센트럴 분당 숙박권(3만원 추가 할인)", "티켓/패스","단독특가",
"경기도", 5, "", false,  
"https://d2ur7st6jjikze.cloudfront.net/offer_photos/116402/634414_medium_1654739286.jpg?1654739286",
1, "330,000", "143,000"
);
insert into tour_ticket values("엘리시안 강촌 + 레고랜드® 패키지 숙박권 (3만원 추가 할인)", "티켓/패스","단독특가",
"강원도", 5, "", false,  
"https://d2ur7st6jjikze.cloudfront.net/offer_photos/116271/634173_medium_1654668043.jpg?1654668043",
1, "400,000", "204,100"
);
insert into tour_ticket values("베트남 다낭 빈펄 콘도텔 리버프론트 자유여행 3박5일(제주항공+유류세+공항-호텔 편도픽업)", "항공+호텔","",
"다낭", 5, "", false,  
"https://d2ur7st6jjikze.cloudfront.net/offer_photos/115483/626392_medium_1652250379.jpg?1652250379",
1, "", "579,000"
);
insert into tour_ticket values("비발디파크 오션월드 워터파크 입장권 (주중권~)", "티켓/패스","",
"강원도", 5, "", false,  
"https://d2ur7st6jjikze.cloudfront.net/offer_photos/113778/622251_medium_1651071805.jpg?1651071805",
1, "64,000", "29,450"
);
insert into tour_ticket values("[빠른전송] 2022 스위스패스 연속 패스 + 특전", "여행편의","",
"베른", 5, "1,200", false,  
"https://d2ur7st6jjikze.cloudfront.net/offer_photos/35776/222076_medium_1548826114.jpg?1548826114",
1, "", "196,812"
);

insert into tour_ticket values("[6월16일예약가능] 가우디 반나절 버스투어 #교통비포함 #후기가 보여줍니다 #스페인1위 ", "가이드 투어","무료취소",
"바르셀로나", 5, "95", false,  
"https://d2ur7st6jjikze.cloudfront.net/offer_photos/27819/172875_medium_1525779521.jpg?1525779521",
1, "", "38,900"
);

select * from tour_ticket where ticket_kind = "티켓/패스" or ticket_kind = "항공+호텔" limit 8;


create table subbanner(
bannerId int primary key auto_increment,
bannerURL varchar(1000) not null,
bannerImage varchar(1000) not null
);
insert into subbanner values(1,'https://www.myrealtrip.com/promotions/flight-promo-2','	https://d2ur7st6jjikze.cloudfront.net/cms/522_original_1655094779.png?1655094779');
insert into subbanner values(2,'https://flights.myrealtrip.com/air/b2c/AIR/INT/AIRINTSCH0100100010.k1?initform=RT&domintgubun=I&depctycd=SEL&depctycd=BKK&depctycd=&depctycd=&depctynm=%EC%84%9C%EC%9A%B8&depctynm=%EC%88%98%EC%99%84%EB%82%98%ED%92%88&depctynm=&depctynm=&arrctycd=BKK&arrctycd=SEL&arrctycd=&arrctycd=&arrctynm=%EC%88%98%EC%99%84%EB%82%98%ED%92%88&arrctynm=%EC%84%9C%EC%9A%B8&arrctynm=&arrctynm=&depdt=2022-07-07&depdt=2022-07-11&depdt=&depdt=&opencase=N&opencase=N&opencase=N&openday=&openday=&openday=&depdomintgbn=I&tasktype=B2C&servicecacheyn=Y&adtcount=1&chdcount=0&infcount=0&cabinclass=Y&cabinsepflag=Y&preferaircd=OZ&secrchType=FARE&maxprice=&availcount=250&KSESID=air%3Ab2c%3ASELK138RB%3ASELK138RB%3A%3A00', '	https://d2ur7st6jjikze.cloudfront.net/cms/1110_original_1655182804.png?1655182804');
insert into subbanner values(3,'https://www.myrealtrip.com/promotions/flight-card-hn','		https://d2ur7st6jjikze.cloudfront.net/cms/488_original_1654164352.png?1654164352');
insert into subbanner values(4,'https://https://www.myrealtrip.com/promotions/flight-america','		https://d2ur7st6jjikze.cloudfront.net/cms/1843_original_1651471374.png?1651471374');
insert into subbanner values(5,'https://flights.myrealtrip.com/air/b2c/AIR/INT/AIRINTSCH0100100010.k1?initform=RT&domintgubun=I&depctycd=SEL&depctycd=HNL&depctycd=&depctycd=&depctynm=%EC%84%9C%EC%9A%B8&depctynm=%ED%98%B8%EB%86%80%EB%A3%B0%EB%A3%A8&depctynm=&depctynm=&arrctycd=HNL&arrctycd=SEL&arrctycd=&arrctycd=&arrctynm=%ED%98%B8%EB%86%80%EB%A3%B0%EB%A3%A8&arrctynm=%EC%84%9C%EC%9A%B8&arrctynm=&arrctynm=&depdt=2022-07-13&depdt=2022-07-20&depdt=&depdt=&opencase=N&opencase=N&opencase=N&openday=&openday=&openday=&depdomintgbn=I&secrchType=FARE&maxprice=&availcount=250&tasktype=B2C&adtcount=1&chdcount=0&infcount=0&cabinclass=Y&nonstop=&freebag=&orgDepctycd=&orgDepctycd=&orgDepctycd=&orgDepctycd=&orgArrctycd=&orgArrctycd=&orgArrctycd=&orgArrctycd=&orgPreferaircd=&preferaircd=OZ&KSESID=air%3Ab2c%3ASELK138RB%3ASELK138RB%3A%3A00','	https://d2ur7st6jjikze.cloudfront.net/cms/532_original_1654845604.png?1654845604');
insert into subbanner values(6,'https://www.myrealtrip.com/promotions/dom-flight','	https://d2ur7st6jjikze.cloudfront.net/cms/574_original_1651046108.png?1651046108');

select * from subbanner;

create table jeju_ticket(
    jeju_ticket_num int primary key auto_increment,
    nation varchar(300) not null,
    trip varchar(300) not null,
    airtime varchar(300) not null,
    price varchar(300) not null,
    airline varchar(300) not null,
    img_url varchar(3000) not null
);
drop table jeju_ticket;
insert into jeju_ticket values("1","서울 → 제주","✈️서울 → 제주",'6월 28일 - 6월 28일',"37,500원 ~ ","6월 출발","https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/19_medium_1638246713.jpg?1638246713%22");
insert into jeju_ticket values("2","제주 → 서울","✈️제주 → 서울",'6월 29일 - 6월 29일',"35,560원 ~ ","6월 출발","https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/20_medium_1649405809.jpg?1649405809%22");
insert into jeju_ticket values("3","서울 → 제주","✈️서울 → 제주",'7월 12일 - 7월 12일',"40,950원 ~ ","7월 출발","https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/21_medium_1647571123.jpg?1647571123%22");
insert into jeju_ticket values("4","제주 → 서울","✈️제주 → 서울",'7월 12일 - 7월 12일',"38,650원 ~ ","7월 출발","https://d2ur7st6jjikze.cloudfront.net/flight_cms_desktop/22_medium_1649405632.jpg?1649405632%22");

create table hotel_banner(
	bannerId int primary key auto_increment,
	bannerURL varchar(1000) not null,
	bannerImage varchar(1000) not null
);
insert into hotel_banner values("1","https://www.myrealtrip.com/promotions/toss2206","https://d2ur7st6jjikze.cloudfront.net/cms/2174_original_1654821470.jpg?1654821470");
insert into hotel_banner values("2","https://www.myrealtrip.com/promotions/myrealhocance_ep138","https://d2ur7st6jjikze.cloudfront.net/cms/2182_original_1655340807.png?1655340807");
insert into hotel_banner values("3","https://www.myrealtrip.com/promotions/myrealhocance_ep137","https://d2ur7st6jjikze.cloudfront.net/cms/2179_original_1655431275.png?1655431275");
insert into hotel_banner values("4","https://www.myrealtrip.com/promotions/myrealhocance_ep136","https://d2ur7st6jjikze.cloudfront.net/cms/2178_original_1655255289.png?1655255289");
insert into hotel_banner values("5","https://www.myrealtrip.com/promotions/myrealhocance_ep133","https://d2ur7st6jjikze.cloudfront.net/cms/2171_original_1655424527.png?1655424527");


create table up_sugso(
	up_sugso_num int primary key auto_increment,
	img_url varchar(3000) not null,
    category varchar(300) not null,
    sugso_name  varchar(300) not null,
    icon_img varchar(3000) not null,
    rating varchar(300) not null,
    count varchar(300) not null,
    price varchar(300) not null
);

drop table up_sugso;

select * from up_sugso;

insert into up_sugso values("1","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/04/09/HMld/21kAUvhJNh.jpg","호텔 ・ 제주도","코업시티 호텔 하버뷰","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","4.3","(81)","59,000원");
insert into up_sugso values("2","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2020/11/26/Hi2o/LImp2TgXuk.jpg","비앤비 ・ 제주도","용수보룸","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","4.9","(19)","230,000원");
insert into up_sugso values("3","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/01/27/8CUE/9F3pbuVPrj.jpg","호텔 ・ 제주도","메종글래드 제주","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","4.5","(131)","191,700원");
insert into up_sugso values("4","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/01/14/KCnn/uKGk1bm7zq.jpg","호텔 ・ 제주도","코델리아 리조트","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","3.8","(33)","46,000원");
insert into up_sugso values("5","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2020/11/25/4hYg/WyTSyIHPBD.jpeg","비앤비 ・ 제주도","라운지하우스 제주다","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","4.0","(2)","60,000원");
insert into up_sugso values("6","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/01/14/uDwg/KDRYgn9z4o.jpg","펜션 ・ 제주도","서귀포 더썸펜션","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","5.0","(11)","109,000원");
insert into up_sugso values("7","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/01/14/RgCk/Q4lE0oggRD.jpg","호텔 ・ 제주도","라마다 제주시티 호텔","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","4.3","(187)","73,000원");
insert into up_sugso values("8","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/01/14/PunP/zxgz28i0nF.jpg","호텔 ・ 제주도","제주 마레보 리조트","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","3.7","(7)","179,000원");
insert into up_sugso values("9","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/04/28/l48N/dWPv7jztEC.jpg","비앤비 ・ 제주도","오피스 제주 - 함덕 독채 두낭","https://dffoxz5he03rp.cloudfront.net/icons/ic_reviewevent_12x12_blue_400.svg","후기 이벤트","''","280,000원");
insert into up_sugso values("10","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2020/11/05/GgoM/7bjX0ZqrJn.jpg","비앤비 ・ 제주도","호텔창고","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","4.8","(5)","300,000원");
insert into up_sugso values("11","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/01/14/MyYg/chNUwp1CaO.jpg","펜션 ・ 제주도","제주 써니펜션2","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","5.0","(5)","99,000원");
insert into up_sugso values("12","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2021/02/23/bPUy/PVeiX122s4.jpg","펜션 ・ 제주도","부띠끄 스테이 스놉","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","5.0","(1)","86,250원");



create table special_hotel(
	specal_hotel_num int primary key auto_increment,
	img_url varchar(3000) not null,
    category varchar(300) not null,
    sugso_name  varchar(300) not null,
    icon_img varchar(3000) not null,
    rating varchar(300) not null,
    count varchar(300) not null,
    price varchar(300) not null
);

insert into special_hotel values("1","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/02/10/HmgU/b7qafzOKdv.jpg","호텔 ・ 제주도","신라스테이 제주","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","4.6","(60)","157,500원");
insert into special_hotel values("2","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/01/14/IuXD/NbnnP8TQsf.jpg","호텔 ・ 제주도","제주도 부영 호텔&리조트","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","4.9","(8)","171,000원");
insert into special_hotel values("3","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/01/17/101q/AX1t5Z7vzE.jpg","호텔 ・ 제주도","서머셋 제주신화월드","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","3.5","(2)","606,100원");
insert into special_hotel values("4","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/01/14/qYcA/HdFpqBDvR1.jpg","호텔 ・ 제주도","휘슬락 호텔","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","4.3","(128)","110,000원");
insert into special_hotel values("5","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/03/30/cxMZ/ddO17j4n34.jpg","호텔 ・ 제주도","라마다 프라다 제주 호텔","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","4.4","(41)","164,900원");
insert into special_hotel values("6","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/02/10/oagB/IkYB3cUtD1.jpg","호텔 ・ 제주도","롯데 시티호텔 제주","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","4.8","(39)","167,200원");
insert into special_hotel values("7","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/04/22/Qdwa/LCldf1w8fe.jpg","호텔 ・ 제주도","신화관 제주신화월드 호텔앤리조트","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","4.4","(9)","365,750원");
insert into special_hotel values("8","https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/01/14/Muyf/sH3M7vvDqa.jpg","호텔 ・ 제주도","제주 오리엔탈 호텔","https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg","4.2","(96)","135,000원");

create table userTravelInfo(
	useremail varchar(300) not null,
    datefilter varchar(300) not null,
    hotelname varchar(300) not null,
    hotelImg varchar(1000) not null,
    hotelPrice varchar(300) not null
);

select * from userTravelInfo;

create table userAirTravelInfo(
	useremail varchar(300) not null,
    datefilter varchar(300) not null,
    airline varchar(300) not null,
    airnum varchar(1000) not null,
    dep varchar(300) not null,
    arr varchar(300) not null,
    price varchar(300) not null
);
select * from userAirTravelInfo where useremail = "km2535@naver.com";
delete from userAirTravelInfo;