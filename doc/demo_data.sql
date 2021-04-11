-- For demo

insert into user set userName='manager1',password='1',avatar='img/avatar/avatar1.png',userCode='manager1',realName='王毅',gender=TRUE,status=1,createAt=NOW();
set @manager1 = (select @@IDENTITY);
insert into user set userName='sales1',password='1',avatar='img/avatar/avatar1.png',userCode='sales1',realName='刘军',gender=TRUE,status=1,createAt=NOW();
set @sales1 = (select @@IDENTITY);
insert into user set userName='sales2',password='1',avatar='img/avatar/avatar2.png',userCode='sales1',realName='李佳慧',gender=FALSE,status=1,createAt=NOW();
set @sales2 = (select @@IDENTITY);
insert into user set userName='sales3',password='1',avatar='img/avatar/avatar1.png',userCode='sales3',realName='孙立人',gender=TRUE,status=1,createAt=NOW();
set @sales3 = (select @@IDENTITY);


insert into user set userName='manager2',password='1',avatar='img/avatar/avatar1.png',userCode='manager2',realName='孙祥',gender=TRUE,status=1,createAt=NOW();
set @manager2 = (select @@IDENTITY);
insert into user set userName='sales4',password='1',avatar='img/avatar/avatar1.png',userCode='sales4',realName='王德刚',gender=TRUE,status=1,createAt=NOW();
set @sales4 = (select @@IDENTITY);
insert into user set userName='sales5',password='1',avatar='img/avatar/avatar2.png',userCode='sales5',realName='赵萍',gender=FALSE,status=1,createAt=NOW();
set @sales5 = (select @@IDENTITY);
insert into user set userName='sales6',password='1',avatar='img/avatar/avatar1.png',userCode='sales6',realName='彭越',gender=TRUE,status=1,createAt=NOW();
set @sales6 = (select @@IDENTITY);


insert into role_user set userId = @manager1 , roleId =(SELECT roleId FROM role where roleName = '销售主管');
insert into role_user set userId = @sales1 , roleId =(SELECT roleId FROM role where roleName = '普通销售');
insert into role_user set userId = @sales2 , roleId =(SELECT roleId FROM role where roleName = '普通销售');
insert into role_user set userId = @sales3 , roleId =(SELECT roleId FROM role where roleName = '普通销售');

insert into role_user set userId = @manager2 , roleId =(SELECT roleId FROM role where roleName = '销售主管');
insert into role_user set userId = @sales4 , roleId =(SELECT roleId FROM role where roleName = '普通销售');
insert into role_user set userId = @sales5 , roleId =(SELECT roleId FROM role where roleName = '普通销售');
insert into role_user set userId = @sales6 , roleId =(SELECT roleId FROM role where roleName = '普通销售');


/* 生成销售架构*/

insert into org_unit set orgUnitName = '总公司',pid=null,orgIndex=0;
set @rootUnit = (select @@IDENTITY);

      insert into org_unit set orgUnitName = '辽宁',pid=@rootUnit,orgIndex=100;
      set @lnUnit = (select @@IDENTITY);

              insert into org_unit set orgUnitName = '沈阳',pid=@lnUnit,orgIndex=110;
              set @syUnit = (select @@IDENTITY);

                      insert into org_unit set orgUnitName = '和平区',pid=@syUnit,orgIndex=111;
                      set @hpUnit = (select @@IDENTITY);
                      insert into org_unit set orgUnitName = '皇姑区',pid=@syUnit,orgIndex=112;
                      set @hgUnit = (select @@IDENTITY);

              insert into org_unit set orgUnitName = '大连',pid=@lnUnit,orgIndex=120;
              set @dlUnit = (select @@IDENTITY);

                      insert into org_unit set orgUnitName = '中山区',pid=@dlUnit,orgIndex=121;
                      set @zsUnit = (select @@IDENTITY);
                      insert into org_unit set orgUnitName = '高新园区',pid=@dlUnit,orgIndex=122;
                      set @gxyUnit = (select @@IDENTITY);

      insert into org_unit set orgUnitName = '山东',pid=@rootUnit,orgIndex=200;
      set @sdUnit = (select @@IDENTITY);

      insert into org_unit set orgUnitName = '黑龙江',pid=@rootUnit,orgIndex=300;
      set @hljUnit = (select @@IDENTITY);

      insert into org_unit set orgUnitName = '吉林',pid=@rootUnit,orgIndex=400;
      set @jlUnit = (select @@IDENTITY);


/* 生成销售架构中的员工 */
insert into orgunit_user set orgUnitId = @syUnit,userId=@manager1,isUnitHead=true;
insert into orgunit_user set orgUnitId = @syUnit,userId=@sales1,isUnitHead=false;
insert into orgunit_user set orgUnitId = @hpUnit,userId=@sales2,isUnitHead=false;
insert into orgunit_user set orgUnitId = @hgUnit,userId=@sales3,isUnitHead=false;

insert into orgunit_user set orgUnitId = @dlUnit,userId=@manager2,isUnitHead=true;
insert into orgunit_user set orgUnitId = @syUnit,userId=@sales4,isUnitHead=false;
insert into orgunit_user set orgUnitId = @zsUnit,userId=@sales5,isUnitHead=false;
insert into orgunit_user set orgUnitId = @gxyUnit,userId=@sales6,isUnitHead=false;


/* 生成客户 */
insert into customer set customerName='大连瑞美泰国际贸易有限公司',industryId=14,categoryId=2,website='http://www.dlromat.com/',tel='83696215',star=3,address='辽宁金州区海天新界5号楼304',provinceId=8,cityId=573,sourceId=2,potential=0,createDate=now(),createBy=@manager1,owner=@sales1;
set @c1 = (select @@IDENTITY);
insert into share_group set resourceType = 1 ,resourceId = @c1,userId=@sales1;
insert into activity set resourceType=1,resourceId=@c1,activityType=100,content='创建了客户',createDate=now(),createBy=@sales1;

insert into customer set customerName='大连文路工程建设集团',industryId=3,categoryId=1,website='http://www.daliangonglu.com/',tel='86831135',star=5,address='沙区锦秀路2－4号',provinceId=8,cityId=573,sourceId=2,potential=0,createDate=now(),createBy=@manager1,owner=@sales1;
set @c2 = (select @@IDENTITY);
insert into share_group set resourceType = 1 ,resourceId = @c2,userId=@sales1;
insert into activity set resourceType=1,resourceId=@c2,activityType=100,content='创建了客户',createDate=now(),createBy=@sales1;

insert into customer set customerName='大连路明科技集团',industryId=6,categoryId=3,website='http://www.luminglight.com/',tel='83696215',star=1,address='甘井子高新园区七贤岭高能街1号',provinceId=8,cityId=573,sourceId=2,potential=1,createDate=now(),createBy=@manager1,owner=@sales1;
set @c3 = (select @@IDENTITY);
insert into share_group set resourceType = 1 ,resourceId = @c3,userId=@sales1;
insert into activity set resourceType=1,resourceId=@c3,activityType=100,content='创建了客户',createDate=now(),createBy=@sales1;

insert into customer set customerName='沈阳芊彩服装有限公司',industryId=14,categoryId=1,website='https://missbeauty.1688.com/',tel='68997887',star=2,address='沈阳市铁西区',provinceId=8,cityId=560,sourceId=1,potential=0,createDate=now(),createBy=@manager2,owner=@sales4;
set @c4 = (select @@IDENTITY);
insert into share_group set resourceType = 1 ,resourceId = @c4,userId=@sales4;
insert into activity set resourceType=1,resourceId=@c4,activityType=100,content='创建了客户',createDate=now(),createBy=@sales4;

insert into customer set customerName='沈阳雅诗妮服饰设计有限公司',industryId=14,categoryId=1,website='https://yashinifushi.1688.com',tel='68997667',star=4,address='沈阳市铁西区',provinceId=8,cityId=560,sourceId=1,potential=0,createDate=now(),createBy=@manager2,owner=@sales4;
set @c5 = (select @@IDENTITY);
insert into share_group set resourceType = 1 ,resourceId = @c5,userId=@sales4;
insert into activity set resourceType=1,resourceId=@c5,activityType=100,content='创建了客户',createDate=now(),createBy=@sales4;

insert into customer set customerName='亿达信息技术科技有限公司',industryId=6,categoryId=4,website='http://www.yidatec.com/',tel='68997327',star=1,address='大连市高新园区汇贤园1号腾飞园区1号楼3F',provinceId=8,cityId=573,sourceId=2,potential=0,createDate=now(),createBy=@manager2,owner=@sales4;
set @c5 = (select @@IDENTITY);
insert into share_group set resourceType = 1 ,resourceId = @c5,userId=@sales4;
insert into activity set resourceType=1,resourceId=@c5,activityType=100,content='创建了客户',createDate=now(),createBy=@sales4;


/* 联系人 */
insert into contacts set customerId = @c3,name='王毅',title='销售总监',dept='销售部',phone='15611234565',sex=1,email='wangyi@test.com',createDate=now(),createBy=@sales1;
insert into contacts set customerId = @c3,name='周详',title='项目经理',dept='IT部',phone='15613334564',sex=1,email='zhouxiang@test.com',createDate=now(),createBy=@sales1;
insert into contacts set customerId = @c3,name='徐小波',title='架构师',dept='IT部',phone='15713334563',sex=1,email='xuxiaobo@test.com',createDate=now(),createBy=@sales1;
insert into contacts set customerId = @c3,name='张春华',title='财务总监',dept='财务部',phone='15713334562',sex=0,email='zhangchunhua@test.com',createDate=now(),createBy=@sales1;
insert into contacts set customerId = @c3,name='刘晓云',title='客服',dept='HelpDesk',phone='1514534562',sex=0,email='liuxiaoyun@test.com',createDate=now(),createBy=@sales1;


/* 生成业务机会 */

insert into opportunity set name='进销存软件采购(瑞美泰)',customerId =@c1 ,amount=200000,endDate=date_add(now(),interval 5 MONTH),possibility=0,phase=1,createDate=now(),createBy=@sales1,owner=@sales1;
set @o1 = (select @@IDENTITY);
insert into share_group set resourceType = 2 ,resourceId = @o1,userId=@sales1;
insert into activity set resourceType=2,resourceId=@o1,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales1;

insert into opportunity set name='ERP软件采购(文路工程)',customerId =@c2 ,amount=250000,endDate=date_add(now(),interval 5 MONTH),possibility=0,phase=2,createDate=now(),createBy=@sales1,owner=@sales1;
set @o2 = (select @@IDENTITY);
insert into share_group set resourceType = 2 ,resourceId = @o2,userId=@sales1;
insert into activity set resourceType=2,resourceId=@o2,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales1;

insert into opportunity set name='CRM软件采购(文路工程)',customerId =@c2 ,amount=300000,endDate=date_add(now(),interval 5 MONTH),possibility=0,phase=3,createDate=now(),createBy=@sales1,owner=@sales1;
set @o3 = (select @@IDENTITY);
insert into share_group set resourceType = 2 ,resourceId = @o3,userId=@sales1;
insert into activity set resourceType=2,resourceId=@o3,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales1;

insert into opportunity set name='OA软件采购(文路工程)',customerId =@c2 ,amount=85000,endDate=date_add(now(),interval 5 MONTH),possibility=0,phase=4,createDate=now(),createBy=@sales1,owner=@sales1;
set @o4 = (select @@IDENTITY);
insert into share_group set resourceType = 2 ,resourceId = @o4,userId=@sales1;
insert into activity set resourceType=2,resourceId=@o4,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales1;




insert into opportunity set name='微信分销系统采购(路明)',customerId =@c3 ,amount=125000,endDate=date_add(now(),interval 5 MONTH),possibility=0,phase=1,createDate=now(),createBy=@sales1,owner=@sales1;
set @oo1 = (select @@IDENTITY);
insert into share_group set resourceType = 2 ,resourceId = @oo1,userId=@sales1;
insert into activity set resourceType=2,resourceId=@oo1,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales1;

insert into opportunity set name='商城系统采购(路明)',customerId =@c3 ,amount=155000,endDate=date_add(now(),interval 5 MONTH),possibility=0,phase=1,createDate=now(),createBy=@sales1,owner=@sales1;
set @oo2 = (select @@IDENTITY);
insert into share_group set resourceType=2 ,resourceId = @oo2,userId=@sales1;
insert into activity set resourceType=2,resourceId=@oo2,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales1;

insert into opportunity set name='物流系统采购(路明)',customerId =@c3 ,amount=208000,endDate=date_add(now(),interval 5 MONTH),possibility=0,phase=1,createDate=now(),createBy=@sales1,owner=@sales1;
set @oo3 = (select @@IDENTITY);
insert into share_group set resourceType=2 ,resourceId = @oo3,userId=@sales1;
insert into activity set resourceType=2,resourceId=@oo3,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales1;

insert into opportunity set name='仓储系统采购(路明)',customerId =@c3 ,amount=360000,endDate=date_add(now(),interval 5 MONTH),possibility=0,phase=1,createDate=now(),createBy=@sales1,owner=@sales1;
set @oo4 = (select @@IDENTITY);
insert into share_group set resourceType=2 ,resourceId = @oo4,userId=@sales1;
insert into activity set resourceType=2,resourceId=@oo4,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales1;

insert into opportunity set name='移动端仓储App(路明)',customerId =@c3 ,amount=360000,endDate=date_add(now(),interval 5 MONTH),possibility=0,phase=1,createDate=now(),createBy=@sales1,owner=@sales1;
set @oo5 = (select @@IDENTITY);
insert into share_group set resourceType=2 ,resourceId = @oo5,userId=@sales1;
insert into activity set resourceType=2,resourceId=@oo5,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales1;

insert into opportunity set name='移动端报关App(路明)',customerId =@c3 ,amount=320000,endDate=date_add(now(),interval 5 MONTH),possibility=0,phase=2,createDate=now(),createBy=@sales1,owner=@sales1;
set @oo6 = (select @@IDENTITY);
insert into share_group set resourceType=2 ,resourceId = @oo6,userId=@sales1;
insert into activity set resourceType=2,resourceId=@oo6,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales1;

insert into opportunity set name='移动端运输App(路明)',customerId =@c3 ,amount=310000,endDate=date_add(now(),interval 5 MONTH),possibility=0,phase=2,createDate=now(),createBy=@sales1,owner=@sales1;
set @oo7 = (select @@IDENTITY);
insert into share_group set resourceType=2 ,resourceId = @oo7,userId=@sales1;
insert into activity set resourceType=2,resourceId=@oo7,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales1;

insert into opportunity set name='移动端商城App(路明)',customerId =@c3 ,amount=130000,endDate=date_add(now(),interval 5 MONTH),possibility=0,phase=3,createDate=now(),createBy=@sales1,owner=@sales1;
set @oo8 = (select @@IDENTITY);
insert into share_group set resourceType=2 ,resourceId = @oo8,userId=@sales1;
insert into activity set resourceType=2,resourceId=@oo8,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales1;

insert into opportunity set name='财务结算系统(文路工程)',customerId =@c2 ,amount=500000,endDate=date_add(now(),interval 1 MONTH),possibility=0,budgetConfirmed=true,roiConfirmed=true,phase=5,win=true,createDate=now(),createBy=@sales1,owner=@sales1;
set @oo9 = (select @@IDENTITY);
insert into share_group set resourceType=2 ,resourceId = @oo9,userId=@sales1;
insert into activity set resourceType=2,resourceId=@oo9,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales1;

insert into opportunity set name='在线接单系统(文路工程)',customerId =@c2 ,amount=200000,endDate=date_add(now(),interval 1 MONTH),possibility=0,budgetConfirmed=true,roiConfirmed=true,phase=5,win=false,lossReason=1,createDate=now(),createBy=@sales1,owner=@sales1;
set @oo10 = (select @@IDENTITY);
insert into share_group set resourceType=2 ,resourceId = @oo10,userId=@sales1;
insert into activity set resourceType=2,resourceId=@oo10,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales1;

insert into opportunity set name='ticket系统(文路工程)',customerId =@c2 ,amount=100000,endDate=date_add(now(),interval 1 MONTH),possibility=0,budgetConfirmed=true,roiConfirmed=true,phase=5,win=true,createDate=now(),createBy=@sales1,owner=@sales1;
set @oo11 = (select @@IDENTITY);
insert into share_group set resourceType=2 ,resourceId = @oo11,userId=@sales1;
insert into activity set resourceType=2,resourceId=@oo11,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales1;

insert into opportunity set name='智能工程预算系统(文路工程)',customerId =@c2 ,amount=1000000,endDate=date_add(now(),interval 3 DAY),possibility=0,budgetConfirmed=true,roiConfirmed=true,phase=4,createDate=now(),createBy=@sales1,owner=@sales1;
set @oo12 = (select @@IDENTITY);
insert into share_group set resourceType=2 ,resourceId = @oo12,userId=@sales1;
insert into activity set resourceType=2,resourceId=@oo12,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales1;






insert into opportunity set name='安防系统集成方案(路明)',customerId =@c3 ,amount=3500000,endDate=date_add(now(),interval 5 MONTH),possibility=0,phase=1,createDate=now(),createBy=@sales1,owner=@sales2;
set @o5 = (select @@IDENTITY);
insert into share_group set resourceType = 2 ,resourceId = @o5,userId=@sales2;
insert into activity set resourceType=2,resourceId=@o5,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales2;

insert into opportunity set name='智能电梯采购(路明)',customerId =@c3 ,amount=2000000,endDate=date_add(now(),interval 5 MONTH),possibility=0,phase=2,createDate=now(),createBy=@sales1,owner=@sales2;
set @o6 = (select @@IDENTITY);
insert into share_group set resourceType = 2 ,resourceId = @o6,userId=@sales2;
insert into activity set resourceType=2,resourceId=@o6,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales2;

insert into opportunity set name='智能投影采购(路明)',customerId =@c3 ,amount=50000,endDate=date_add(now(),interval 5 MONTH),possibility=0,phase=3,createDate=now(),createBy=@sales1,owner=@sales2;
set @o7 = (select @@IDENTITY);
insert into share_group set resourceType = 2 ,resourceId = @o7,userId=@sales2;
insert into activity set resourceType=2,resourceId=@o7,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales2;

insert into opportunity set name='LED智能灯采购(路明)',customerId =@c3 ,amount=10000,endDate=date_add(now(),interval 5 MONTH),possibility=0,phase=4,createDate=now(),createBy=@sales1,owner=@sales2;
set @o8 = (select @@IDENTITY);
insert into share_group set resourceType = 2 ,resourceId = @o8,userId=@sales2;
insert into activity set resourceType=2,resourceId=@o8,activityType=100,content='创建了业务机会',createDate=now(),createBy=@sales2;