
/*  ADVENTURE WORk-2012 DATA SET*/  this databaase contains 80 table.
----1) Download the Adventure Works database from the following location and restore it in your server 
Location: https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks 
File Name: AdventureWorks2012.bak  
#########################################################################################


SELECT * FROM PERSON.PERSONPHONE

----Q.NO--1 Get all the details from the person table including email ID, phone number, and phone number type-----
select P.EMAILADDRESS, pnt.name,pp.PHONENUMBER
FROM PERSON.EMAILADDRESS AS P
JOIN PERSON.PERSONPHONE AS PP ON P.BUSINESSENTITYID= PP.BUSINESSENTITYID
JOIN PERSON.PHONENUMBERTYPE AS PNT ON PP.PHONENUMBERTYPEID=PNT.PHONENUMBERTYPEID


----Q.NO--2  Get the details of the sales header order made in May 2011----
SELECT * FROM SALES.SALESORDERHEADER
WHERE YEAR(ORDERDATE)=2011 AND MONTH(ORDERDATE)=05


----Q...NO...-3 Get the details of the sales details order made in the month of May 2011-----

SELECT * FROM SALES.SALESORDERDETAIL
WHERE YEAR(MODIFIEDDATE)=2011 AND MONTH(MODIFIEDDATE)=05

---Q.NO---4 Get the total sales made in May 2011----

SELECT LINETOTAL FROM SALES.SALESORDERDETAIL
WHERE YEAR(MODIFIEDDATE)=2011 AND MONTH(MODIFIEDDATE)=05

----Q.NO---5 Get the total sales made in the year 2011 by month order by increasing sales ----
SELECT LINETOTAL,MONTH(MODIFIEDDATE) FROM SALES.SALESORDERDETAIL
WHERE YEAR(MODIFIEDDATE)=2011
ORDER BY MONTH(MODIFIEDDATE) ASC


----Q.NO---6 Get the total sales made to the customer with FirstName='Gustavo' and LastName ='Achong'----
SELECT   sd.linetotal as totalsale 
FROM sales.salesorderdetail as sd 
join purchasing.productvendor as pv
on pv.productid=sd.productid
join person.person as p 
on p.businessentityid= pv.businessentityid
where firstname='gustavo' and lastname='achong'








