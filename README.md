http://devljs.github.io

* 常用命令
```
hexo new post
hexo s  //启动服务
hexo g  //生成文件
```


# 安装 Hexo
```
npm install -g hexo
```
* 初始化博客
```
hexo init blog
cd blog
npm install
```

* 下载主题 NexT
>https://github.com/iissnan/hexo-theme-next

```
cd blog //初始化根目录
git clone https://github.com/iissnan/hexo-theme-next.git themes/next
```

* 编辑根目录_config.yml文件配置主题
```
# Extensions
## Plugins: http://hexo.io/plugins/
## Themes: http://hexo.io/themes/
theme: next
```

* 全局信息也在_config.yml 中进行配置, 每个主题下有对应的_config.yml


> [Hexo简写命令](http://wsgzao.github.io/post/hexo-guide/#Hexo简写命令)
> [利用swiftype为hexo添加站内搜索v2.0](http://www.jerryfu.net/post/search-engine-for-hexo-with-swiftype-v2.html#)
