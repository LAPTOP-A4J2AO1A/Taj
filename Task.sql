
/** Query for Task 1(a)**/

SELECT B.Name AS PropertyName,propertyid AS PropertyID,Ownerid 
FROM OwnerProperty A 
INNER JOIN Property B ON A.Id=B.Id WHERE A.OwnerId = '1426'

/** Query for Task 1(b)**/

SELECT A.PropertyId, B.Name AS PropertyName,Ownerid,Value AS HomeValue
FROM OwnerProperty A 
INNER JOIN Property B on A.Id=B.Id 
INNER JOIN propertyhomevalue C ON A.PropertyId = C.PropertyId WHERE A.OwnerId = '1426'

/** Query for Task 1(c(i))**/

SELECT A.PropertyId,B.Name AS PropertyName,Ownerid,paymentamount,d.Name AS PaymentFrequency,EndDate,(PaymentAmount*52) AS SumOfAllPayments 
FROM OwnerProperty A
INNER JOIN Property B ON A.Id=B.Id 
INNER JOIN TenantProperty C ON A.PropertyId = C.PropertyId
LEFT OUTER JOIN TenantPaymentFrequencies D ON D.Id=C.PaymentFrequencyId
WHERE A.OwnerId = '1426'


/** Query for Task 1(d)**/

SELECT Ownerid,marketjobid,propertyid,jobdescription,isactive 
FROM Job A 
INNER JOIN JobWatchList B ON A.Id = B.Id WHERE IsActive = '1'

/** Query for Task 1(e) with ownerid = 1426 **/

SELECT D.OwnerId,d.PropertyId,A.Name AS PropertyName,C.FirstName,C.LastName,B.PaymentAmount,E.Name AS PaymentFrequency 
FROM Property A
RIGHT OUTER JOIN TenantProperty B ON A.Id = B.Id 
INNER JOIN Person C ON B.Id = C.Id 
LEFT JOIN OwnerProperty D ON B.PropertyId = D.PropertyId
INNER JOIN TenantPaymentFrequencies E ON E.Id = B.PaymentFrequencyId
WHERE OwnerId = '1426'

/** Query for Task 1(e) with ownerid = 348**/


SELECT D.OwnerId,d.PropertyId,A.Name AS PropertyName,C.FirstName,C.LastName,B.PaymentAmount,E.Name AS PaymentFrequency 
FROM Property A
INNER JOIN TenantProperty B ON A.Id = B.Id 
INNER JOIN Person C ON B.Id = C.Id 
INNER JOIN OwnerProperty D ON B.PropertyId = D.PropertyId
INNER JOIN TenantPaymentFrequencies E ON E.Id = B.PaymentFrequencyId
WHERE OwnerId = '348'



