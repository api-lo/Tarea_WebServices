from flask import Flask
from flask.globals import request
from flask.json import jsonify
from flask_cors import CORS, cross_origin

app = Flask(__name__)
cors = CORS(app)
app.config['CORS_HEADERS'] = 'Content-Type'
app.config['CORS_HEADERS'] = 'Content-Type'
from users import users
from doctores import doctores

CORS(app)
cors = CORS(app, resources={
   r"/*": {
       "origins": "*",
       "Access-Control-Allow-Origin": "*"
   }
})

@cross_origin()

@app.route('/test')
def test():
    return jsonify({'response': 'exito'})
     
     
@app.route('/users')
def getUsers():
    return jsonify(users)

@app.route('/doctores')
def getall():
    return jsonify(doctores)

@app.route('/users/<string:Correo>/<string:contrasenia>')
def getUser(Correo,contrasenia):
    retorno = [user for user in users if user['Correo']== Correo  ]
    busqueda= [contra for contra in retorno if  contra['contrasenia']==contrasenia]
    return jsonify(busqueda)

@app.route('/clave/<string:contrasenia>')
def getContrasenia(contrasenia):
    retorno = [user for user in users if user['contrasenia']== contrasenia]
    return jsonify(retorno)



@app.route('/doctores', methods=['POST'])
@cross_origin()
def addDoctor():
    
    newDoctor = {
         'idDoctor': request.form['idDoctor'], 
         'Nombre': request.form['Nombre'], 
         'contacto': request.form['contacto'],         
         'Especialidad': request.form['Especialidad'],
         'Ofrece':request.form['Ofrece']
    }
    doctores.append(newDoctor)
    return jsonify(doctores)



if __name__ == '__main__':
    app.run(debug=True, port=5000)
