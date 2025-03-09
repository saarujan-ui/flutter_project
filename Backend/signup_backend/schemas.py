from pydantic import BaseModel, EmailStr

# Schema for user input validation (Signup Request)
class UserCreate(BaseModel):
    username: str
    email: EmailStr
    password: str

# Schema for response after user registration
class UserResponse(BaseModel):
    id: str
    username: str
    email: EmailStr

    class Config:
        from_attributes = True  # Enables ORM mode for database models
