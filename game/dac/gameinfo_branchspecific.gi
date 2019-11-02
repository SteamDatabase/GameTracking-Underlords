"GameInfo"
{
	//
	// Branch-varying info, such as the game/title and app IDs, is in gameinfo_branchspecific.gi.
	// gameinfo.gi is the non-branch-varying content and can be integrated between branches.
	//

	game 		"Dota Underlords"
	title 		"Dota Underlords"
	
	FileSystem
	{
		SteamAppId				1046930		// This will mount all the GCFs we need (240=CS:S, 220=HL2).
		ToolsAppId				1046930		// Tools will load this (ie: source SDK caches) to get things like materials\debug, materials\editor, etc.
	}
}
