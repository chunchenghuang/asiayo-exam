# 預設立場
* 排除網路異常
* 排除防火牆異常

# 如果還可以進去伺服器或已經在伺服器裡面
* 檢查 ssh key pair 是否正確
* 檢查 `~/.ssh/known_hosts` 及 `~/.ssh/authorized_keys` 主機指紋跟公鑰資料是不是存在
* 檢查 sshd 是否正常運作，`systemctl status sshd.service`，必要時可以 `systemctl restart sshd.service`

# 如果無法進入伺服器
* 確認 EC2 IP 是否有變動，是否使用 elastic IP
* 確認 security group 是否有 allow ssh protocol，port 22 inbound
* 確認其他人是否可以進入該伺服器
* 確認本地端金鑰是否正確，確認金鑰權限
* 重啟 EC2，注意備份

# 如果使用 Session Manager/EC2 Instance Connect
* 確認 IAM role/user 及 IAM policy 相關權限是否有允許 Session Manager/EC2 Instance Connect