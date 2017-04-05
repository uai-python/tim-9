from flask import Flask, render_template, session, redirect, url_for, request
from sqlalchemy import func
from models import Pertanyaan, Biodata
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.debug=True
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:@localhost/kuispython'

db = SQLAlchemy(app)

@app.route('/', methods=['GET','POST'])
def index():
    if 'user' in session:
        fetch_data = pertanyaan.query.order_by(func.rand()).limit(1).all()
        nama = session['nama']
        return render_template('web.html', data=fetch_data, nama=nama)
    else:
        return redirect(url_for("login"))

@app.route('/login', methods=['GET','POST'])
def login():
    if request.method == 'POST':
        session['nama'] = request.form['nama']
        nama = request.form['nama']
        umur = request.form['umur']
        jk = request.form['jk']
        kota = request.form['kota']

        biodata = Biodata(umur, jk, kota, nama)
        db.session.add(biodata)
        db.session.commit()

        return redirect(url_for("index"))
    else:
        return render_template('index.html', title='home')

@app.route('/cek', methods=['GET','POST'])
def cek():
    if request.method == 'POST':
        jawaban = request.form['jawaban']

    return render_template('web.html', title='Cek')

@app.route('/logout')
def logout():
    # remove the username from the session if it's there
    session.pop('nama', None)
    return redirect(url_for('index'))

@app.route('/result', methods=['POST', 'GET'])
def result():
    return render_template('dashboard.html', title='Dashboard')

@app.errorhandler(404)
def not_found(error):
    return 'Page not found!', 404

# set the secret key.  keep this really secret:
app.secret_key = 'tebak-tebak'

if __name__ == "__main__":
    app.run(host='0.0.0.0')