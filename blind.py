from flask import *
import blind_board_DAO
import board
import member
import alchemy_board_repository
from blindlogging import *

app = Flask(__name__)
app.secret_key = 'qwer!@!@'

# Blueprint
app.register_blueprint(board.bp)
app.register_blueprint(member.bp)

# index 페이지
@app.route('/')
def home() :
    result = []
    result = blind_board_DAO.selectBoard()
    blind_logger.info('Welcome to the BLIND')
    return render_template('index.html', select_result = result)

# index 페이지
@app.route('/index')
def index() :
    blind_logger.info(f'bind.index() 진입')
    result = []
    if 'login_info' in session :
        # result = blind_board_DAO.selectBoard()
        result = alchemy_board_repository.selectBoard()
        id = session['login_info'].get('id')
        session_user = session['login_info']
        blind_logger.info(f'user {id} enter index')
        blind_logger.info(f'bind.index() 종료')
        
        return render_template('index.html', session_user = session_user, select_result = result)
    else :
        # result = blind_board_DAO.selectBoard()
        result = alchemy_board_repository.selectBoard()
        blind_logger.info('enter index')
        blind_logger.info(f'bind.index() 종료')
        return render_template('index.html', select_result = result)
    
# main
if __name__ == '__main__' :
    app.run(debug=True)



