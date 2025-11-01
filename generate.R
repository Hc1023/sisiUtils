library(devtools)

# 在包目录下运行
document()

install()

# 添加 README：
usethis::use_readme_rmd()
# 添加测试：
usethis::use_testthat()

# 设置你的名字
system('git config --global user.name "Hc1023"')
# 设置你的邮箱
system('git config --global user.email "sisih@zju.edu.cn"')

# 再次初始化 Git（如果之前已经初始化，可以跳过）
usethis::use_git(message = "test")
# 配置好本地 Git 后，再运行：
usethis::use_github()
# 如果已经有remote
usethis::use_git_remote("origin", url = NULL, overwrite = TRUE)
usethis::use_github()
# 创建远程仓库（需要登录 GitHub 或者设置 PAT）
# 推送本地仓库到 GitHub


# 打开你的 GitHub 仓库，确认文件已经上传。
usethis::browse_github()

devtools::install_github("Hc1023/sisiUtils")

library(sisiUtils)

