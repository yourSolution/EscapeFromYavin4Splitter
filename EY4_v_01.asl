state("jasp")
{
	bool isActive: 0x5E1FF0;
	bool isActive2: 0x53D284;
	int mapNumb: 0x53BA28;
}

isLoading
{
	if (current.isActive2)
		return current.isActive2;
	else
		return current.isActive;
}
	

split
{
	return ((old.mapNumb != current.mapNumb) && (current.mapNumb > 2) && (old.mapNumb == 0) && (current.mapNumb != 168) && current.mapNumb != 19 && current.mapNumb != 16 && current.mapNumb != 60);	
}

exit
{
    timer.IsGameTimePaused = true;
}