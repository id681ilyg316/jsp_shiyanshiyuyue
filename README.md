## 本项目实现的最终作用是基于JSP在线高校实验室预约管理系统
## 分为3个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 修改密码
 - 学生信息添加
 - 学生信息管理
 - 实验室添加
 - 实验室管理
 - 教师信息添加
 - 教师信息管理
 - 班级信息添加
 - 班级信息管理
 - 管理员信息管理
 - 管理员登录
 - 预约记录管理
### 第2个角色为教师角色，实现了如下功能：
 - 个人资料管理
 - 实验室预约
 - 教师登录
 - 查看我的预约记录
### 第3个角色为学生角色，实现了如下功能：
 - 个人资料管理
 - 学生登录
 - 实验室预约
 - 查看我的预约记录
## 数据库设计如下：
# 数据库设计文档

**数据库名：** shiyanshiyuyue

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [allusers](#allusers) |  |
| [banji](#banji) |  |
| [jiaoshixinxi](#jiaoshixinxi) |  |
| [shiyanshixinxi](#shiyanshixinxi) |  |
| [xueshengxinxi](#xueshengxinxi) |  |
| [yuyuejilu](#yuyuejilu) |  |

**表名：** <a id="allusers">allusers</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | pwd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | cx |   varchar   | 255 |   0    |    Y     |  N   |   '普通管理员'    |   |
|  5   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="banji">banji</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | banji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="jiaoshixinxi">jiaoshixinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | gonghao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  5   | xingbie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  6   | zhaopian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 照片  |
|  7   | zhicheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 职称  |
|  8   | zhujiaokecheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 主教课程  |
|  9   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  10   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  11   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="shiyanshixinxi">shiyanshixinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | shiyanshibianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | shiyanshimingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="xueshengxinxi">xueshengxinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | xuehao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 学号  |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  5   | xingbie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  6   | zhaopian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 照片  |
|  7   | banji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  9   | jiatingzhuzhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  11   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="yuyuejilu">yuyuejilu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | shiyanshibianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | shiyanshimingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | yuyueriqi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | yuyueshiduan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  7   | yuyueren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | issh |   varchar   | 2 |   0    |    Y     |  N   |   '否'    |   |
|  9   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**运行不出来可以微信 javape 我的公众号：源码码头**
