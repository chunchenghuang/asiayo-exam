# Autoscaling
* 設定 crobjob，例如使用 AWS lambda設定 cron ，配合 alarm/alert 等等於活動期間前預先 scale out，應付流量。
* 事先透過 load testing，例如用 `seige` command，測試何種程度的 autoscaling 能應付百倍之流量。
* 事先申請拓寬頻寬，或加裝線路，確保連線穩定度
* 也可增加伺服器資源做 Vertical Scaling 確保單機處理能力足夠。

# Reliability
* 確保跨時區高可用性架構預防災害發生
* database replicas, 跨時區高可用性
* DNS failover 配合備援服務

# Caching
* 做 Redis/Memcached 等 application caching 策略，減少重複讀取 database
* Content caching 例如 Nginx
* Edge cache servers 例如 CDN
* API caching，例如加 Cache-Control header 讓 CDN 或 browser 都可以暫存 API requests

# 服務優化
* Single Page Applications
* 在 code 裡面就要做 client-side caching
* 優化資料庫查詢方式，建立索引，database subset
* 優化程式邏輯與 code complexity

# 監控
* 確保對網站可用性及可靠性的監控並可即時做出反應