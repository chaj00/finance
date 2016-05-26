
select * from tab;
select * from PRODUCTS;


select ROUND(avg(SIXPROFIT),4) from PRODUCTS where classify = '해외' and std >= 25;

select * from PRODUCTS where classify = '국내' or classify = '해외' and std >= 25;
select SIXPROFIT from PRODUCTS where classify = '국내' and std > 15 and std < 25;
select SIXPROFIT from PRODUCTS where classify = '국내' and std > 10 and std < 15;
select * from PRODUCTS where classify = '국내' and std > 5 and std < 10 and type = '주식형';
select * from PRODUCTS where classify = '국내' and std > 5 and std < 10 and type = '채권형';
select * from PRODUCTS where classify = '국내' and std > 5 and std < 10 and type = '주식형';

select * from PRODUCTS where classify = '국내' and std > 0 and std < 5;
select * from PRODUCTS where classify = '해외' and std >= 25;
select * from PRODUCTS where classify = '해외' and std > 15 and std < 25;
select * from PRODUCTS where classify = '해외' and std > 10 and std < 15;
select * from PRODUCTS where classify = '해외' and std > 5 and std < 10;
select * from PRODUCTS where classify = '해외' and std > 0 and std < 5;


CREATE VIEW pf_prodsucts AS select TYPE, CLASSIFY, OPCODE, TITLE, THREEPROFIT, STD FROM PRODUCTS;

ROW_NUMBER() OVER(PARTITION BY opcode ORDER BY std desc)
select * from PF_PRODUCTS


//초고위험
select * from (select * from PF_PRODUCTS where type = '주식형' and std is not null and threeprofit is not null and std >=25  order by threeprofit desc) where rownum <= 10;
select * from (select * from PF_PRODUCTS where type = '파생상품' and std is not null and std >= 25 order by threeprofit desc) where rownum <= 10;
select * from (select * from PF_PRODUCTS where type = '채권형' and std is not null and threeprofit is not null order by threeprofit desc) where rownum <= 10;
select * from (select * from PF_PRODUCTS where type <> '주식형' and type <> '파생상품' and type <> '채권형' and std is not null and threeprofit is not null order by threeprofit desc) where rownum <= 10;

select * 
from (select * 
	  from PF_PRODUCTS 
	  where type = '파생상품' and 
	  				std is not null and 
	  				threeprofit is not null and 
	  				std >= 25 order by threeprofit desc) 
where (rowid in (select max(rowid) from (select opcode 
									      from PF_PRODUCTS 
									      where type = '파생상품' and std is not null and 
											threeprofit is not null 
											order by threeprofit desc) group by opcode ))

and rownum <= 10;




select *
from (select * 
      from PF_PRODUCTS 
      where type <> '주식형' and 
			type <> '파생상품' and 
			type <> '채권형' and 
			std is not null and 
			threeprofit is not null 
			order by threeprofit desc)	
where (rowid in (select max(rowid) from (select opcode 
										from PF_PRODUCTS 
										where type <> '주식형' and 
										type <> '파생상품' and 
										type <> '채권형' and 
										std is not null and 
										threeprofit is not null 
										order by threeprofit desc) group by opcode ))
and rownum <= 10;

//고위험


select TYPE, CLASSIFY, OPCODE, TITLE, THREEPROFIT, STD, row_number() over (partition by opcode order by threeprofit desc) from pf_products where rowid in (select max(rowid) from pf_products);

//TESTING
select * from pf_products where type = '주식형';


select *
from (select type,CLASSIFY, opcode, THREEPROFIT,std, regexp_replace(title,'[-]\w+','')  
       from PF_PRODUCTS 
        where type = '주식형' and 
              std is not null and 
              threeprofit is not null and 
              std >= 25 order by threeprofit desc)                                             
where rowid in (select max(rowid) from (select type,CLASSIFY, opcode, THREEPROFIT,std, substr(regexp_replace(title,'[-]\w+',''),1,8) t 
                        from PF_PRODUCTS 
                        where type = '주식형' and 
                               std is not null and 
                               threeprofit is not null and 
                               std >= 25 order by threeprofit desc) group by t) ;



drop view pf_prodsucts