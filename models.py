from config import db


class Biodata(db.Model):
	__tabelname__= 'biodata'
	
	id = db.Column(db.Integer, primary_key=True)
	nama = db.Column(db.String(45))
	jk = db.Column(db.String(10))
	umur = db.Column(db.Integer())
	kota = db.Column(db.String(10))
		
	def __init__(self, jk, umur, kota, nama):
		self.jk = jk
		self.umur = umur
		self.kota = kota
		self.nama = nama

	def __repr__(self):
		return '<Biodata %r>' % self.nama


class Pertanyaan(db.Model):

	__tabelname__= 'pertanyaan'
	
	idpertanyaan = db.Column(db.Integer, primary_key=True)
	pertanyaan = db.Column(db.String(500))
	jawaban= db.Column(db.String(10))
	
	def __init__(self, pertanyaan, jawaban):
		self.pertanyaan = pertanyaan
		self.jawaban = jawaban

	def __repr__(self):
		return '<Pertanyaan %r>' % self.pertanyaan

    

		