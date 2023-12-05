# 使用 Ubuntu 作為基底映像檔
FROM ubuntu:latest

# 安裝 Python、Git 和一些基本的開發工具
RUN apt-get update && \
    apt-get install -y python3 python3-pip git vim nano

# 安裝網路除錯工具
RUN apt-get install -y curl wget net-tools

# clone Kohaku-NAI 專案
RUN git clone https://github.com/KohakuBlueleaf/Kohaku-NAI.git /Kohaku-NAI

# 工作目錄設定為 Kohaku-NAI 專案目錄
WORKDIR /Kohaku-NAI

# 安裝 Kohaku-NAI 專案所需的 Python 套件
RUN pip3 install -r requirements.txt

# 開放容器的終端介面，以便進行開發操作
CMD ["/bin/bash"]
