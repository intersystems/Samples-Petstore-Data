/// PURPOSE: This class stores information about pets. To populate 100 sample pets, you can run: do ##class(Demo.Pet).Populate(100)
Class Demo.Pet Extends (%Persistent, %Populate)
{

Property Name As %String(POPSPEC = "##class(%PopulateUtils).FirstName()");

Property Type As %String(VALUELIST = ",dog,bird,cat,rat,mouse,rabbit");

Property Color As %String;

Property PetShop As Demo.PetShop;

Index ColorIdx On Color [ Type = bitmap ];

Index TypeIdx On Type [ Type = bitmap ];

/// This method displays information for all yellow birds in a particular city and state.
ClassMethod DisplayAllBirdsByLocation(city As %String, state As %String)
{
	// Use cursor-based embedded SQL to retrieve data
	// -> is an implicit join and follows object references to make left joins easier
	&sql(DECLARE c1 CURSOR FOR SELECT name, petshop->owner, petshop->phone 
	INTO :name, :owner, :phone
	FROM demo.pet 
	WHERE type = 'bird' and color = 'Yellow' and petshop->location->city = :city and 
	petshop->location->state = :state)
	
	&sql(OPEN c1)
	
	// Fetch each row and display it using custom formatting. ?15 allots 15 characters padded with the appropriate number of spaces. ! adds a new line.
	write "Name", ?15, "Owner", ?50, "Phone", !
	&sql(FETCH c1)
	while (SQLCODE = 0) {
		write name, ?15, owner, ?50, phone, !
		&sql(FETCH c1)
	}
	
	&sql(CLOSE c1)
}

}
