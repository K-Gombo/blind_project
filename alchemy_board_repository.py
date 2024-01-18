from alchemy_db import engine, db_session
from alchemy_model import Board
# from sqlalchemy import select, delete, insert, update, text, desc, filter
from sqlalchemy import *


conn = db_session.connection()

# board 테이블 전체 SELECT (메인화면 게시글 전체 출력)
def selectBoard() :
    global conn

    sql = select(Board).order_by(desc(Board.date_time))
    result = conn.execute(sql)
    result_list = list(result)

    conn.commit()

    return result_list

# board 테이블 SELECT (글 상세보기)
def selectBoardByIdx(idx) :
    global conn

    sql = select(Board).where(Board.idx == idx)
    # sql_select = 'SELECT * FROM board WHERE idx = %s'
    result = conn.execute(sql)
    result_list = result.first()

    conn.commit()

    return result_list

 
# board 테이블 INSERT
def insertBoard(title, contents, id, name) :

    global conn

    sql = insert(Board).values(title=title, contents=contents, id=id, name=name)
    conn.execute(sql)
    # sql_insert = 'INSERT INTO board (title, contents, id, name) values (%s, %s, %s, %s)'
    conn.commit()


# board 테이블 UPDATE
def updateBoard(idx, title, contents, id, name) :

    global conn

    sql = update(Board).where(Board.idx == idx).values(title=title, contents=contents, id=id, name=name)
    # sql_update = 'UPDATE board SET title = %s, contents = %s, id = %s, name = %s WHERE idx = %s'

    conn.execute(sql)
    conn.commit()


# board 테이블 DELETE
def deleteBoardByIdx(idx) :

    global conn

    sql = delete(Board).where(Board.idx == idx)
    # sql_delete = 'DELETE FROM board WHERE idx = %s'
    conn.execute(sql)
    conn.commit()


# board 테이블 SELECT (검색)    # ORM
def selectBoardForSearch(search) :

    global conn

    sql = select(Board).filter(Board.title.like(f'%{search}%'))
    print(sql)
    # sql_select = 'SELECT * FROM board WHERE title LIKE %s;'
    result = conn.execute(sql)
    result_list = result.first()

    conn.commit()

    return result_list


