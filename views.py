from flask import render_template, flash, redirect
from app import app
#from .forms import LoginForm

#def index():
 
#@app.route('/login', methods=['GET', 'POST'])
@app.route('/index')
def login():
    #form = LoginForm()
    return render_template('form.html',
                           title='Submit',
                           form=form)
@app.route('/kuis')
def kuis():

	return render_template('kuis.py')
