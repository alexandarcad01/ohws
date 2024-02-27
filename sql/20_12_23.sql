use cad_ohws;
Show tables;
select * from ohws_user_reg;

delimiter $$
create procedure insertvalueS(
in SNOparam int,
in USER_IDparam int,
in FIRST_NAMEparam varchar(255),
in LAST_NAMEparam varchar(255),
in USER_NAMEparam varchar(255),
in PASSWORDparam varchar(255),
in CONFIRM_PASSWORDparam varchar(255),
in EMAILparam varchar(255),
in PHONE_NUMBERparam mediumtext,
in ACCOUNT_TYPEparam varchar(255),
in CREATED_BYparam varchar(255),
in MODIFIED_BYparam varchar(255),
in CREATED_ONparam datetime,
in MODIFIED_ONparam datetime
)

begin
insert into ohws_user_reg (SNO,USER_id,FIRST_NAME, LAST_NAME, USER_NAME, PASSWORD, CONFIRM_PASSWORD,
 EMAIL, PHONE_NUMBER, ACCOUNT_TYPE, CREATED_BY, MODIFIED_BY, CREATED_ON, MODIFIED_ON) values (SNO, USER_IDparam,
 FIRST_NAMEparam, LAST_NAMEparam, USER_NAMEparam, PASSWORDparam, CONFIRM_PASSWORDparam,
 EMAILparam, PHONE_NUMBERparam, ACCOUNT_TYPEparam, CREATED_BYparam, MODIFIED_BYparam, CREATED_ONparam, MODIFIED_ONparam
);
end $$

delimiter ;

call insertvalues(1,1031,'KALI','N','NA2023N-CO1E4F6','PASSWORD@123','PASSWORD@123','KALINATARAJACAD01@GMAIL.COM',9360415015,'FREE',NULL,'2023-12-20',NULL,null);

drop procedure insertvalues;