#!/bin/bash
# Tạo một bash script như sau để tự động lấy UID, GID trong container Odoo và gán quyền cho các thư mục mount từ host:
# Lấy UID và GID của user trong container odoo_18
USER_INFO=$(docker exec odoo_18 id -u)
GROUP_INFO=$(docker exec odoo_18 id -g)

echo "Odoo UID: $USER_INFO"
echo "Odoo GID: $GROUP_INFO"

# Gán quyền cho các thư mục mount từ host
sudo chown -R $USER_INFO:$GROUP_INFO ./odoo/web-data ./odoo/log ./odoo/addons ./odoo/conf
sudo chmod -R 700 ./odoo/web-data ./odoo/log ./odoo/addons ./odoo/conf

echo "Đã cập nhật quyền cho các thư mục Odoo."

# chown -R 100:101 web-data log addons conf
# chown -R 1000:1000 web-data log addons conf
# chmod -R 700 web-data log addons conf
# Chạy lệnh sau để khởi động lại container Odoo
# docker-compose up -d
# Hoặc nếu bạn muốn chạy lệnh này trong một script, bạn có thể sử dụng:
# docker-compose restart odoo_18
# sudo chmod -R 775 