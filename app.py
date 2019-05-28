from flask import Flask, request, jsonify
from pyswip import Prolog

app = Flask(__name__)
CATEGORIAS = ["movil", "desarrollo_web", "programacion", "hardware"]

@app.route("/webhook/twitter", methods=["GET","POST"])
def manejador():
    if request.method == "POST":
        json = request.get_json()
        peticion = json["queryResult"]["queryText"]
        palabras = peticion.split()
        respuesta = ""
        if palabras[0].lower() == "cursos" or palabras[0].lower() == "curso":
            if palabras[1] in CATEGORIAS:
                p = Prolog()
                p.consult("cursos.pl")
                for solution in p.query("curso(X,Y,Z," + palabras[1] +")"):
                    respuesta += "curso: " + solution["X"] + " instuctor: " + solution["Y"] + " plataforma: " + solution["Z"]
            else:
                respuesta = "no se encontro la categoria"
        else:
            respuesta = "No entendi tu pregunta, trata escribiendo \"cursos\" y una categoria"
        return jsonify({"fulfillmentText": respuesta});
    return "hi"