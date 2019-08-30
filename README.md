# homebrew-node

> brew cask node 淘宝镜像源

## 安装

```sh
$ brew tap 52cik/node
```

## 使用

添加源后即可安装软件，例如安装 node@12

```sh
$ brew cask install node@12   # 安装
$ brew cask uninstall node@12 # 卸载 (保留全局模块 npm 配置及缓存)
$ brew cask zap node@12       # 彻底卸载
```

通过淘宝镜像安装，几乎秒装。

**`uninstall` 卸载会保留全局安装的模块，`.npmrc` 配置，`.npm` 缓存等。**  
**如果要彻底卸载就用 `zap`，就好像从来没安装过 node 一样。**

## 更新

**PS: `export HOMEBREW_NO_AUTO_UPDATE=true` 可关闭自动更新**

```sh
$ brew update
```

**天朝用户如果 `brew update` 更新非常慢的话，推荐用下面方法**

```sh
$ brew untap 52cik/node # 移除源
$ brew tap 52cik/node   # 添加源
```

## cask 目录

| 名称       | 版本     | 状态     | 发布日期   | LTS 开始   | LTS 维护   | 停止维护   |
| :--------- | :------- | :------- | :--------- | :--------- | :--------- | :--------- |
| ~~**node@4**~~  | v4.9.1   | 终止维护 | 2015-09-08 | 2015-10-01 | 2017-04-01 | 2018-04-30 |
| ~~**node@5**~~  | v5.12.0  | 终止维护 | 2015-10-29 | -          | -          | 2016-06-30 |
| **node@6**  | v6.17.1  | LTS 维护 | 2016-04-26 | 2016-10-18 | 2018-04-30 | 2019-04    |
| ~~**node@7**~~  | v7.10.1  | 终止维护 | 2016-10-25 | -          | -          | 2017-06-30 |
| **node@8**  | v8.16.1  | LTS 开始 | 2017-05-30 | 2017-10-31 | 2018-04    | 2019-12    |
| ~~**node@9**~~  | v9.11.2  | 终止维护 | 2017-10-01 | -          | -          | 2018-06-30 |
| **node@10** | v10.16.3 | LTS 开始 | 2018-04-24 | 2018-10-30 | 2020-04    | 2021-04    |
| ~~**node@11**~~ | v11.15.0 | 当前版本 | 2018-10-23 | -          | -          | 2019-06    |
| **node@12** | v12.9.1  | 当前版本 | 2019-04-23 | 2019-10    | 2021-04    | 2022-04    |
| **node@13** | -        | 等待     | 2019-10-22 | -          | -          | 2020-06    |
| **node@14** | -        | 等待     | 2020-04    | 2020-10    | 2022-04    | 2023-04    |

**PS: node 4 5 7 9 11 已经移除，不再支持。**

[LTS schedule](https://github.com/nodejs/Release#release-schedule)

![LTS schedule](https://raw.githubusercontent.com/nodejs/Release/master/schedule.svg?sanitize=true)
