from fastapi import FastAPI, HTTPException


app = FastAPI()


@app.get('/')
def get_root():
    try:
        my_list = [1, 2, 3, 4]
        item = my_list[5]
    except Exception as e:
        raise HTTPException(status_code=500, detail="Server error")
    return {'message': 'Hello World'}

@app.get('/health')
def health_check():
    return {"ping": "pong"}
