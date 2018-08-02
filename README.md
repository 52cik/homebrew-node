# homebrew-node

> brew cask node 淘宝镜像源


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

**PS: `export HOMEBREW_NO_AUTO_UPDATE=true` 可关闭自动更新**

``` sh
$ brew update
```

**天朝用户如果 `brew update` 直接更新非常慢的话，推荐用下面方法**

``` sh
$ brew untap 52cik/node # 移除源
$ brew tap 52cik/node   # 添加源
```


## cask 目录

\# | 名称 | 版本 | 描述
:-- | :-- | :-- | :--
1 | **node4** | v4.9.1  | 淘宝镜像地址 (LTS 持续更新到 2017-04-01, 维护到 2018-04-01)
2 | **node5** | v5.12.0 | 淘宝镜像地址 (No LTS)
3 | **node6** | v6.14.3 | 淘宝镜像地址 (LTS 持续更新到 2018-04-01, 维护到 2019-04-01)
4 | **node7** | v7.10.1 | 淘宝镜像地址 (No LTS)
5 | **node8** | v8.11.3 | 淘宝镜像地址 (LTS 持续更新到 2019-04-01, 维护到 2019-12-01)
6 | **node9** | v9.11.2 | 淘宝镜像地址 (No LTS)
7 | **node10** | v10.8.0 | 淘宝镜像地址 (LTS 持续更新到 2020-04-01, 维护到 2021-04-01)

[LTS schedule](https://github.com/nodejs/LTS#lts-schedule1)

![LTS schedule](https://github.com/nodejs/LTS/raw/master/schedule.png)
