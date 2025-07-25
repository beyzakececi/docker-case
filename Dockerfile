# 1. Python 3.10 sürümüne sahip minimal bir base image kullanılır
FROM python:3.10-slim

# 2. Uygulamanın container içindeki çalışma dizini tanımlanır
WORKDIR /app

# 3. Bağımlılıkları içeren requirements.txt dosyası container'a kopyalanır
COPY requirements.txt .

# 4. Flask dahil olmak üzere bağımlılıklar pip ile yüklenir
RUN pip install --no-cache-dir -r requirements.txt

# 5. Proje dosyaları (örneğin app.py) container içine kopyalanır
COPY . .

# 6. Flask uygulamasının dışarıya açılacağı port belirtilir
EXPOSE 5000

# 7. Uygulama başlatma komutu verilir
CMD ["python", "app.py"]
