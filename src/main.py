from typing import Union
import socket
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def read_root():
	return { "hostname": socket.gethostname() }