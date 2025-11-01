library(devtools)

# 在包目录下运行
document()

install()

usethis::use_readme_rmd()
usethis::use_testthat()

# 设置你的名字
system('git config --global user.name "Hc1023"')
# 设置你的邮箱
system('git config --global user.email "sisih@zju.edu.cn"')

usethis::use_github()
devtools::install_github("Hc1023/sisiUtils")

library(sisiUtils)
?read_excel_allsheets
