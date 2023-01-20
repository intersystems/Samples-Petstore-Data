# Samples-Petstore-Data
This repository contains sample pet and petstore data and the scripts to load it into your InterSystems IRIS instance. This data is used in the following online learning exercise: https://learning.intersystems.com/course/view.php?name=SQL%20QS.
The main goal is to show the benefits of SQL within InterSystems IRIS Data Platform such as implicit joins, bitmap indexes, the ability to use SQL with other data models in a multimodel approach and more.

The instructions below describe how to load this data into a local instance of InterSystems IRIS.

---
	
## LOADING DATA: Using a local instance

1) Clone this repository: `git clone https://github.com/intersystems/Samples-Petstore-Data`
2) From the Management Portal, navigate to System Explorer > Classes and import from <repo home>/data folder: DemoAddressCls.xml, DemoPetShopCls.xml, DemoPetCls.xml, and PetUtilCls.xml. Make sure the classes are also compiled when importing.
3) Open InterSystems Terminal and run: `do ##class(Demo.PetUtil).PopulateData()`

## TAKE A LOOK AT THE DATA - from the IRIS shell (database user)
 
1) Start a SQL Session  

	```
	sudo docker exec -it try-iris iris session iris
	Username: SuperUser
	Password: <new password>
	USER>> do $system.SQL.Shell()
	[SQL]USER>> set selectmode=display
	[SQL]USER>> select * from demo.pet
	```

2) Try other SQL commands
3) Type `quit` to exit the SQL Session
4) Type `halt` to exit the iris session

---

Return to the [InterSystems Learning site](https://learning.intersystems.com/course/view.php?name=SQL%20QS) to complete the rest of this exercise. 

