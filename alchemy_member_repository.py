from alchemy_db import engine, db_session
from alchemy_model import Member
# from sqlalchemy import select, delete, insert, update, text, desc, filter
from sqlalchemy import *


conn = db_session.connection()

# 로그인한 회원 정보를 Session에 담기위한 SELECT    # ORM
def selectMemberById(user_id) :

    global conn

    sql = select(Member).where(Member.id == user_id)

    # sql_select = 'SELECT * FROM member WHERE id = %s'
    result = conn.execute(sql)
    result_list = result.first()

    conn.commit()

    return result_list

# 회원 1명의 정보 SELECT
def selectMemberByIdx(idx) :

    global conn

    sql = select(Member).where(Member.idx == idx)
    # sql_select = 'SELECT * FROM member WHERE idx = %s'
    result = conn.execute(sql)
    result_list = result.first()

    conn.commit()

    return result_list

# 회원 정보 UPDATE
def updateMember(user_password, user_name, user_email, user_idx) :

    global conn

    sql = update(Member).where(Member.idx == user_idx).values(password=user_password, name=user_name, email=user_email)
    # sql_update = 'UPDATE member SET password = %s, name = %s, email = %s WHERE idx = %s'

    conn.execute(sql)
    conn.commit()

# 회원 정보 INSERT (회원가입)
def insertMemberInfo(insert_id, insert_password, insert_name, insert_email) :

    global conn

    sql = insert(Member).values(id=insert_id, password=insert_password, name=insert_name, email=insert_email)
    # sql_insert = 'INSERT INTO member (id, password, name, email) values (%s, %s, %s, %s)'

    conn.execute(sql)
    conn.commit()


# ID 중복 체크를 위한 SELECT    # ORM
def idDuplicateCheck(insert_id) :

    global conn

    sql = select(Member).where(Member.id == insert_id)
    # sql_select = 'SELECT id FROM blind.member WHERE id = %s'
    result = conn.execute(sql)
    result_list = result.first()

    conn.commit()

    return result_list

# Email 중복 체크를 위한 SELECT
def emailDuplicateCheck(insert_email) :
    global conn

    sql = select(Member).where(Member.email == insert_email)
    # sql_select = 'SELECT email FROM blind.member WHERE email = %s'
    result = conn.execute(sql)
    result_list = result.first()

    conn.commit()

    return result_list

# 닉네임 중복 체크를 위한 SELECT
def nameDuplicateCheck(insert_name) :
    global conn

    sql = select(Member).where(Member.name == insert_name)
    # sql_select = 'SELECT id FROM blind.member WHERE name = %s'
    result = conn.execute(sql)
    result_list = result.first()

    conn.commit()

    return result_list

# member 테이블 DELETE
def deleteMemberByIdx(idx) :

    global conn

    sql = delete(Member).where(Member.idx == idx)

    sql_delete = 'DELETE FROM member WHERE idx = %s'
    conn.execute(sql)
    conn.commit()

 
