from flask import render_template, flash, redirect
from app import app
from forms import LoginForm

#@app.route('/login', methods=['GET', 'POST'])
@app.route('/index')
def login():
    form = LoginForm()
    
    return render_template('login.html',
			    title='Sign In',
			    form=form)

@app.route('/kuis')
def kuis():
   
    return render_template('kuis.py')
