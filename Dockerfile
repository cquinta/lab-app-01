FROM python:3.13-slim
LABEL "MAINTAINER"="Carlos Quintanilha"
RUN groupadd -r appuser && useradd -r -g appuser appuser
RUN apt-get update && apt-get install curl -y
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
RUN chown -R appuser:appuser /app
USER appuser
ENV VERSION=1.0
EXPOSE 8000
HEALTHCHECK --interval=30s --timeout=3s \
  CMD curl -f http://localhost:8000/health || exit 1
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000" ]
