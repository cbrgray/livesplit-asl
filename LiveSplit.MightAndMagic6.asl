state("MM6")
{
	byte RedQuests	   : 0x000031F4, 0x7F;
	byte3 CyanQuests   : 0x000031F4, 0x80;
	byte PurpleQuests  : 0x000031F4, 0x83;
	byte3 GreenQuests  : 0x000031F4, 0x84;
	byte3 AwardQuests  : 0x000031F4, 0x87;
	byte CounterQuests : 0x000031F4, 0x89;
	string16 MapFile   : 0x0000EB80, 0x00;
	ulong GameTime	   : 0x0001ADE4, 0x00;
}

startup
{
	refreshRate = 24;
	
	vars.StartTicks = (ulong)0;
	vars.RedMask = byte.MaxValue;
	vars.PurpleMask = byte.MaxValue;
	vars.CyanMask = new byte[3] { byte.MaxValue, byte.MaxValue, byte.MaxValue };
	vars.GreenMask1 = byte.MaxValue;
	vars.GreenMask2 = new byte[3] { byte.MaxValue, byte.MaxValue, byte.MaxValue };
	vars.MiscMask = new byte[3] { byte.MaxValue, byte.MaxValue, byte.MaxValue };
	vars.CountersMask = byte.MaxValue;
	vars.MapFileNames = new List<string> { "d02.blv", "d19.blv", "outb2.odm", "outd2.odm", "cd1.blv", "cd2.blv", "outd3.odm", "cd3.blv", "d20.blv", "sci-fi.blv", "d11.blv", "zdwj02.blv", "zddb01.blv", "outb3.odm", "d06.blv", "d10.blv", "oute1.odm", "outc2.odm", "sewer.blv", "outc1.odm", "d18.blv", "d01.blv", "d04.blv", "outa3.odm", "d15.blv", "outb1.odm", "d17.blv", "outc3.odm", "oute2.odm", "oute3.odm", "znwc.blv", "oracle.blv", "outa2.odm", "d08.blv", "d03.blv", "outd1.odm", "d07.blv", "d12.blv", "d05.blv", "d09.blv", "t7.blv", "t6.blv", "outa1.odm", "t1.blv", "t2.blv", "t5.blv", "t8.blv", "t4.blv", "t3.blv", "zarena.blv", "hive.blv", "d13.blv", "d14.blv", "pyramid.blv", "d16.blv" };
	
	settings.Add("council_quests", true, "Council Quests");
	settings.SetToolTip("council_quests", "Activated on completion of a red quest");
	settings.Add("primary_quests", true, "Primary Quests");
	settings.SetToolTip("primary_quests", "Activated on completion of a purple quest");
	settings.Add("promotion_quests", true, "Promotion Quests");
	settings.SetToolTip("promotion_quests", "Activated on completion of a cyan quest");
	settings.Add("side_quests", true, "Side Quests");
	settings.SetToolTip("side_quests", "Activated on completion of a green quest");
	settings.Add("guilds", true, "Guilds");
	settings.SetToolTip("guilds", "Activated on becoming member of a guild");
	settings.Add("counters", true, "Counters");
	settings.SetToolTip("counters", "Activated when a counter appears for the first time");
	settings.Add("maps", false, "Maps");
	settings.SetToolTip("maps", "Activated when leaving a specific map");
	
	settings.CurrentDefaultParent = "council_quests";
	settings.Add("capped_prince", true, "Captured the Prince of Thieves");
	settings.Add("outpost_destroyed", true, "Destroyed the Devils Post");
	settings.Add("ended_winter", true, "Ended Winter");
	settings.Add("stable_prices", true, "Fixed the Stable Prices");
	settings.Add("kilburns_shield", true, "Retrieved Lord Kilburns Shield");
	settings.Add("hourglass", true, "Retrieved the Hourglass of Time");
	settings.Add("returned_prince", true, "Returned the Prince");
	
	settings.CurrentDefaultParent = "primary_quests";
	settings.Add("oracle", true, "Awakened the Oracle");
	settings.Add("saved_enroth", true, "Destroyed the Hive and Saved Enroth");
	settings.Add("silvertongue", true, "Exposed the Traitor on the High Council");
	settings.Add("archibald", true, "Freed Archibald");
	settings.Add("access_control", true, "Gained Access to the Control Center");
	
	settings.CurrentDefaultParent = "promotion_quests";
	settings.Add("crusader", true, "Received Promotion to Crusader");
	settings.Add("hero", true, "Received Promotion to Hero");
	settings.Add("wizard", true, "Received Promotion to Wizard");
	settings.Add("archmage", true, "Received Promotion to Archmage");
	settings.Add("cavalier", true, "Received Promotion to Cavalier");
	settings.Add("champion", true, "Received Promotion to Champion");
	settings.Add("priest", true, "Received Promotion to Priest");
	settings.Add("high_priest", true, "Received Promotion to High Priest");
	settings.Add("great_druid", true, "Received Promotion to Great Druid");
	settings.Add("arch_druid", true, "Received Promotion to Arch Druid");
	settings.Add("battle_mage", true, "Received Promotion to Battle Mage");
	settings.Add("warrior_mage", true, "Received Promotion to Warrior Mage");
	
	settings.CurrentDefaultParent = "side_quests";
	settings.Add("retrieved_candelabra", true, "Retrieved the Baa Candelabra");
	settings.Add("saved_mayor", true, "Saved the Mayor of Mist");
	settings.Add("killed_snergle", true, "Killed Snergle");
	settings.Add("harp", true, "Retrieved Andrew's Harp");
	settings.Add("ethrics_skull", true, "Retrieved Ethric's Skull");
	settings.Add("spider_queen", true, "Killed the Spider Queen");
	settings.Add("monolith", true, "Saved the Monolith");
	settings.Add("destroyed_crystal", true, "Destroyed the Wicked Crystal");
	settings.Add("emmanuel", true, "Rescued Emmanuel");
	settings.Add("mordred", true, "Found Zoltan's Artifact");
	settings.Add("sharry", true, "Rescued Sharry");
	settings.Add("angela", true, "Rescued Angela");
	settings.Add("sherell", true, "Rescued Sherell");
	settings.Add("blackshire_curse", true, "Broke the Blackshire Curse");
	settings.Add("werewolf_leader", true, "Killed the Werewolf Leader");
	settings.Add("goblinwatch_combo", true, "Solved the Goblinwatch Combination");
	settings.Add("chime_of_harmony", true, "Returned with the Chime of Harmony");
	settings.Add("jewelled_egg", true, "Retrieved Emil's Egg");
	settings.Add("statuettes", true, "Placed Twillen's statuettes");
	settings.Add("lord_of_fire", true, "Aided the Lord of Fire");
	settings.Add("wilbur_letter", true, "Delivered 6th Letter to Wilbur Humphry");
	settings.Add("royal_yacht", true, "Allowed to use the Royal Yacht");
	settings.Add("book_of_liches", true, "Destroyed the Book of Liches");
	settings.Add("super_goober", true, "Super-Goober");
	settings.Add("obelisks", true, "Solved the Obelisk Puzzle");
	
	settings.CurrentDefaultParent = "guilds";
	settings.Add("elemental", true, "Joined the Elemental Guild");
	settings.Add("self", true, "Joined the Self Guild");
	settings.Add("buccaneers_lair", true, "Joined the Buccaneer's Lair Guild");
	settings.Add("protection_services", true, "Joined the Protection Services Guild");
	settings.Add("smugglers", true, "Joined the Smugglers' Guild");
	settings.Add("blades_end", true, "Joined the Blade's End Guild");
	settings.Add("duelists_edge", true, "Joined the Duelists' Edge Guild");
	settings.Add("berserkers_fury", true, "Joined the Berserker's Fury Guild");
	settings.Add("air", true, "Joined the Air Guild");
	settings.Add("earth", true, "Joined the Earth Guild");
	settings.Add("fire", true, "Joined the Fire Guild");
	settings.Add("water", true, "Joined the Water Guild");
	settings.Add("body", true, "Joined the Body Guild");
	settings.Add("mind", true, "Joined the Mind Guild");
	settings.Add("spirit", true, "Joined the Spirit Guild");
	settings.Add("light", true, "Joined the Light Guild");
	settings.Add("dark", true, "Joined the Dark Guild");
	
	settings.CurrentDefaultParent = "counters";
	settings.Add("bounties", true, "Collected bounties");
	settings.Add("deaths", true, "Deaths");
	settings.Add("prison", true, "Served Prison Terms");
	settings.Add("arena_page", true, "Page Arena Victories");
	settings.Add("arena_squire", true, "Squire Arena Victories");
	settings.Add("arena_knight", true, "Knight Arena Victories");
	settings.Add("arena_lord", true, "Lord Arena Victories");
	
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
			var boolArray = new bool[8] { 
				settings["ended_winter"],
				settings["stable_prices"],
				settings["capped_prince"],
				settings["outpost_destroyed"],
				settings["hourglass"],
				settings["kilburns_shield"],
				settings["returned_prince"],
				false
			};
			var bitArray = new System.Collections.BitArray(boolArray);
			var byteArray = new byte[1];
			bitArray.CopyTo(byteArray, 0);
			vars.RedMask = byteArray[0];
		}
		
		if (settings["primary_quests"]) {
			var boolArray = new bool[8] { // first three are green (maybe they were originally primary?)
				false,
				false,
				false,
				settings["saved_enroth"],
				settings["archibald"],
				settings["access_control"],
				settings["oracle"],
				settings["silvertongue"]
			};
			var bitArray = new System.Collections.BitArray(boolArray);
			var byteArray = new byte[1];
			bitArray.CopyTo(byteArray, 0);
			vars.PurpleMask = byteArray[0];
		}
		
		if (settings["promotion_quests"]) {			
			var boolArray = new bool[24] { // every 2nd position is an honorary promotion
				settings["archmage"],
				settings["archmage"],
				settings["wizard"],
				settings["wizard"],
				settings["hero"],
				settings["hero"],
				settings["crusader"],
				settings["crusader"],
				
				settings["high_priest"],
				settings["high_priest"],
				settings["priest"],
				settings["priest"],
				settings["champion"],
				settings["champion"],
				settings["cavalier"],
				settings["cavalier"],
				
				settings["warrior_mage"],
				settings["warrior_mage"],
				settings["battle_mage"],
				settings["battle_mage"],
				settings["arch_druid"],
				settings["arch_druid"],
				settings["great_druid"],
				settings["great_druid"]
			};
			var bitArray = new System.Collections.BitArray(boolArray);
			bitArray.CopyTo(vars.CyanMask, 0);
		}
		
		if (settings["side_quests"]) {
			var boolArray = new bool[8] {
				settings["retrieved_candelabra"],
				settings["saved_mayor"],
				settings["killed_snergle"],
				false,
				false,
				false,
				false,
				false
			};
			var bitArray = new System.Collections.BitArray(boolArray);
			var byteArray = new byte[1];
			bitArray.CopyTo(byteArray, 0);
			vars.GreenMask1 = byteArray[0];
			
			boolArray = new bool[24] {
				settings["mordred"],
				settings["emmanuel"],
				settings["destroyed_crystal"],
				false, // bat guano
				settings["monolith"],
				settings["spider_queen"],
				settings["ethrics_skull"],
				settings["harp"],
				
				settings["jewelled_egg"],
				settings["chime_of_harmony"],
				settings["goblinwatch_combo"],
				settings["werewolf_leader"],
				settings["blackshire_curse"],
				settings["sherell"],
				settings["angela"],
				settings["sharry"],
				
				false,
				settings["obelisks"],
				settings["super_goober"],
				settings["book_of_liches"],
				settings["royal_yacht"],
				settings["wilbur_letter"],
				settings["lord_of_fire"],
				settings["statuettes"]
			};
			bitArray = new System.Collections.BitArray(boolArray);
			bitArray.CopyTo(vars.GreenMask2, 0);
		}
		
		if (settings["guilds"]) {
			var boolArray = new bool[24] {
				settings["berserkers_fury"],
				settings["duelists_edge"],
				settings["blades_end"],
				settings["smugglers"],
				settings["protection_services"],
				settings["buccaneers_lair"],
				settings["self"],
				settings["elemental"],
				
				settings["light"],
				settings["spirit"],
				settings["mind"],
				settings["body"],
				settings["water"],
				settings["fire"],
				settings["earth"],
				settings["air"],
				
				false,
				false,
				false,
				false,
				false,
				false,
				false,
				settings["dark"]
			};
	
			var bitArray = new System.Collections.BitArray(boolArray);
			bitArray.CopyTo(vars.MiscMask, 0);
		}
		
		if (settings["counters"]) {
			var boolArray = new bool[8] {
				settings["arena_lord"],
				settings["arena_knight"],
				settings["arena_squire"],
				settings["arena_page"],
				settings["prison"],
				settings["deaths"],
				settings["bounties"],
				false
			};
	
			var bitArray = new System.Collections.BitArray(boolArray);
			var byteArray = new byte[1];
			bitArray.CopyTo(byteArray, 0);
			vars.CountersMask = byteArray[0];
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
	if (current.MapFile != old.MapFile) {
		foreach (var s in vars.MapFileNames) {
			if (s.Equals(old.MapFile, StringComparison.OrdinalIgnoreCase)) {
				return true;
			}
		}
	}
	
	var redQuestChanged = (current.RedQuests & vars.RedMask) != (old.RedQuests & vars.RedMask);
	var purpleQuestChanged = (current.PurpleQuests & vars.PurpleMask) != (old.PurpleQuests & vars.PurpleMask);
	for (var i = 0; i < vars.CyanMask.Length; i++) {
		if ((current.CyanQuests[i] & vars.CyanMask[i]) != (old.CyanQuests[i] & vars.CyanMask[i])) {
			return true;
		}
	}
	var greenQuestChanged = (current.PurpleQuests & vars.GreenMask1) != (old.PurpleQuests & vars.GreenMask1); // purple also contains 3 greens
	for (var i = 0; i < vars.GreenMask2.Length; i++) {
		if ((current.GreenQuests[i] & vars.GreenMask2[i]) != (old.GreenQuests[i] & vars.GreenMask2[i])) {
			return true;
		}
	}
	for (var i = 0; i < vars.MiscMask.Length; i++) {
		if ((current.AwardQuests[i] & vars.MiscMask[i]) != (old.AwardQuests[i] & vars.MiscMask[i])) {
			return true;
		}
	}
	var counterChanged = (current.CounterQuests & vars.CountersMask) != (old.CounterQuests & vars.CountersMask);

	return redQuestChanged || purpleQuestChanged || greenQuestChanged || counterChanged;
}

gameTime
{
	var seconds = (current.GameTime - vars.StartTicks) * 0.234375;
	return TimeSpan.FromSeconds(seconds);
}

isLoading
{
	return true;
}
