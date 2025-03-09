# Base Image (Python 공식 이미지 사용)
FROM python:3.10

# 작업 디렉토리 설정
WORKDIR /app

# 종속성 설치 (캐시 최적화)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 애플리케이션 코드 복사
COPY . .

# FastAPI 실행 (Uvicorn 사용)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
