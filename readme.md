# book


## How to use

1. install [gitbook-cli](https://www.npmjs.com/package/gitbook-cli)

    ```cmd
    $ npm install -g gitbook-cli
    ```
2. new a book
    创建一个文件夹，并新建 `README.me` 和 `SUMMARY.md`。
    想写一个 SUMMARY.md 生成的自动化脚本

3. build the book
    ```cmd
    $ gitbook build
    ```


```bash
.
├── build.sh # 项目构建脚本
├── dist  # 存放构建后的文件
│   ├── index.html # 首页
│   └── react-know # 构建后的项目
    └── ...
├── readme.md
└── src # 存放源文件
    └── react-know # 项目源码
    └── ...
```