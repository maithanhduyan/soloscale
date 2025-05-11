# Hướng dẫn cài đặt và cấu hình Fail2ban, Logrotate, UFW trên Ubuntu

## 1. Cài đặt Fail2ban

```bash
sudo apt update
sudo apt install fail2ban -y
```

- Khởi động và bật fail2ban:
```bash
sudo systemctl enable --now fail2ban
```

- Kiểm tra trạng thái:
```bash
sudo systemctl status fail2ban
```

## 2. Cài đặt Logrotate

```bash
sudo apt install logrotate -y
```

- Logrotate thường được cấu hình sẵn tại `/etc/logrotate.conf` và các file trong `/etc/logrotate.d/`.

## 3. Mở port với UFW

- Cài đặt UFW:
```bash
sudo apt install ufw -y
```

- Mở các port cần thiết:
```bash
sudo ufw allow 80/tcp    # HTTP
sudo ufw allow 443/tcp   # HTTPS
sudo ufw allow 5432/tcp  # PostgreSQL
sudo ufw allow 3306/tcp  # MySQL
sudo ufw allow 25/tcp    # SMTP
sudo ufw allow 465/tcp   # SMTPS
sudo ufw allow 587/tcp   # SMTP Submission
sudo ufw allow 993/tcp   # IMAPS
```

- Bật UFW:
```bash
sudo ufw enable
```

- Kiểm tra trạng thái:
```bash
sudo ufw status
```

---

**Tham khảo thêm:**  
- [Fail2ban Documentation](https://www.fail2ban.org/wiki/index.php/Main_Page)  
- [Logrotate Manual](https://linux.die.net/man/8/logrotate)  
- [UFW Documentation](https://help.ubuntu.com/community/UFW)