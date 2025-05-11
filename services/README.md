# Hướng dẫn sử dụng thư mục `services`

Thư mục `services` dùng để chứa các dịch vụ triển khai cho dự án, bao gồm:

- Website chính thức
- n8n (Workflow Automation)
- PostgreSQL (Cơ sở dữ liệu)
- pgAdmin (Quản lý PostgreSQL)
- MySQL (Cơ sở dữ liệu)
- phpMyAdmin (Quản lý MySQL)
- Mailserver (Máy chủ email)
- Odoo (ERP)
- WordPress (CMS)

## Cấu trúc thư mục

Mỗi dịch vụ nên có một thư mục con riêng, chứa các file cấu hình cần thiết (ví dụ: `docker-compose.yml`, `.env`, ...).

```
services/
├── website/
├── n8n/
├── postgresql/
├── pgadmin/
├── mysql/
├── phpmyadmin/
├── mailserver/
├── mongodb/
├── odoo/
└── wordpress/
```

## Kết nối qua Traefik

- **Traefik** được sử dụng làm reverse proxy, SSL termination, load balancing cho tất cả các dịch vụ trong thư mục này.
- Mỗi dịch vụ cần cấu hình nhãn (labels) phù hợp để Traefik tự động nhận diện và cấp phát SSL, routing domain/subdomain.

## Hướng dẫn triển khai

1. Cài đặt Docker và Docker Compose.
2. Cấu hình các dịch vụ trong từng thư mục con.
3. Đảm bảo các dịch vụ đều có cấu hình labels cho Traefik.
4. Khởi động Traefik và các dịch vụ bằng Docker Compose.

## Lưu ý

- Quản lý thông tin nhạy cảm (mật khẩu, API key, ...) qua biến môi trường hoặc file `.env`.
- Tham khảo tài liệu chính thức của từng dịch vụ để cấu hình chi tiết hơn.

---