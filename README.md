# homebrew-node

> brew node 淘宝镜像，提供了 cask 镜像源。


## 安装

``` sh
$ brew tap 52cik/node
```


## 使用

添加源后即可安装软件，例如安装 node8

``` sh
$ brew cask install node8 # 安装
$ brew cask zap node8     # 卸载
```

通过淘宝镜像安装，几乎秒装。


## 更新

``` sh
$ brew update
```

**天朝用户如果 `brew update` 直接更新非常慢的话，推荐用下面方法:**

**PS: `export HOMEBREW_NO_AUTO_UPDATE=true` 可关闭自动更新**

``` sh
$ brew untap 52cik/node # 移除源
$ brew tap 52cik/node   # 添加源
```


## cask 软件目录

\# | 名称 | 版本 | 描
:-- | :-- | :-- | :--
1 | **node4** | 4.9.1  | 淘宝镜像地址 (LTS 持续更新到 2017-04-01, 维护到 2018-04-01)
2 | **node5** | 5.12.0 | 淘宝镜像地址 (No LTS)
3 | **node6** | 6.14.3 | 淘宝镜像地址 (LTS 持续更新到 2018-04-01, 维护到 2019-04-01)
4 | **node7** | 7.10.1 | 淘宝镜像地址 (No LTS)
5 | **node8** | 8.11.3 | 淘宝镜像地址 (LTS 持续更新到 2019-04-01, 维护到 2019-12-01)
5 | **node9** | 9.11.2 | 淘宝镜像地址 (No LTS)
5 | **node10** | 10.7.0 | 淘宝镜像地址 (LTS 持续更新到 2020-04-01, 维护到 2021-04-01)

[LTS schedule](https://github.com/nodejs/LTS#lts-schedule1)

![LTS schedule](https://github.com/nodejs/LTS/raw/master/schedule.png)
