@app.route('/')
def index():
	return'Index Page'

@app.route('hello')
def hello():
	return 'Hello, World'

@app.route('/hello/<username>')
def show_profile(username):
	return 'Hello, {}'.format(username)
