state("jasp")
{
	bool isActive: 0x1638BC;
	int mapNumb: 0x551B04;
}

isLoading
{
	return current.isActive;
}

split
{
	return (old.mapNumb != current.mapNumb && current.mapNumb > 2 && old.mapNumb == 0 && current.mapNumb != 168);	
}