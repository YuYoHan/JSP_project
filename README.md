# 마이리얼트립 

## 프로젝트 소개
이번 프로젝트 완료 후 브리핑 할 때 쓰던 자료이다. 
프로젝트에 대한 간단한 소개이다. 

## 스토리 보드

![](https://velog.velcdn.com/images/km2535/post/8e124f17-d2e8-49c6-b72f-aec004706f72/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/419a294f-4b24-4dfb-9cea-b1fa542f8a0f/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/79a3874b-4f63-4d97-8cd7-b20811605dd3/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/350e1bcf-79c0-4157-8bc1-c664478d6110/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/b220bf5b-11e8-4a61-91e2-364d5fb02efe/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/5c6562d3-bc2e-40fb-9ae8-503d02a35279/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/62825748-0fb7-41f8-8e61-4090ab0758fc/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/e98d719b-c3cf-470c-836f-fe2fbc0df148/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/68a94c86-88cf-4391-9597-7ed34401206f/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/dd6a5470-352e-4525-9798-e728eda02e89/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/700daeb1-b2b4-40bb-af0d-799979b3b5ee/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/ce7bd05d-80e4-4997-92d5-839ad355ecbf/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/5faf92ae-b319-4164-a1b0-bce832191fd0/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/252d5ae2-f38e-40af-b015-0d5922f17833/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/2d03102a-7f00-4040-9d8e-07ecd1e4ebe6/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/01d1b893-1bf5-456f-afd9-a966759c9f35/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/81d23486-102f-4bc6-9701-09de129d6d8f/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/33a0c2f4-ce80-4891-b9b2-2551fc4f0730/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/b563dffc-b5ea-4f96-85bd-8d2dd622c597/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/9b7d1bf7-affb-4793-99f0-cb3f8a027136/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/f9e450ec-540e-4084-abcd-44c0bf2d6fda/image.jpg)
![](https://velog.velcdn.com/images/km2535/post/c822cb4c-b566-453d-9ffa-1603d5b881ba/image.jpg)


## 마이리얼트립
먼저 우리가 작성 한 코드의 흐름은 아래의 내용을 참고하면 된다.
첫 페이지를 작성할 때 들어간 로직프로세스인데 다른 서브페이지도 아래와 같이 작성하였다. 

코드를 하나씩 작성해보면 좋겠지만 생각보다 양이 방대해져서 블로그에 올리기는 부적절하다고 생각되어 깃허브를 참고 해주었으면 좋겠다. 

블로그에는 들어간 로직프로세스와 핵심 컨셉이였던 API와 swiper 사용을 위주로 설명 할 것이다. 

### [마이리얼트립  전체 소스코드 보기](https://github.com/YuYoHan/Myrealtrip_project)

### 전체적인 구성
![](https://velog.velcdn.com/images/km2535/post/37f7e653-c69a-4472-9d9e-d93590f702a6/image.png)

위의 프로세스가 복잡해 보이지만 MVC 모델2로 작성하기 위해 파일을 나누다 보니 사이즈가 커져서 그렇다. 

해당 프로세스는 처음 페이지에 접근하게 되면 이루어지는 과정을 나타낸다. 
클라이언트가 요청을 하면 web.xml에서 서블릿 패턴을 인식하여 frontcontroller로 보내준다. frontcontroller에서는 요청받은 url을 이용하여 각각 switch문을 이용하여 사용자가 요청한 정보를 받아 볼 수 있도록 처리하게 된다. 

클라이언트가 처음 접속하면 frontcontroller를 통해 myrealtrip.jsp로 접근하게 되는 것이다. 
해당 프론트컨트롤러 객체는 httpservelt을 상속받는데 이를 통해 doPost와 doGet으로 처리하는데 우리는 doPost로 접근해도 doGet메소드에서 처리하도록 통합했다. 

그 과정에서 indexAction을 실행하게 되고 여기에 대부분의 로직이 담기게 된다. indexAction은 Action을 인터페이스로 상속 받고 httpServelteRequest와 Response객체를 실행하도록 한다. 
상속받은 객체로 req와 resp에 대한 메소드를 사용할 수 있게 되는 것이다. 

그러기 전에 
DAO와 DTO를 별도로 정의하여 indexAction에서 객체를 생성한다. 
dao에는 action에서 사용할 메소드들을 정의한다. 메소드는 데이터베이스를 통해 값을 가지고 올 수 있도록 처리하는데 이때 mybatis를 통해 값을 가지고 올 수 있게 하는 것이다. 

sqlmapconfig.xml를 통해 factory를 만들고 config.xml을 통해서 우리의 데이터 베이스를 알려준다. 그리고 각각의 xml 파일을 만들어서 쿼리문을 작성하면 된다. 
정의한 메소드는 xml에 정의한 쿼리문 중 어떤 걸 실행할지 결정하는 것이다. 

dao 객체를 생성하여 해당되는 메소드를 실행하고 어떤 타입으로 받든 해당되는 객체타입으로 받아와서 req.setAttribute를 통해 값을 담아 주었다. 

이제 ActionTo 객체도 생성하여 경로와 방식을 결정하여 넘겨주면 프론트컨트롤러에는 action 변수에 해당되는 값이 담기게 되고 실행하게 되면서 페이지를 응답한다. 
redirect는 다시 요청할 url을 보내는 것이지만 거의 대부분 forward로 처리했다. 

우리가 담은 데이터는 list타입임으로 응답한 페이지에서 foreach를 통해서 넘겨준 데이터들을 페이지에 보여주면서 하나의 로직이 끝나게 된다. 

이 과정에서 mybatis와 jsp에서는 jstl을 사용하여 jsp 내부에는 로직을 담당하는 코드없이 별도로 분리했다. 

우리의 사이트는 거의 모든 페이지가 이러한 프로세스로 만들어졌다. 

### 실시간 항공권 API
글을 작성하면서 우리의 핵심 컨셉을 설명하지 않을 수 없다. 
실제 사이트에서는 방대한 데이터를 가지고 페이지를 구성하였는데 가장 큰 고민은 항공권을 어떻게 받아올지가 가장 큰 고민이였다. 

우리의 데이터베이스에 직접 이 데이터들을 집어넣을까 고민도 했지만 핵심 컨셉을 유지하기 위해서는 새로운 것을 적용해 볼 수 밖에 없었다. 

공공데이터 포탈을 활용하여 데이터를 받아오기로 결정하여 api key를 받아 실시간 운항계획을 받아왔다. 

막상 url을 요청하고 데이터는 받기 쉬워도 이 데이터를 어떻게 풀어서 우리 프로젝트에 어떻게 녹여낼지가 나에겐 매우 큰 숙제가 되었다. 

#### 데이터 받아오기
json이 아닌 xml의 형태의 데이터를 받아온다. 
dao 클래스에 정의
```java
public NodeList getAirAPI() {
try {
//document instance를 생성
DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
// 인스턴스의 메소드를 실행, 이 빌더를 통해 xml로 가져온 데이터를 document타입으로 가공한다.
DocumentBuilder builder = factory.newDocumentBuilder();
//buffer타입의 객체를 생성하고 
StringBuffer pharm_url = new StringBuffer();
//가져오고자 하는 요청 주소를 append한다.
pharm_url.append("http://openapi.airport.co.kr/service/rest/FlightStatusList/getFlightStatusList");
pharm_url.append("?ServiceKey=[서비스키]");
pharm_url. append("&schAirCode=GMP");
//URL 객체로 해당 stringbuffer를 넘겨주고
URL url = new URL(pharm_url.toString());
//bufferinputStream객체로 생성하면 가져오기 완료
BufferedInputStream xmldata = new BufferedInputStream(url.openStream());

//가져온 데이터는 builder를 통해 parse메소드로 넘겨주면 document타입이 된다. 
Document document = builder.parse(xmldata);
//xml의 요소를 가져오려면 getDocumentElement메소드를 사용한다.
Element root = document.getDocumentElement();
//xml의 요소는 node요소이다. 우리가 원하는 데이터들은 xml의 item에 들어있으니 NodeList 객체 타입으로 list변수에 넣어주자.
NodeList list = root.getElementsByTagName("item");
//우리의 정보가 들어있는 list를 리턴하면 끝.
return list;
// 아래는 실패했을 경우 처리하는 catch문이다. 
} catch (MalformedURLException e) {
e.printStackTrace();
} catch (ParserConfigurationException e) {
e.printStackTrace();
} catch (IOException e) {
e.printStackTrace();
} catch (SAXException e) {
e.printStackTrace();
}
//데이터가 없다면 null을 반환한다. 
return null;
}
``` 

데이터 가공하기
데이터를 NodeList로 받아왔다. 그 과정이 쉽지 않았지만 여러 데이터들을 하나의 묶음으로 가져올 수 있었다. 
대신 번거롭게 생성하는 객체들이 많았고 이렇게 가져올 수 도 있지만 아마 더 효율적인 방법이 존재할 것이다. 

아래의 코드는 NodeList로 받아온 항공권에 대해서만 가공한 코드를 발췌한 것이다. 
```java
// dao를 통해 데이터를 받아 왔으니 필요함
AirDAO adao = new AirDAO();
// 해당 메소드를 실행하면 NodeList타입으로 받아오게 됨.
NodeList nodelist = adao.getAirAPI();
//List타입의 Map형태의 객체를 넣는 변수를 만든다. 
List<Map<String, Object>> list  = new ArrayList<>();
// map타입으로 각각의 데이터를 넣기 때문에 해당 변수를 만든다.
Map<String, Object> map = null;
//NodeList의 길이만큼 반복시켜서 노드들을 가져온다.
// [{key : value, key : value...},{key : value, key : value...},
//{key : value, key : value...},{key : value, key : value...}.......]
for (int i = 0; i < nodelist.getLength(); i++) {
//새로운 HashMap을 만들어 map에 넣을 준비를 한다. 
map = new HashMap<>();

//노드에 있는 item의 자식요소를 가져온다
//({key : value, key : value ..})
Node node = nodelist.item(i);
NodeList item_childlist = node.getChildNodes();
// 가져온 자식 요소의 길이 만큼 반복시키면 자식 요소 안의 
// 모든 데이터들을 가져 올 수 있다. 
  for (int j = 0; j < item_childlist.getLength(); j++) {
// 자식 요소의 item 안에 비로소 우리가 원하는 데이터가 존재한다. 
    Node item_childe = item_childlist.item(j);
// 아래와 같이 조건문으로 우리가 원하는 데이터를 별도로 뽑아낼 수 있다. 
    if(item_childe.getNodeName().equals("etd")) { 
//별도로 뽑아낸 데이터는 우리가 원하는 key네임으로 저장할 수 있다.
      map.put("fEtd", item_childe.getTextContent().substring(0,2)); 
      map.put("bEtd", item_childe.getTextContent().substring(2,4));
    }else {
// 나머지 데이터도 노드네임을 key로 노드value를 value로 map에다가 넣어주자
      map.put(item_childe.getNodeName(), item_childe.getTextContent()); 
    }
  }
//여기까지 실행되면 map에 키-값 구조로 담긴 데이터가 hashMap으로 존재한다.
//리스트로 만들어서 map을 저장할 수 있다. 
  list.add(i,map);
}
// setAttribute로 list를 담자. 
req.setAttribute("list", list);
// 이하 설명 생략. 
ActionTo acto = new ActionTo();
acto.setRedirect(false);
acto.setPath("/app/air/airlist.jsp");
return acto;
}
```
>map을 for문 안에 둔 이유?
 한번 반복문을 실행하고 다시 초기화하지 않으면 같은 이름의 map의 key에 들어가기 때문에 데이터가 덮어씌어져서 결국 마지막 데이터만 들어가게 된다. 

>hashmap을 list타입으로 저장한 이유? 
hashmap은 key를 알고 있다면 배열의 요소를 빠르게 찾을 수 있는 장점을 가지고 있다. list타입은 인덱스 요소로 접근해야 함으로 원하는 데이터를 접근하려면 순서대로 접근해야 하는 단점이 존재한다. 무조건 위의 코드처럼 작성하라는 것이 아니라 우리의 목적에 맞게끔 작성하면 된다. 
우리의 목적은 실시간 항공권을 리스트 형식으로 보여주는 것이다.  
모든 데이터를 보여주기위해 foreach를 통해 순서대로 담긴 객체를 출력하면 된다. 
우리는 순서대로 객체가 담긴 자료를 출력하면 되는 것이기에 list타입의 hashmap을 추가한 것이다. 

##### 받아온 실제 데이터(xml)
```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
  <header>
    <resultCode>00</resultCode>
    <resultMsg>NORMAL SERVICE.</resultMsg>
  </header>
  <body>
    <items>
// Node node = nodelist.item(i) item 태그를 포함하여 가져옴
      <item>
//NodeList item_childlist = node.getChildNodes(); 형제 노드들을 모두 가져옴. 그래서 노드 리스트 타입임. 
//길이가 안에 있는 태그들의 갯수임. 
        <airFln>RS901</airFln>
  // 여기 태그부터 설명하겠음, 
 //Node item_childe = item_childlist.item(1);
// 해당되는 item의 인덱스 번호 1이라 위와 같이 작성함.
// item_childe.getNodeName() -> airlineEnglish
//item_childe.getTextContent() -> AIR SEOUL
        <airlineEnglish>AIR SEOUL</airlineEnglish>
        <airlineKorean>에어서울</airlineKorean>
        <airport>GMP</airport>
        <arrivedEng>JEJU</arrivedEng>
        <arrivedKor>제주</arrivedKor>
        <boardingEng>GIMPO</boardingEng>
        <boardingKor>서울/김포</boardingKor>
        <city>CJU</city>
        <etd>0612</etd>
        <flightDate>2022/06/29</flightDate>
        <gate>20</gate>
        <io>O</io>
        <line>국내</line>
        <rmkEng>DEPARTED</rmkEng>
        <rmkKor>출발</rmkKor>
        <std>0600</std>
      </item>
      <item>
        ....내용 생략
      </item>
    </items>
    <numOfRows>10</numOfRows>
    <pageNo>1</pageNo>
    <totalCount>1410</totalCount>
  </body>
</response>
```
코드에서 보듯이 map에다가 key value로 노드 네임과 getTextContent를 넣었다. 
그리고 list에다가 인덱스 번호를 지정하여 넣었는데 
map에 put하기 전에 새로운 hashMap을 만들어야 중복된 내용을 제거하지 않고 새로운 객체를 만들어 저장할 수 있다. 

list 타입의 map에다가 넣으면 다음과 같은 형태로 표현 할  수 있다. 
코드에는 바로 표현하였으나 정확히는 위의 xml형태임. 
list에 넣어야 비로소 아래와 같은 표현이 가능함
결국 우리는 아래와 같이 데이터를 가공하기 위해 위에서 많은 노력을 했던 것이다. 
```
[
  {"airFln" : "RS901", 
   "airlineEnglish":"AIR SEOUL", 
   "airlineKorean" : "에어서울",
   ....이하 생략
  },
  {...},
  {...}
]
```


### swiper.js
솔직히 swiper를 처음 접한거는 코리아나 클론페이지를 만들면서 알게 되었다. 어떤 라이브러리든 배우려면 많은 시간이 소요된다. 
swiper도 사용한다면 무궁무진하게 사용 가능하여 배워야 할 것도 많고 시간도 많이 걸린다. 
다만 배워두면 슬라이드 이미지를 쉽게 구현할 수 있다는 장점이 있으나 의존성이 하나 더 생겼기 때문에 솔직한 마음으로 버리고 싶다. 

단, 많은 노력이 필요하지 않는 슬라이드 이미지 구현은  swiper를 사용하는 것도 나쁘지 않다고 생각한다. 

여기 블로그에서는 깊게 다루지 않고 우리 프로젝트에서 사용한 옵션만 다룬다. 

```java
<div class="swiper swiper-initialized risingHotel swiper-initializedse swiper-pointer-events">
  <div class="swiper-wrapper">
  <c:forEach items="${hotelspecialList}" var="sen">
    <div class="swiper-slide swiper-slide-active">
     <a class="ProductCard-Container" href="${cp}/loading/reserve.rs?datefilter=${param.datefilter}&hotelnum=${sen.up_sugso_num}&hotelname=${sen.sugso_name}&hotelImg=${sen.img_url}&hotelPrice=${sen.price}">
     <div class="ProductCard-image">
      <img class="css-y5m0bt" src="${sen.img_url}">
     </div> 
    <div class="ProductCard-Content"">
     <p class="ProductCard-Category">${sen.category}</p>
     <p class="ProductCard-Name">${sen.sugso_name}</p>
     <div class="ReviewRatingCount">
      <img class="css-labkkb" src="${sen.icon_img}" alt="icon">
       <p class="RatingCount-Rating">${sen.rating}</p>
       <p class="RatingCount-Count">${sen.count}</p>
     </div>
       <p class="ProductCard-Price">${sen.price}</p>
    </div> 
     </a>
  </div>
  </c:forEach>
 </div>
</div>
<button type="button" class="hotelspecialList-button-prev">
 <img src="${cp}/app/img/arrow_prev.svg">
</button>
<button type="button" class="hotelspecialList-button-next">
 <img src="${cp}/app/img/arrow_next.svg"> 
</button>
</div>
```

```js
//css 선택자를 그대로 사용하면 된다. swiper의 최상위 선택자인 swiper를 사용했다.
const swiper = new Swiper(".Best > .swiper", {
// 한페이지에 보여 줄 슬라이드의 갯수이다. 
slidesPerView: 7,
// 다음 버튼을 누르면 한개씩 움직임으로 그룹을 1개로 잡았다. 
slidesPerGroup: 1,
// 버튼은 조작하기 위해 button의 클래스를 아래와 같이 적었다.
navigation: {
nextEl: ".hotelsugsoList-button-next",
prevEl: ".hotelsugsoList-button-prev",
},
});
```
swiper를 사용하기 위한 구상은 html의 구성과 클래스 이름을 설정하는 것이다. 
위 2가지 규칙을 준수하면 js에는 옵션만 넣어주면 잘 작동한다. 
여기서 cdn을 생략했는데 이는 공식 문서에 잘 나와 있다. 

클래스 이름을 잘 설정하면 우리가 원하는 스타일을 적용시킬 수 있고 이미지 슬라이드도 문제없이 작동 할 것이다. 



### 프로젝트 소감 
솔직히 말하자면 이번 프로젝트를 하면서 가장 많이 했던 말이 '왜 안되지?' 이다. 
배운 점.
1. 공공데이터 포탈을 xml타입의 데이터를 받아와서 원하는데로 가공하여 뷰단에 보여주는 방법
2. swiper.js의 적용과 다양한 옵션 설정 방법 
3. mvc2로 코드 작성
4. 데이터베이스 통신과 다양한 css적용 

아쉬운 점.
1.  테스트기반으로 작성된 코드가 아니라는 점
2. 리펙토링 과정을 거치지 않았다는 점
3. 기능을 전부 구현하지 못했다는 점

계단을 하나씩 밟아 나가자. 
