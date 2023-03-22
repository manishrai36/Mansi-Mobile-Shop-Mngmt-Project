create table company(
ownnm varchar(35) NOT NULL,
gstno varchar (40) NOT NULL,
conno number (13) NOT NULL,
email varchar (40) NOT NULL,
addr varchar (40) NOT NULL,
estdate date NOT NULL);
/

 create table AdminLog (
 userid char(10) primary key,
 username varchar(15) NOT NULL,
 types varchar(10) NOT NULL,
 email varchar(40) NOT NULL,
 npass varchar(10) NOT NULL,
 cpass varchar(10) NOT NULL);

/
 
 create table UserLog (
 userid char(10) primary key,
 username varchar(15) NOT NULL,
 types varchar(10) NOT NULL,
 email varchar(40) NOT NULL,
 npass varchar(10) NOT NULL,
 cpass varchar(10) NOT NULL);
/ 
  create table customer(
 cust_id varchar(10) primary key,
 cust_nm varchar(25) NOT NULL,
 email   varchar(28) NULL,
 phno    varchar(13) NOT NULL,
 addr    varchar(30) NOT NULL);

/
 
 create table suplier(
supid varchar(10) primary key,
comp varchar(30) NOT NULL,
supname varchar(30) NOT NULL,
supemail varchar(30) NOT NULL,
supphno number(13) NOT NULL,
supaddr varchar(50) NOT NULL);

/
 create table addproduct(
  prdid char(10) primary key,
    prdcomp varchar(30) NOT NULL,
    prdtype varchar(30) NOT NULL,
    prdmodel varchar(20) NOT NULL,
    storage number(10) NOT NULL,
    camera varchar(20) NOT NULL,
    ram number(10) NOT NULL,
    processor varchar(30) NOT NULL,
   battery number(10) NOT NULL,
   os varchar(30) NOT NULL,
   network varchar(30) NOT NULL,
   display decimal(7,2) NOT NULL,
   weight decimal(7,2)  NULL,
   color varchar(20)  NULL,
   simslot varchar(20) NOT NULL,
   mrp decimal(9,2) NOT NULL,
   tax decimal(7,2) NOT NULL,
   total decimal(9,2) NOT NULL,
   bcamera varchar(10) NOT NULL,
   rom number(10) NOT NULL);
 
/
  
    create table prdtype(
    prdtype varchar(30) NOT NULL);

/

 create table employee(
 empid char(10) primary key,
 efname varchar(20) NOT NULL,
 elname varchar(20) NOT NULL,
 efatname varchar(40) NOT NULL,
 email varchar(30) NULL,
 phno number(13) NOT NULL,
 address varchar(50) NOT NULL,
 dob date NOT NULL,
 gender varchar(20) NOT NULL,
  aadhar number(20) NULL,
 qualification varchar(50) NOT NULL,
 experience varchar (10) NOT NULL,
 dep varchar(30) NOT NULL,
 desig varchar(30) NOT NULL,
 jdate date NOT NULL,
 salary decimal(9,2) NOT NULL,
 picture varchar(50) NULL
);

/
 create table stock( types varchar(40) NOT NULL,company varchar(40),model varchar(40),imei varchar(50) primary key);


/
create table tbltemporder(
ordid varchar(10) NOT NULL,
sno number(5) NOT NULL,
orddate date NOT NULL,
arvdate date NOT NULL,
supid varchar(10) NOT  NULL,
comp varchar(30) NOT NULL,
supname varchar(30) NOT NULL,
supemail varchar(30) NOT NULL,
supphno number(13) NOT NULL,
supaddr varchar(50) NOT NULL,
 prdtype varchar(30) NOT NULL,
prdcomp varchar(30) NOT NULL,
 prdmodel varchar(20) NOT NULL,
mrp decimal(9,2) NOT NULL,
prdqnty number(10) NOT NULL,
tax decimal(7,2) NOT NULL,
ordamount decimal(9,2) NOT NULL);
/
create table tbleorder(
  ordid varchar(10) ,
  sno number(5) ,
  orddate date NOT NULL,
 arvdate date NOT NULL,
supid varchar(10) NOT  NULL,
comp varchar(30) NOT NULL,
supname varchar(30) NOT NULL,
supemail varchar(30) NOT NULL,
supphno number(13) NOT NULL,
supaddr varchar(50) NOT NULL,
 prdtype varchar(30) NOT NULL,
prdcomp varchar(30) NOT NULL,
 prdmodel varchar(20) NOT NULL,
mrp decimal(9,2) NOT NULL,
prdqnty number(10) NOT NULL,
tax decimal(7,2) NOT NULL,
ordamount decimal(9,2) NOT NULL,
primary key(ordid,sno));

/
create table sale(
 saleid varchar(10) primary key,
 invno varchar(10) NOT NULL,
 saledate date NOT NULL,
cid varchar(10) NOT  NULL,
cname varchar(30) NOT NULL,
cemail varchar(30) NOT NULL,
caddr varchar(50) NOT NULL,
prdtype varchar(30) NOT NULL,
prdcomp varchar(30) NOT NULL,
prdmodel varchar(20) NOT NULL,
imeino varchar(50) NOT NULL,
battery varchar(50) NOT NULL,
adaptor varchar(50) NOT NULL,
mrp decimal(9,2) NOT NULL,
tax decimal(7,2) NOT NULL,
discount decimal(12,2) NULL,
total decimal(9,2) NOT NULL);

/

create table invoice(
 saleid varchar(10) primary key,
 invno varchar(10) NOT NULL,
 saledate date NOT NULL,
cid varchar(10) NOT  NULL,
cname varchar(30) NOT NULL,
cemail varchar(30) NOT NULL,
caddr varchar(50) NOT NULL,
prdtype varchar(30) NOT NULL,
prdcomp varchar(30) NOT NULL,
prdmodel varchar(20) NOT NULL,
battery varchar(50) NOT NULL,
adaptor varchar(50) NOT NULL,
imeino varchar(50) NOT NULL,
mrp decimal(9,2) NOT NULL,
tax decimal(7,2) NOT NULL,
discount decimal(12,2) NULL,
total decimal(9,2) NOT NULL);

/

create table type(phtype varchar(30) NOT NULL)

/

create table ordpay( 
  ordid varchar(10) primary key,
  paydate date NOT NULL,
  total decimal(12,2) NOT NULL,
  supname varchar(30) NOT NULL,
  advance decimal(12,2) NOT NULL,
  dues decimal(12,2) NOT NULL);

/

create table supplied(
  prdno varchar(20) primary key,
  ordpid varchar(10) NOT NULL,
  supdate date NOT NULL,
  type varchar(30) NOT NULL,
  comp varchar(30) NOT NULL,
  model varchar(30) NOT NULL,
  imeino varchar(50) NOT NULL);

/

create table empsal(
   salid varchar(10) primary key,
    saldate date NOT NULL,
   empid varchar(10) NOT NULL,
   ename varchar(30) NOT NULL,
   amount decimal(12,2) NOT NULL);

/

create table empsaladv(
   salid varchar(10) primary key,
    saldate date NOT NULL,
   empid varchar(10) NOT NULL,
   ename varchar(30) NOT NULL,
   adv decimal(12,2) NOT NULL);

/

 create table dailyexp(
 sno varchar(10) NOT NULL,
 expdate date NOT NULL,
 amount decimal(12,2) NOT NULL,
 whom varchar(100) NOT NULL,
 reason varchar(500) NULL);

/

create table department(
dno varchar(10) NOT NULL,
dep varchar(30) NOT NULL);

/

create table designation(
degno varchar(10) NOT NULL,
desig varchar(30) NOT NULL);