from flask import Flask,render_template

app = Flask(__name__)

@app.route('/')
def demo():
	return render_template('demo.html')
