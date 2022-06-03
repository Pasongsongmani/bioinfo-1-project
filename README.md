#Term project 주제: Lin28a의 putative binding motif를 구해서 랜덤한 sequence와 섞어서 CNN 모델로 예측 모델 만들기.

#예상 과정
  1. Samtools mpileup으로 CLIP-35L33G.bam > CLIP-35L33G.pileup
  2. pileup 파일 결과물 preprocessing.
  3. shannon entropy 계산. 
  4. Fig 2SA/B 그려서 quality check.
  5. target variable 1로 dataset 만들기(1 = P(Y|X), it is binding site)
  6. random sequence generation, target variable 0로 dataset 만들기(0=P(Y|X), it is not binding site)
  7. CNN model generation - test

#시행착오

#1. Resource 부족으로 Lin28a의 WHOLE TRANSCRIPTOME수준의 PUTATIVE BINDING MOTIF를 분석하고자 했으나 40gb 정도 만들어진 후 MEMORY ERROR로 멈춤.

#2. 학부 서버컴에 bioconda 환경 설치 후 필수 package를 설치하고 있으나 samtools path 오류에 문제가 생겨서 진행이 안되고 있음. 


#2주차 진행과정

shanon_entropy 계산을 통해 0인 position과 0.8이상인 position에 대해 5'쪽으로 2, 3'쪽으로 +3 구역을 (6-mer) 잡아 non-binding motif와 putative-binding motif로 나누어 저장하였다. genome은 mm9으로 통합하여 사용. 

실험실 서버컴 불안정으로 macbook air(m1 chip, 8gb ram)으로 계산 중. 

non-binding motif는 null-model, putative-bindng motif는 target model로 하여 딥러닝 계획. 
