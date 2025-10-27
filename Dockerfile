# 使用官方 Node.js 18 Alpine 轻量镜像
FROM node:18-alpine

# 设置工作目录
WORKDIR /app

# 复制 package.json 并安装依赖
COPY package.json ./
RUN npm install

# 复制其余文件到工作目录
COPY . .

# 暴露端口（确保 index.js 监听同端口）
EXPOSE 3000

# 启动命令
CMD ["node", "index.js"]
