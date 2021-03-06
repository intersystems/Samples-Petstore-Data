# Samples-Petstore-Data
This repository contains sample pet and petstore data and the scripts to load it into your InterSystems IRIS instance. It is used in the SQL QuickStart which can be found on the InterSystems Learning site: https://learning.intersystems.com/course/view.php?name=SQL%20QS
The main goal is to show the benefits of SQL within InterSystems IRIS Data Platform such as implicit joins, bitmap indexes, the ability to use SQL with other data models in a multimodel approach and more.


## GET CONNECTED: Reset your password and get connection information
This sample assumes you already have an instance. If you do not yet have one, you can visit: [InterSystems Labs](https://learning.intersystems.com/course/view.php?name=Java%20Build), [Microsoft Azure](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/intersystems.intersystems-iris-single-node), [Google Cloud Platform](https://console.cloud.google.com/marketplace/details/intersystems-launcher/intersystems-iris), or [Amazon Web Services](https://aws.amazon.com/marketplace/pp/B07KVYZYT9).

Data is already preloaded into InterSystems Labs. If you have Azure, GCP, or AWS:
1) Reset the default passwords

	`iris password`
		This will ask you for your new password, and will reset the password for all default user accounts

2) Check the status of your iris instance

	`iris status`
		This will show the current status of the InterSystems IRIS instance
		
3) Get your connection information

	`iris info`
		This will show the URL for the Management Portal. Follow System Explorer > SQL to view schemas or execute queries.

## LOADING DATA: Using GCP, Azure, or AWS

1) Get the sample data and scripts
	
	`iris load https://github.com/intersystems/Samples-Petstore-Data`
	
## LOADING DATA: Using a local instance

1) Clone this repository: `git clone https://github.com/intersystems/Samples-Petstore-Data`
2) Navigate to System Explorer > Classes and import from <repo home>/data folder: DemoAddressCls.xml, DemoPetShopCls.xml, DemoPetCls.xml, and PetUtilCls.xml. Make sure the classes are also compiled when importing.
3) Open InterSystems Terminal and run: `do ##class(Demo.PetUtil).PopulateData()`

---
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

