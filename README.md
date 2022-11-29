# 추가적인 디코더를 활용한 다변수 시계열 데이터 트랜스포머 모델학습
2017103986 컴퓨터공학과 박민호

지도교수님 : 박경문

## Overview
다변수 시계열 데이터로부터 이상을 감지하는 것은 현대 산업에서 중요한 축을 담당하고 있다고 볼 수 있다. 

그러나 이상 신호의 특성상 정상 신호보다 그 비율이 매우 적기 때문에 정확하게 학습하고 감지해 내는 것이 어렵다. 

이러한 문제점을 해결하기 위한 선행 연구로 

TranAD: Deep Transformer Networks for Anomaly Detection in Multivariate Time Series Data

에서는 TranAD 모델을 제안하였다. 본 연구는 기존 TranAD 모델에 디코더를 추가함으로써 더 높은 성능을 이끌어낸다.

## Proposed Model
![image](https://user-images.githubusercontent.com/30232685/204455701-573f5256-f32e-4c0e-a962-4e63e1254f4f.png)

기존 TranAD모델에 새로운 **Decoder3**가 추가되었으며 **Phase3**이 추가되었다.

## Results (F1 scores)
![image](https://user-images.githubusercontent.com/30232685/204462018-897dc64e-206b-48ee-995c-e3b06dc20dc0.png)

## Required Program

Python **3.7** or higher

**Packages**: pandas, tqdm, matplotlib, dgl, numpy, SciencePlots, scikit-learn, xlrd==1.2.0

## Dataset
`preprocess.py` 코드를 활용해 사용

ex) `preprocess.py <dataset>` 

dataset name의 경우 `./data/` 폴더 참고

## Train
`main.py` 코드를 활용해 사용

`main.py --model TranAD --dataset <dataset> --retrain`


## Reference
[TranAD](http://vldb.org/pvldb/vol15/p1201-tuli.pdf)

