/// PURPOSE: This class stores information about a petshop.
Class Demo.PetShop Extends (%Persistent, %Populate)
{

Property Owner As %String(POPSPEC = "##class(%PopulateUtils).Name()");

Property Location As Demo.Address;

Property Phone As %String;

Index LocationIdx On Location [ Unique ];

}
