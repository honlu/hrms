create database hrms_C001;

use hrms_C001;  -- 广州公司的数据库

CREATE TABLE `attendance_record` (
                                     `id` bigint NOT NULL AUTO_INCREMENT,
                                     `attendance_id` varchar(32) NOT NULL COMMENT '考勤id',
                                     `staff_id` varchar(32) NOT NULL COMMENT '员工工号',
                                     `staff_name` varchar(10) NOT NULL COMMENT '员工姓名',
                                     `date` varchar(32) NOT NULL COMMENT '考勤月份',
                                     `work_days` int NOT NULL COMMENT '出勤天数',
                                     `leave_days` int NOT NULL COMMENT '请假天数',
                                     `overtime_days` int NOT NULL COMMENT '加班天数',
                                     `approve` int NOT NULL COMMENT '是否已审批, 0为未审批，1为审批通过，2为审批不通过',
                                     `created_at` datetime DEFAULT NULL,
                                     `updated_at` datetime DEFAULT NULL,
                                     `deleted_at` datetime DEFAULT NULL,
                                     PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `authority` (
                             `id` bigint NOT NULL AUTO_INCREMENT COMMENT '登陆授权表ID',
                             `authority_id` varchar(32) NOT NULL COMMENT '登陆授权表ID',
                             `staff_id` varchar(32) NOT NULL COMMENT '员工工号',
                             `user_password` varchar(32) NOT NULL COMMENT '登陆密码\\n',
                             `user_type` varchar(32) NOT NULL COMMENT '用户标示，normal普通用户、sys系统管理员、supersys超级管理员',
                             `created_at` datetime DEFAULT NULL COMMENT '创建时间',
                             `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
                             `deleted_at` datetime DEFAULT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `authority_detail` (
                                    `id` bigint NOT NULL AUTO_INCREMENT,
                                    `user_type` varchar(32) NOT NULL COMMENT '角色类型',
                                    `model` varchar(32) NOT NULL COMMENT '模块英文名称',
                                    `authority_content` varchar(32) NOT NULL COMMENT '授权详情',
                                    `name` varchar(32) NOT NULL COMMENT '模块名称',
                                    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `branch_company` (
                                  `id` int NOT NULL AUTO_INCREMENT,
                                  `branch_id` varchar(32) NOT NULL COMMENT '分公司标识',
                                  `name` varchar(32) NOT NULL COMMENT '分公司名称',
                                  `desc` text COMMENT '分公司介绍',
                                  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `candidate` (
                             `id` bigint NOT NULL AUTO_INCREMENT,
                             `candidate_id` varchar(32) NOT NULL COMMENT '候选人ID',
                             `staff_id` varchar(32) DEFAULT NULL COMMENT '面试官工号',
                             `name` varchar(10) NOT NULL COMMENT '候选人姓名',
                             `job_name` varchar(32) NOT NULL COMMENT '岗位名称',
                             `edu_level` varchar(32) DEFAULT NULL COMMENT '学历',
                             `major` varchar(32) DEFAULT NULL COMMENT '专业',
                             `experience` text COMMENT '工作经历',
                             `describe` text COMMENT '技能描述',
                             `email` varchar(32) DEFAULT NULL COMMENT '联系邮箱',
                             `evaluation` text COMMENT '面试评价',
                             `status` int NOT NULL COMMENT '录用状态，0录入信息、1拒绝、2通过',
                             `created_at` datetime DEFAULT NULL,
                             `updated_at` datetime DEFAULT NULL,
                             `deleted_at` datetime DEFAULT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `department` (
                              `id` bigint NOT NULL AUTO_INCREMENT,
                              `dep_id` varchar(32) NOT NULL COMMENT '部门id',
                              `dep_name` varchar(32) NOT NULL COMMENT '部门名称',
                              `created_at` datetime DEFAULT NULL,
                              `updated_at` datetime DEFAULT NULL,
                              `deleted_at` datetime DEFAULT NULL,
                              `dep_describe` varchar(64) DEFAULT NULL COMMENT '部门介绍',
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `example` (
                           `id` bigint NOT NULL AUTO_INCREMENT,
                           `example_id` varchar(32) NOT NULL COMMENT '考试Id',
                           `name` varchar(32) NOT NULL COMMENT '考试名称',
                           `describe` varchar(64) DEFAULT NULL COMMENT '考试介绍',
                           `date` varchar(10) NOT NULL COMMENT '考试日期',
                           `limit` int NOT NULL COMMENT '限制考试时间',
                           `content` text NOT NULL COMMENT '考试内容JSON格式',
                           `created_at` datetime DEFAULT NULL,
                           `updated_at` datetime DEFAULT NULL,
                           `deleted_at` datetime DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `example_score` (
                                 `id` bigint NOT NULL AUTO_INCREMENT,
                                 `example_id` varchar(32) NOT NULL COMMENT '考试信息ID',
                                 `staff_id` varchar(32) NOT NULL COMMENT '考试人工号',
                                 `staff_name` varchar(10) NOT NULL COMMENT '员工名称',
                                 `name` varchar(32) NOT NULL COMMENT '考试名称',
                                 `date` varchar(32) NOT NULL COMMENT '完成考试时间',
                                 `content` text NOT NULL COMMENT '标准答案',
                                 `commit` text NOT NULL COMMENT '提交的答案',
                                 `score` int NOT NULL COMMENT '考试成绩',
                                 `created_at` datetime DEFAULT NULL,
                                 `updated_at` datetime DEFAULT NULL,
                                 `deleted_at` datetime DEFAULT NULL,
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `notification` (
                                `id` bigint NOT NULL AUTO_INCREMENT,
                                `notice_id` varchar(32) NOT NULL COMMENT '通知Id',
                                `notice_title` varchar(32) NOT NULL COMMENT '通知标题',
                                `notice_content` text NOT NULL COMMENT '通知内容',
                                `type` varchar(32) NOT NULL COMMENT '通知类别',
                                `date` datetime NOT NULL COMMENT '通知时间',
                                `created_at` datetime DEFAULT NULL,
                                `updated_at` datetime DEFAULT NULL,
                                `deleted_at` datetime DEFAULT NULL,
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `rank` (
                        `id` bigint NOT NULL AUTO_INCREMENT,
                        `rank_id` varchar(32) DEFAULT NULL COMMENT '职级id',
                        `rank_name` varchar(32) DEFAULT NULL COMMENT '职位名称',
                        `created_at` datetime DEFAULT NULL,
                        `updated_at` datetime DEFAULT NULL,
                        `deleted_at` datetime DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `recruitment` (
                               `id` bigint NOT NULL AUTO_INCREMENT,
                               `recruitment_id` varchar(32) NOT NULL COMMENT '招聘信息Id',
                               `job_name` varchar(32) NOT NULL COMMENT '招聘岗位名称',
                               `job_type` varchar(32) NOT NULL COMMENT '岗位类型',
                               `base_location` varchar(32) NOT NULL COMMENT '工作地点',
                               `base_salary` varchar(32) NOT NULL COMMENT '基本薪资范围',
                               `edu_level` varchar(32) NOT NULL COMMENT '学历要求',
                               `experience` varchar(32) NOT NULL COMMENT '工作经验要求',
                               `describe` text NOT NULL COMMENT '岗位描述',
                               `email` varchar(32) NOT NULL COMMENT '投递邮箱',
                               `created_at` datetime DEFAULT NULL,
                               `updated_at` datetime DEFAULT NULL,
                               `deleted_at` datetime DEFAULT NULL,
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `salary` (
                          `id` bigint NOT NULL AUTO_INCREMENT,
                          `salary_id` varchar(32) NOT NULL COMMENT '工资表ID',
                          `staff_id` varchar(32) NOT NULL COMMENT '员工Id',
                          `staff_name` varchar(10) NOT NULL COMMENT '员工姓名',
                          `base` int NOT NULL COMMENT '基础薪资',
                          `subsidy` int NOT NULL COMMENT '住房补贴',
                          `bonus` int NOT NULL COMMENT '绩效奖金',
                          `commission` int NOT NULL COMMENT '提成奖金',
                          `fund` int NOT NULL COMMENT '是否交五险一金，1交2不交',
                          `other` int NOT NULL COMMENT '其他奖金',
                          `created_at` datetime DEFAULT NULL,
                          `updated_at` datetime DEFAULT NULL,
                          `deleted_at` datetime DEFAULT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



DROP TABLE IF EXISTS `salary_record`;

CREATE TABLE `salary_record` (
                                 `id` bigint NOT NULL AUTO_INCREMENT,
                                 `salary_record_id` varchar(32) NOT NULL COMMENT '工资单ID',
                                 `staff_id` varchar(32) NOT NULL COMMENT '员工Id',
                                 `staff_name` varchar(32) NOT NULL COMMENT '员工姓名',
                                 `base` int NOT NULL COMMENT '基础薪资',
                                 `subsidy` int NOT NULL COMMENT '住房补贴',
                                 `bonus` int NOT NULL COMMENT '绩效奖金',
                                 `commission` int NOT NULL COMMENT '提成薪资',
                                 `other` int NOT NULL COMMENT '其他薪资',
                                 `pension_insurance` decimal(10,2) NOT NULL COMMENT '需缴养老保险',
                                 `unemployment_insurance` decimal(10,2) NOT NULL COMMENT '需缴纳失业保险',
                                 `medical_insurance` decimal(10,2) NOT NULL COMMENT '需缴医疗保险',
                                 `housing_fund` decimal(10,2) NOT NULL COMMENT '需缴住房公积金',
                                 `tax` decimal(10,2) NOT NULL COMMENT '需缴个人所得税',
                                 `overtime` int NOT NULL COMMENT '加班薪资',
                                 `total` decimal(10,2) NOT NULL COMMENT '实发薪资',
                                 `is_pay` int NOT NULL COMMENT '是否已发放工资',
                                 `salary_date` varchar(32) NOT NULL COMMENT '记薪周期,202103',
                                 `created_at` datetime DEFAULT NULL,
                                 `updated_at` datetime DEFAULT NULL,
                                 `deleted_at` datetime DEFAULT NULL,
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `staff` (
                         `id` bigint NOT NULL AUTO_INCREMENT,
                         `staff_id` varchar(32) NOT NULL COMMENT '员工ID',
                         `staff_name` varchar(10) NOT NULL COMMENT '员工姓名',
                         `leader_staff_id` varchar(32) DEFAULT NULL COMMENT '上级员工工号',
                         `leader_name` varchar(10) DEFAULT NULL COMMENT '上级员工名称',
                         `birthday` date NOT NULL COMMENT '生日',
                         `identity_num` varchar(18) NOT NULL COMMENT '身份证号',
                         `sex` int NOT NULL COMMENT '性别；1男，0女',
                         `nation` varchar(32) NOT NULL COMMENT '民族',
                         `school` varchar(32) NOT NULL COMMENT '毕业院校',
                         `major` varchar(32) NOT NULL COMMENT '毕业专业',
                         `edu_level` varchar(32) NOT NULL COMMENT '学历',
                         `base_salary` int NOT NULL COMMENT '基本工资',
                         `card_num` varchar(32) NOT NULL COMMENT '银行卡号',
                         `rank_id` varchar(32) NOT NULL COMMENT '职位ID',
                         `dep_id` varchar(32) NOT NULL COMMENT '部门ID',
                         `email` varchar(32) NOT NULL COMMENT '电子邮箱',
                         `phone` bigint NOT NULL COMMENT '手机号',
                         `entry_date` date NOT NULL COMMENT '入职日期',
                         `created_at` datetime DEFAULT NULL,
                         `updated_at` datetime DEFAULT NULL,
                         `deleted_at` datetime DEFAULT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;













