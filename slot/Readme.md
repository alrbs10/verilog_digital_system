# SLOT MACHINE

## made by hamin Shim, jaewon Yoon

## 2022-12-01 Digital Experiment

### Function

- [x] 슬롯 숫자 정하는 모듈(순방향, 역방향, 랜덤?)
- [ ] 현재 가지고 있는 코인 정보 저장 및 수정 모듈
- [ ] Text Lcd 총괄하는 모듈
- [ ] LED 점멸 동작시키는 모듈
- [x] BCD to 7 Segment 디코더
- [x] 8개의 7 Segment 연결 모듈
- [ ] main(slot)

#### 슬롯 숫자 (순방향)

Number
-input: CLK,STOP,RST
-output: [3:0] NUM

기능: CLK이 positive edge일 때 숫자를 1씩 키운다. 이는 0~9를 반복한다.
(RST은 0으로 초기화하며, STOP 신호가 들어온다면 더 이상 증가하지 않는다.)

#### 슬롯 숫자 (역방향)

Back_Number
-input: CLK,STOP,RST
-output: [3:0] NUM

기능: CLK이 positive edge일 때 숫자를 1씩 줄인다. 이는 0~9를 반복한다.
(RST은 0으로 초기화하며, STOP 신호가 들어온다면 더 이상 증가하지 않는다.)
