#image python 
FROM python:3.13-slim
#Repertoire de travail dans le conteneur 
WORKDIR /app
#Instalation des dépendances 
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
#Copie de tout le code 
COPY . .
#Le port sur le quel l'application écoute
EXPOSE 5000
#Exécution de l'application 
CMD ["python", "app.py"]
