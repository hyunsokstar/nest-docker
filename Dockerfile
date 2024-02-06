FROM node:18
RUN mkdir -p /var/app
WORKDIR /var/app
COPY . . 
RUN npm install
RUN npm run build
EXPOSE 9000
CMD ["node", "dist/main.js"]

# FROM 으로 베이스 이미지 생성 node 가 설치된 이미지 사용
# RUN 으로 폴더 생성
# WORKDIR 로 실행 위치 설정
# COPY . . 으로 현재 프로젝트 폴더를  /var/app 으로 복사
# RUN 으로 모듈 설치
# RUN 으로 build
# EXPOSE 로 9000 포트 개방
# CMD 로 서버 실행
