from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello! This is FastAPI from Private EC2", "status": "success"}

@app.get("/health")
def health_check():
    return {"status": "ok"}
