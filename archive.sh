
# TeXLive 的iso镜像文件
######## 可用 ########
# 分卷打包并压缩
tar -cvf - texlive.iso | split -b 1970m - texlive.tar.part
for part in texlive.tar.part*; do
    gzip -f "$part"
done


# 合并分卷文件
cat texlive.tar.part* > texlive.tar
# 解压归档文件
tar -xvf texlive.tar

########## 这种办法下载的文件不完整, 无法解压 ##########
# 安装zip
sudo apt-get install -y zip
# 1.8g 为分卷大小, 约为1843M
zip -r -s 1900m texlive.iso.zip texlive.iso

# 分卷解压
zip -FF texlive.iso.zip --out merged.zip
unzip merged.zip

