# soloscale
Solo VPS Scale Multi Services

## Mô tả dự án

Dự án sử dụng Traefik làm reverse proxy để quản lý và phân phối lưu lượng đến nhiều dịch vụ phân tán trên các VPS khác nhau. Giải pháp này giúp doanh nghiệp tối ưu chi phí hạ tầng bằng cách tận dụng tài nguyên sẵn có, phù hợp với các doanh nghiệp start-up hoặc có nguồn lực hạn chế. Mục tiêu là cung cấp một hệ thống linh hoạt, dễ mở rộng và dễ quản lý cho các dịch vụ web, API hoặc ứng dụng nội bộ.

## Cách Traefik phân phối dịch vụ trên nhiều VPS

Traefik hoạt động như một reverse proxy thông minh, có khả năng tự động phát hiện và định tuyến lưu lượng đến các dịch vụ chạy trên nhiều VPS khác nhau. Mỗi VPS có thể chạy một hoặc nhiều dịch vụ (container, ứng dụng web, API, v.v.), và Traefik sẽ sử dụng các backend provider (như Docker, Kubernetes, hoặc file cấu hình tĩnh) để lấy thông tin về các dịch vụ này.

Khi có yêu cầu từ phía người dùng, Traefik sẽ:

1. Nhận request tại một điểm vào chung (ví dụ: một domain hoặc IP public).
2. Kiểm tra các rule định tuyến (dựa trên domain, path, header, v.v.) để xác định dịch vụ đích.
3. Chuyển tiếp request đến đúng VPS và đúng dịch vụ tương ứng, thông qua địa chỉ IP nội bộ hoặc public của VPS đó.
4. Hỗ trợ cân bằng tải, SSL termination, và tự động cập nhật cấu hình khi dịch vụ thay đổi.

Nhờ khả năng tự động phát hiện và cấu hình động, Traefik giúp việc mở rộng hoặc di chuyển dịch vụ giữa các VPS trở nên dễ dàng mà không cần chỉnh sửa thủ công nhiều cấu hình phức tạp.