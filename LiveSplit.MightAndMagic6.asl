state("MM6")
{
	byte RedQuests	  : 0x000031F4, 0x7F;
	byte PurpleQuests : 0x000031F4, 0x83;
	string16 MapFile  : 0x0000EB80, 0x00;
	ulong GameTime	  : 0x0001ADE4, 0x00;
}

startup
{
	refreshRate = 24;
	
	vars.StartTicks = (ulong)0;
	vars.RedMask = (byte)255;
	vars.PurpleMask = (byte)255;
	vars.MapFileNames = new List<string> { "d02.blv", "d19.blv", "outb2.odm", "outd2.odm", "cd1.blv", "cd2.blv", "outd3.odm", "cd3.blv", "d20.blv", "sci-fi.blv", "d11.blv", "zdwj02.blv", "zddb01.blv", "outb3.odm", "d06.blv", "d10.blv", "oute1.odm", "outc2.odm", "sewer.blv", "outc1.odm", "d18.blv", "d01.blv", "d04.blv", "outa3.odm", "d15.blv", "outb1.odm", "d17.blv", "outc3.odm", "oute2.odm", "oute3.odm", "znwc.blv", "oracle.blv", "outa2.odm", "d08.blv", "d03.blv", "outd1.odm", "d07.blv", "d12.blv", "d05.blv", "d09.blv", "t7.blv", "t6.blv", "outa1.odm", "t1.blv", "t2.blv", "t5.blv", "t8.blv", "t4.blv", "t3.blv", "zarena.blv", "hive.blv", "d13.blv", "d14.blv", "pyramid.blv", "d16.blv" };
	
	settings.Add("council_quests", true, "Council Quests");
	settings.SetToolTip("council_quests", "Activated on completion of a red quest");
	settings.Add("primary_quests", true, "Primary Quests");
	settings.SetToolTip("primary_quests", "Activated on completion of a purple quest");
	settings.Add("maps", false, "Maps");
	settings.SetToolTip("maps", "Activated when leaving a specific map");
	
	settings.CurrentDefaultParent = "council_quests";
	settings.Add("capped_prince", true, "Captured the Prince of Thieves"); 	  // 4
	settings.Add("outpost_destroyed", true, "Destroyed the Devils Post"); 	  // 8
	settings.Add("ended_winter", true, "Ended Winter"); 					  // 1
	settings.Add("stable_prices", true, "Fixed the Stable Prices"); 		  // 2
	settings.Add("kilburns_shield", true, "Retrieved Lord Kilburns Shield");  // 32
	settings.Add("hourglass", true, "Retrieved the Hourglass of Time"); 	  // 16
	
	settings.CurrentDefaultParent = "primary_quests";
	settings.Add("oracle", true, "Awakened the Oracle"); 							// 64
	settings.Add("saved_enroth", true, "Destroyed the Hive and Saved Enroth"); 	 	// 8
	settings.Add("silvertongue", true, "Exposed the Traitor on the High Council");  // 128
	settings.Add("archibald", true, "Freed Archibald"); 							// 16
	settings.Add("access_control", true, "Gained Access to the Control Center"); 	// 32
	
	settings.CurrentDefaultParent = "maps";
	settings.Add("d02.blv", false, "Abandoned Temple");
	settings.Add("d19.blv", false, "Agar's Laboratory");
	settings.Add("outb2.odm", false, "Blackshire");
	settings.Add("outd2.odm", false, "Bootleg Bay");
	settings.Add("cd1.blv", false, "Castle Alamos");
	settings.Add("cd2.blv", false, "Castle Darkmoor");
	settings.Add("outd3.odm", false, "Castle Ironfist");
	settings.Add("cd3.blv", false, "Castle Kriegspire");
	settings.Add("d20.blv", false, "Cave of the Dragon Riders");
	settings.Add("sci-fi.blv", false, "Control Center");
	settings.Add("d11.blv", false, "Corlagon's Estate");
	settings.Add("zdwj02.blv", false, "Devils' Outpost");
	settings.Add("zddb01.blv", false, "Dragon's Lair");
	settings.Add("outb3.odm", false, "Dragonsand");
	settings.Add("d06.blv", false, "Dragoons' Caverns");
	settings.Add("d10.blv", false, "Dragoons' Keep");
	settings.Add("oute1.odm", false, "Eel Infested Waters");
	settings.Add("outc2.odm", false, "Free Haven");
	settings.Add("sewer.blv", false, "Free Haven Sewer");
	settings.Add("outc1.odm", false, "Frozen Highlands");
	settings.Add("d18.blv", false, "Gharik's Forge");
	settings.Add("d01.blv", false, "Goblinwatch");
	settings.Add("d04.blv", false, "Hall of the Fire Lord");
	settings.Add("outa3.odm", false, "Hermit's Isle");
	settings.Add("d15.blv", false, "Icewind Keep");
	settings.Add("outb1.odm", false, "Kriegspire");
	settings.Add("d17.blv", false, "Lair of the Wolf");
	settings.Add("outc3.odm", false, "Mire of the Damned");
	settings.Add("oute2.odm", false, "Misty Islands");
	settings.Add("oute3.odm", false, "New Sorpigal");
	settings.Add("znwc.blv", false, "New World Computing");
	settings.Add("oracle.blv", false, "Oracle of Enroth");
	settings.Add("outa2.odm", false, "Paradise Valley");
	settings.Add("d08.blv", false, "Shadow Guild");
	settings.Add("d03.blv", false, "Shadow Guild Hideout");
	settings.Add("outd1.odm", false, "Silver Cove");
	settings.Add("d07.blv", false, "Silver Helm Outpost");
	settings.Add("d12.blv", false, "Silver Helm Stronghold");
	settings.Add("d05.blv", false, "Snergle's Caverns");
	settings.Add("d09.blv", false, "Snergle's Iron Mines");
	settings.Add("t7.blv", false, "Superior Temple of Baa");
	settings.Add("t6.blv", false, "Supreme Temple of Baa");
	settings.Add("outa1.odm", false, "Sweet Water");
	settings.Add("t1.blv", false, "Temple of Baa");
	settings.Add("t2.blv", false, "Temple of the Fist");
	settings.Add("t5.blv", false, "Temple of the Moon");
	settings.Add("t8.blv", false, "Temple of the Snake");
	settings.Add("t4.blv", false, "Temple of the Sun");
	settings.Add("t3.blv", false, "Temple of Tsantsa");
	settings.Add("zarena.blv", false, "The Arena");
	settings.Add("hive.blv", false, "The Hive");
	settings.Add("d13.blv", false, "The Monolith");
	settings.Add("d14.blv", false, "Tomb of Ethric the Mad");
	settings.Add("pyramid.blv", false, "Tomb of VARN");
	settings.Add("d16.blv", false, "Warlord's Fortress");
}

start
{
	if (current.GameTime != old.GameTime && current.GameTime <= 138243) {
		vars.StartTicks = current.GameTime;

		if (settings["council_quests"]) {
			var boolArray = new bool[8] { settings["ended_winter"], settings["stable_prices"], settings["capped_prince"], settings["outpost_destroyed"], settings["hourglass"], settings["kilburns_shield"], false, false };
			var bitArray = new System.Collections.BitArray(boolArray);
			var byteArray = new byte[1];
			bitArray.CopyTo(byteArray, 0);
			vars.RedMask = byteArray[0];
		}
		
		if (settings["primary_quests"]) {
			var boolArray = new bool[8] { false, false, false, settings["saved_enroth"], settings["archibald"], settings["access_control"], settings["oracle"], settings["silvertongue"] };
			var bitArray = new System.Collections.BitArray(boolArray);
			var byteArray = new byte[1];
			bitArray.CopyTo(byteArray, 0);
			vars.PurpleMask = byteArray[0];
		}
		
		// Wish I could just enumerate the settings keys :'(
		// Instead, use a separate list with identical keys and remove as needed
		vars.MapFileNames.RemoveAll((Predicate<string>)(p => !settings[p]));
		
		return true;
	}
	
	return false;
}

split
{
	if (current.MapFile != old.MapFile && vars.MapFileNames.Contains(old.MapFile.ToLower()))
		return true;
	
	var redQuestChanged = (current.RedQuests & vars.RedMask) != (old.RedQuests & vars.RedMask);
	var purpleQuestChanged = (current.PurpleQuests & vars.PurpleMask) != (old.PurpleQuests & vars.PurpleMask);

	return redQuestChanged || purpleQuestChanged;
}

gameTime
{
	var ticks = current.GameTime - vars.StartTicks;
	//  minutes = ticks / 256;
	var seconds = ticks * 0.234375;
	return TimeSpan.FromSeconds(seconds);
}

isLoading
{
	return true;
}
