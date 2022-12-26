drop table if exists family_members;
create table family_members (
	member_id int primary key,
	member_name varchar(20),
	member_sex varchar(6)
);

drop table if exists assets;
create table assets (
	asset_id int primary key,
	member_id int,
	asset_name varchar(20)
);

drop table if exists members_assets;
create table members_assets (
	
);

drop table if exists prices;
create table prices (
	price_id int primary key,
	asset_id int,
	price real,
	constraint fk_asset foreign key (asset_id) references assets(asset_id)
);

insert into family_members
values 
	(1, 'Bani', 'Male'),
	(2, 'Budi', 'Male'),
	(3, 'Nida', 'Female'),
	(4, 'Andi', 'Male'),
	(5, 'Sigit', 'Male'),
	(6, 'Hari', 'Male'),
	(7, 'Siti', 'Female'),
	(8, 'Bila', 'Female'),
	(9, 'Lesti', 'Female'),
	(10, 'Diki', 'Male'),
	(11, 'Doni', 'Male'),
	(12, 'Toni', 'Male')
;

insert into assets
values
	(1, 'Samsung Universe 9'),
	(2, 'Samsung Galaxy Book'),
	(3, 'iPhone 9'),
	(4, 'iPhone X'),
	(5, 'Huawei P30')
;
