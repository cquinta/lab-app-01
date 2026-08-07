# lab-app-01

Aplicação containerizada com FastAPI, servida via Uvicorn.

## Stack

- Python 3.13
- FastAPI
- Uvicorn 0.34.3

## Endpoints

| Método | Rota | Resposta |
|--------|------|----------|
| GET | `/` | `{"message": "Hello World"}` |

## Imagem Docker

A imagem da aplicação está disponível no Docker Hub: [carlosquintanilha/app-infnet-01](https://hub.docker.com/r/carlosquintanilha/app-infnet-01)

## Executar com Docker

```bash
docker build -t lab-app-01 .
docker run -p 8000:8000 lab-app-01
```

Ou utilizando a imagem publicada:

```bash
docker run -p 8000:8000 carlosquintanilha/app-infnet-01
```

A aplicação estará disponível em `http://localhost:8000`.

## Executar localmente

```bash
pip install -r requirements.txt
uvicorn main:app --host 0.0.0.0 --port 8000
```
