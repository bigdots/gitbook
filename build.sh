#!/bin/bash

set -e

src="./src"
dist="./dist"
path=`pwd` #绝对路径
bookDirs=`ls ${src}`

echo "\033[33m ====================== start =========================== \033[0m"
for dir in $bookDirs
do
    # 构建gitbook
    echo "\033[36m gitbook build ${src}/${dir} \033[0m"
    gitbook build "${src}/${dir}"
    # 复制
    echo "\033[36m cp -r ${src}/${dir}/_book ${dist}/ \033[0m"
    cp -r "${src}/${dir}/_book" "${dist}/"
    # 删除目录
    echo "\033[36m rm -r -f ${dist}/$dir \033[0m"
    rm -r -f "${dist}/$dir"
    # 修改名称
    echo "\033[36m mv -f ${dist}/_book ${dist}/$dir \033[0m"
    mv -f "${dist}/_book" "${dist}/$dir"
done

# 提交仓库
cd "${dist}"
git pull
git add .
git commit -m 'update'
git push
cd $path

echo "\033[33m ============================= end ======================= \033[0m"