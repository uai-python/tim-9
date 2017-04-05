from flask_wtf import Form
from wtforms import StringField, RadioField, SelectField
from wtforms.validators import DataRequired

class LoginForm(Form):
    name = StringField('name', validators=[DataRequired()])
    gender = RadioField('gender', choices = [('laki-laki', 'laki-laki'), ('perempuan','perempuan')])
    city = SelectField('city',choices=[(1, '---------'),(2, 'Jakarta Selatan'), (3, 'Jakarta Barat'),(4, 'Jakarta Timur'), (4, 'Jakarta Pusat')])
    
