from fastapi import FastAPI, HTTPException
from pydantic import BaseModel

app = FastAPI()

class Prompt(BaseModel):
    text: str

@app.get("/")
def read_root():
    return {"message": "LLM Service for Security Labs"}

@app.post("/generate")
def generate_text(prompt: Prompt):
    # Simulate LLM response
    return {"generated_text": f"This is a simulated response to: {prompt.text}"}
