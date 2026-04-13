FROM python:3.9-slim

WORKDIR /app

# 라이브러리 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 코드 복사
COPY . .

# FastAPI 실행 (8080 포트 사용 권장)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
