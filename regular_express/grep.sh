#grep命令

#参数说明：
# -a ：将 binary 档案以 text 档案的方式搜寻数据
# -c ：计算找到 '搜寻字符串' 的次数
# -i ：忽略大小写的不同，所以大小写视为相同
# -n ：顺便输出行号
# -v ：反向选择，亦即显示出没有 '搜寻字符串' 内容的那一行！

# 查找 the 字符串
grep -n 'the' regular_expression.txt
# 忽略大小写查找 the 字符串
grep -in 'the' regular_expression.txt
# 反向查找，意为查找无 the 字符串
grep -vn 'the' regular_expression.txt

# []:包含[]中的任意一个字符
# [abc]           ：表示“a”或“b”或“c”
# [0-9]           ：表示 0~9 中任意一个数字，等价于[0123456789]
# [\u4e00-\u9fa5] :表示任意一个汉字
# [^a1<]          :表示除“a”、“1”、“<”外的其它任意一个字符
# [^a-z]          :表示除小写字母外的任意一个字符

#查找“tast”或者“test”两个字符串。
grep -n 't[ae]st' regular_expression.txt
#查找不包含“#”的字符串
grep -n '[^#]' regular_expression.txt

# 查找字符"oog"
grep -n 'oog' regular_expression.txt
# 如果我不想要“oog”字符前面有 g，则查找“[^g]oog”
grep -n '[^g]oog' regular_expression.txt 
# 查找“[^go]oog”是指字符“oog”前面不能为 g 或者 o
grep -n '[^go]oog'regular_expression.txt

'a.ou.' : 小数点表示任意一个字符，一个小数点只能表示一个未知字符。

# *（星号）：代表重复前面 0 个或者多个字符。
# e*： 表示具有空字符或者一个以上 e 字符。
# ee*，表示前面的第一个 e 字符必须存在。第二个 e 则可以是 0 个或者多个 e 字符。
# eee*，表示前面两个 e 字符必须存在。第三个 e 则可以是 0 个或者多个 e 字符。
# ee*e ：表示前面的第一个与第三个 e 字符必须存在。第二个 e 则可以是 0 个或者多个 e 字符。
grep -n 'e*' regular_expression.txt 

grep -n '@*' regular_expression.txt 

grep -n 'eee*' regular_expression.txt 
# 行首符:^
# 行尾符:$
# 查找行首为 the 的字符行
grep -in '^i' regular_expression.txt
# 查找以 d 字母结尾的行
grep -n 'good.$' regular_expression.txt
# 查找空行
grep -n '^$' regular_expression.txt

# '^$':过滤掉空白行
# '^#':过滤掉注释行（以#号开头）

# ^word    表示带搜寻的字符串(word)在行首
# word$    表示带搜寻的字符串(word)在行尾
# .(小数点) 表示 1 个任意字符
# \        表示转义字符，在特殊字符前加\会将特殊字符意义去除
# *        表示重复 0 到无穷多个前一个 RE(正则表达式)字符
# [list]   表示搜索含有 l,i,s,t 任意字符的字符串
# [n1-n2]  表示搜索指定的字符串范围,例如[0-9] [a-z] [A-Z]等
# [^list]  表示反向字符串的范围,例如[^0-9]表示非数字字符，[^A-Z]表示非大写字符范围
# \{n,m\}  表示找出 n 到 m 个前一个 RE 字符
# \{n,\}   表示 n 个以上的前一个 RE 字符
