# docker-redis-cluster

基于CentOS的使用ruby工具快速构建的Redis集群,是Redis的分布式解决方案

config                    配置文件目录
   |____nodes-6391.conf     主节点1
   |____nodes-6392.conf     主节点2
   |____nodes-6393.conf     主节点3
   |____nodes-6394.conf     从节点1
   |____nodes-6395.conf     从节点2
   |____nodes-6396.conf     从节点3
   |____nodes-6397.conf     备用测试主节点4
   |____nodes-6398.conf     备用测试从节点4
   |____redis.sh            容器启动后运行的脚本
   |____redis-trib.rb       ruby 实现的 redis 集群管理工具
   
Dockerfile              构建Redis镜像文件

docker-compose.yaml     编排所有需要运行的容器文件


