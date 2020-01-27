state("game")
{
	int loading : "game.exe", 0x282294; 
	int mis : "game.exe", 0x287250, 0x10, 0xC;
}

startup 
{	
		settings.Add("Act 1", true, "Act 1");
		settings.Add("Act 2", true, "Act 2");
		settings.Add("Act 3", true, "Act 3");
}	
split
{
		return  ((current.mis == 8 && old.mis == 4) && (settings["Act 1"])||
		(current.mis == 9 && old.mis == 8) && (settings["Act 2"])||
		(current.mis == 15 && old.mis == 9) && (settings["Act 3"]));	
}

reset
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

