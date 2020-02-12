/// PURPOSE: This ulitity class is used to populate test data for Demo.Pet, Demo.PetShop and Demo.Address. 
Class Demo.PetUtil Extends %RegisteredObject
{

/// This method deletes all data for Demo.Pet, Demo.PetShop, and Demo.Address.
ClassMethod DeleteData() As %Status
{
	write "Deleting pet data...", !
	do ##class(Demo.Pet).%DeleteExtent()
	
	write "Deleting petshop data...", !
	do ##class(Demo.PetShop).%DeleteExtent()
	
	write "Deleting address data...", !
	do ##class(Demo.Address).%DeleteExtent()
	
	write "Success! All data reset."
}

/// This method populates test data for Demo.Address, Demo.PetShop, and Demo.Pet
ClassMethod PopulateData() As %Status
{
	write "Populating Address, Petshop, and Pet classes now..." , !
	do ##class(Demo.Address).Populate(300)
	do ##class(Demo.PetShop).Populate(300)
	do ##class(Demo.Pet).Populate(200000)
}

}
