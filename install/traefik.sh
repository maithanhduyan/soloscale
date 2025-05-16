# Tạo một mạng riêng cho Docker tên là "web" để Traefik sử dụng
docker network create web

# Tạo một thư mục cho Traefik
touch ./traefik/acme.json
chmod 600 ./traefik/acme.json