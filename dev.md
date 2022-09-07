## add a new branch——dev
- git branch dev2  # 创建新分支
- git checkout dev2 # 切换分支
- git branch # 查看当前分支

## 首先阅读源码
1、部署数据库  
个人使用的Heodisql软件，使用sql文件夹下的内容，创建两个数据库  
2、更新conf配置文件配置  
修改数据账号和密码，保持和本地一样;选择合适本地端口   
3、运行程序，看效果  
- go run main.go
- 或sh build.sh 执行脚本编译可执行文件执行