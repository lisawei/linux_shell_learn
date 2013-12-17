#linux 目录介绍

目录:
linux:/home/username
mac: /Users/username
pwd 查看当前目录
root目录：/root 超级用户目录
cd ~ 到达当前用户根目录
如果一个用户想要访问其他目录的数据，需要 root 权限，执行如下：

没有权限的情况
touch /Library/Python/2.7/site-packages
touch: /Library/Python/2.7/site-packages: Permission denied

使用超级权限执行：
sudo  touch /Library/Python/2.7/site-packages
sudo 的意思是 ： super user do

查看一个目录或文件的权限：
ls 查看这个目录下有哪些文件

ls -ls
查看命令使用文档，这个时候就是要男人出现了：

man ls
man的默认文档编辑器是vim， esc 退出编辑状态 :q 退出 :w 保持  ?search string  查找到按n代表查找下一个。
                        esc 退出编辑状态 按 i 代表编辑状态。
                        esc 退出编辑状态 按dd 代表删除一行。
                        放弃保存 q!
0 drwxr-xr-x  13 liuzheng  staff    442  6 17  2013 test



这个重要的是 drwxr-xr--  这个字段， r 代表 read，w 代表write ，x 代表execute 执行权限。
d代表是目录,以后3位一个组，

第一个 rwx 代表当前用户有什么权限，说明当前用户有读取，写入，执行test文件的权限。
第二个 r-x 代表当前用户所属组的权限，说明用户所属的组中其他成员有，读取和执行的权限。
第二个 r-- 代表其他用户，说明其他用户只有有读取的权限。

用户的认证信息在 cat /etc/passwd 文件中。

我们能看到root的用户信息。
root:*:0:0:System Administrator:/var/root:/bin/sh


man cat
cat 的意思是   cat -- concatenate and print files

接下来是查找文件中的内容：

使用grep, 假设我们查找 root

grep root /etc/passwd


接下来是访问http：

man curl
curl -lv "http://www.baidu.com/"
参数lv 代表打印出访问请求和response数据。

302 和location一起用 跳转到location的地址

接下来是下载和解压缩：
首先先cd 到当前用户根目录，当前用户根目录代表 ~，为什么到用户根目录，因为我们自己的目录，自己有权限，别人的目录我们没有权限。

cd ~

接下来创建文件夹：

mkdir tmp

#进入这个目录
cd tmp

下载一个文件的命令是 wget

wget https://www.djangoproject.com/m/releases/1.6/Django-1.6.1.tar.gz

注意看这个文件名是.tar.gz 结尾

.tar 是打包的文件，.gz 是使用gzip压缩的文件。

下载文件被下载了下来，我们现在解压这个问题

tar zxf Django-1.6.1.tar.gz

z 代表解压缩
x 代表extract
f 代表打印出解压的文件列表


命令的基本格式：命令 -参数 目标

拷贝文件：cp 源文件 目标文件
删除文件：rm 文件
强制删除：rm -f

拷贝目录：rm -r 源目录 目标目录
删除目录：rm -r 目录

查找文件：find 目录 -name '文件名'


join it


