* 使用 `nslookup` 、 `dig` 排查DNS解析是否有問題 (但通常這個可能會一直timeout而不是經常)
* 檢查防火牆 (但通常這個可能會一直timeout而不是經常)
* 使用 `ping` 、 `telnet` 等排查網路連線
* 如果懷疑在進入VPC 或伺服器叢集前
* 如果網路連線有問題使用，使用 `traceroute`、`mtr` ，排查網路連線中繼點是否有問題
* 如果網路連線允許，並可進入中繼點或異常點，可使用 `iptable` 或 `ifconfig` 檢查 route table 連線到異常目標是否正確設定，或
網卡IP是否正常設定
* 排查有無資源使用量異常例如滿 cpu，memory leak
* 如可進入目標排查伺服器，網路連線沒問題，其他資源沒問題，`iostat` 查詢磁碟IO
* 查看伺服器 log ，查看每個中繼點的 log，例如 nginx 、 load balancer ， load balancer 是否有連結不健康的伺服器
* 檢查外部服務例如 database ， API gateway ， lambda 等等
