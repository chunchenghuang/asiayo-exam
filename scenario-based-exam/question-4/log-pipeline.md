# 情境
## 假設是微服務架構而非都在同一台伺服器
通常來說，除非你的應用程式與 ELK/EFK 集群位於同一台 Instance，於微服務集群的架構，你不會想要在你每個新服務的 instance 裡面裝 logstash/fluentd，因為:
* 這兩個比較偏向是中央化的日誌處理服務
* 包含了 filter 或是 transform 等等的功能，會消耗較多資源
* 如果都裝在同一台伺服器，流量高時以後很難 scale 應用程式/服務/logstash/fluentd，全部都綁在一起
* 需要一直加各種應用程式的日誌路徑到 logstash/fluentd 的 configs，難維護

# 使用beats於微服務架構
因此通常是在新服務的 instance/container 裝 beats，包含 filebeat, metricbeat, packetbeat 等專門收集日誌的服務去透過 tcp port 送資訊到 logstash/fluentd 的地方。這樣做的話好處有:
* scalability，可以裝到各種服務中，尤其是微服務
* 標準化，多個服務可以 output日誌然後用一組自動化佈署上去的 beats 傳送出去，當然也可以客製化
* 不需要將發送日誌到 logstash/fluentd 這個功能寫死到程式裡
* 對每個 instance/container 來說，輕量級，消耗資源少

架構大概就會是 beats -> logstash/fluentd -> elasticsearch -> kibana