state("game")
{
	int loading : "game.exe", 0x282294; 
}


split
{
	
}

isLoading 
{
	if( current.loading == 0 )
	{
		return false;
	}
		return true;
}
