/*Necesito cuantos productos tenemos x categorias*/
/*necesito el total pagado de la ordern 1225*/

select*from [Order Details]

select OrderID, (UnitPrice*Quantity)-((UnitPrice*Quantity)*Discount) as total 
from [Order Details] OD

select OrderID, sum((UnitPrice*Quantity)-((UnitPrice*Quantity)*Discount)) as total 
from [Order Details] OD
group by OD.OrderId

select OD.OrderID,O.OrderDate,sum((UnitPrice*Quantity)-((UnitPrice*Quantity)*Discount)) as total 
from [Order Details] OD
inner join  Orders O on O.OrderId=OD.OrderID
group by OD.OrderId,o.OrderDate

select OD.OrderID,O.OrderDate,sum((UnitPrice*Quantity)-((UnitPrice*Quantity)*Discount)) as total 
from [Order Details] OD
inner join  Orders O on O.OrderId=OD.OrderID
group by OD.OrderId,o.OrderDate
having sum((UnitPrice*Quantity)-((UnitPrice*Quantity)*Discount))>5000

select OD.OrderID,O.OrderDate,sum((UnitPrice*Quantity)-((UnitPrice*Quantity)*Discount)) as total 
from [Order Details] OD
inner join  Orders O on O.OrderId=OD.OrderID
group by OD.OrderId,o.OrderDate
having Year(OrderDate)=1997

