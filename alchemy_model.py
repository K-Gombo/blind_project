from sqlalchemy import Column, Integer, String, DateTime, ForeignKey
from alchemy_db import Base
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship

class Member(Base):
    __tablename__ = 'member'
    idx = Column(Integer, primary_key=True, autoincrement=True)
    id = Column(String(20), nullable=False)
    password = Column(String(20), nullable=False)
    name = Column(String(20), nullable=False)
    email = Column(String(30), nullable=False)

    def __init__(self, idx, id, password, name, email):
        self.idx = idx
        self.id = id
        self.password = password
        self.name = name
        self.email = email

    def __str__(self) :
        return f'''idx : {self.idx}, id : {self.id}, password : {self.password}, 
                 name : {self.name}, email : {self.email}'''
    
class Board(Base):
    __tablename__ = 'board'
    idx = Column(Integer, primary_key=True, autoincrement=True)
    title = Column(String(50), nullable=False)
    contents = Column(String(500), nullable=False)
    date_time = Column(DateTime(), server_default=func.now())
    id = Column(String(20), nullable=False)
    name = Column(String(20), nullable=False)
    replys = relationship("Reply", back_populates="board") # 자식 객체들을 참조하는 참조 변수


    def __init__(self, idx, title, contents, date_time, id, name):
        self.idx = idx
        self.title = title
        self.contents = contents
        self.date_time = date_time
        self.id = id
        self.name = name

    def __str__(self) :
        return f'''idx : {self.idx}, title : {self.title}, contents : {self.contents}, 
                 date_time : {self.date_time}, id : {self.id}, name : {self.name}'''
    
class Reply(Base):
    __tablename__ = 'reply'
    idx_rep = Column(Integer, primary_key=True, autoincrement=True)
    comment = Column(String(500), nullable=False)
    date_time_reply = Column(DateTime(), server_default=func.now())
    id_rep = Column(String(20), nullable=False)
    name_rep = Column(String(20), nullable=False)
    # idx = Column(Integer, nullable=False)
    idx = Column(Integer, ForeignKey("board.idx", ondelete='CASCADE'), nullable=False) # 자식 객체는 외래키로 부모 객체를 참조한다.
    board = relationship("Board", back_populates="replys") # 부모 객체를 참조하는 참조 변수

    def __init__(self, idx_rep, comment, date_time_reply, id_rep, name_rep, idx):
        self.idx_rep = idx_rep
        self.comment = comment
        self.date_time_reply = date_time_reply
        self.id_rep = id_rep
        self.name_rep = name_rep
        self.idx = idx

    # def __str__(self) :
    #     return f'''idx : {self.idx}, title : {self.title}, contents : {self.contents}, 
    #              date_time : {self.date_time}, id : {self.id}, name : {self.name}'''

# class User(Base):
#     __tablename__ = 'users'
#     id = Column(Integer, primary_key=True)
#     name = Column(String(50), unique=True)
#     email = Column(String(120), unique=True)

#     def __init__(self, name=None, email=None):
#         self.name = name
#         self.email = email

#     # def __repr__(self):
#     #     return '<User %r>' % (self.name)
    
#     def __str__(self) :
#         return f'id: {id}, email: {self.name}, name: {self.email}'

# class Dept(Base):
#     __tablename__ = "depts"
#     __table_args__ = {'mysql_collate': 'utf8_general_ci'}
#     deptno = Column(Integer, primary_key=True)
#     dname = Column(String(128))
#     loc = Column(String(128))

#     def __init__(self, deptno, dname, loc):
#         self.deptno = deptno
#         self.dname = dname
#         self.loc = loc    
    
#     def __str__(self) :
#         return f'deptno: {self.deptno}, dname: {self.dname}, loc: {self.loc}'