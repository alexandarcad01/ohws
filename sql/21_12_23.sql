use cad_ohws;
Show tables;
select * from ohws_user_login;

delimiter $$

create procedure insert_user_login(
in LOGIN_IDparam int,
in USER_NAMEparam varchar(255),
in PASSWORDparam varchar(255),
in  USER_IDparam int
)

begin
insert into ohws_user_login (LOGIN_ID, USER_NAME, PASSWORD, USER_ID) values (LOGIN_IDparam, USER_NAMEparam,
 PASSWORDparam, USER_IDparam);
end $$

delimiter ;

call insert_user_login(2031,'NA2023N-CO1E4F6','PASSWORD@123',1031);

drop procedure insertvalues;

use cad_ohws;
Show tables;
select * from ohws_user_order;

delimiter $$

create procedure insert_user_order(
in ORDER_IDparam varchar(255),
in PRODUCT_IDparam int,
in PRODUCT_MRP_PRICEparam double,
in PRODUCT_REDAIL_PRICEparam double,
in DELIVERY_LOCATIONparam varchar(255),
in DELIVERY_BYparam varchar(255),
in USER_IDparam int
)

begin
insert into ohws_user_order (ORDER_ID, PRODUCT_ID, PRODUCT_MRP_PRICE, PRODUCT_REDAIL_PRICE,
 DELIVERY_LOCATION, DELIVERY_BY, USER_ID) values (ORDER_IDparam, PRODUCT_IDparam, PRODUCT_MRP_PRICEparam,
 PRODUCT_REDAIL_PRICEparam, DELIVERY_LOCATIONparam, DELIVERY_BYparam, USER_IDparam);
end $$

delimiter ;

call insert_user_order(2031,3031,2031,null,'RAMNADU','KALI',1031);

drop procedure insert_user_order;

delimiter $$
create procedure update_user_reg(
in tablename varchar(50),
in columnname1 varchar(50),
in columnmodifyvalue1 varchar(90),
in conditioncolumnname varchar(90),
in conditioncheckvalue int
) 
begin

set @updatestatement = Concat('update ',tablename,' set ', columnname ,'=\'',columnmodifyvalue,'\' where ',conditioncolumnname,'=',conditioncheckvalue);
prepare smt from @updatestatement;
execute smt;

end $$
delimiter ;

call update_user_reg('ohws_user_reg','Account_type','paid','sno',5);


drop procedure update_user_reg;

'ALTER table ',TABLENAME, ' ADD ', COLUMNNAME, DATATYPE;

'UPDATE ',TABLENAME,' SET ',COLUMNNAME ,'=','\'',CHANGEVALUE,'\'',',',COLUMNNAME1,'=','\'',CHANGEVALUE1,'\'',' WHERE ',CONDITIONCLM,'=', CONDITIONVAL; 

delimiter $$
create procedure update_users_reg(
in tablename varchar(50),
in columnname1 varchar(50),
in columnmodifyvalue1 varchar(90),
in conditioncolumnname varchar(90),
in conditioncheckvalue int
) 
begin

set @updatestatement = Concat('update ',tablename,' set ', columnname ,'=\'',columnmodifyvalue,'\' where ',conditioncolumnname,'=',conditioncheckvalue);
prepare smt from @updatestatement;
execute smt;

end $$
delimiter ;

call update_user_reg('ohws_user_reg','Account_type','paid','sno',5);
