global function MyTestMod_Init

void function MyTestMod_Init()
{
    string modMenuLabel = "Example Mod"	
    RegisterModMenu( modMenuLabel, MyTestMod_SetupMainMenu )
}

void function MyTestMod_SetupMainMenu()
{
	if( GetCheatsStateMod() )
	{
		SetupModMenu( "Abilities", SetModMenu_Abilities )
		SetupModMenu( "Weapons", SetModMenu_Weapons )
		SetupModMenu( "Spawn NPC at Crosshair [Friendly]", SetDevMenu_AISpawnFriendly )
		SetupModMenu( "Spawn NPC at Crosshair [Enemy]", SetDevMenu_AISpawnEnemy )
		SetupModCommand( "", "give blank" )

		SetupModCommand( "Marksman: Triple Take", "give mp_weapon_doubletake" )
	}
	else
	{
		SetupModCommand( "Cheats are disabled!", "empty" )
	}
}

void function SetModMenu_Abilities( var _ )
{
	thread ChangeToThisModMenu( Abilities )
}
void function SetModMenu_Weapons( var _ )
{
	thread ChangeToThisModMenu( Weapons )
}
void function SetDevMenu_AISpawnFriendly( var _ )
{
	thread ChangeToThisModMenu( SetupFriendlyNPC )
}
void function SetDevMenu_AISpawnEnemy( var _ )
{
	thread ChangeToThisModMenu( SetupEnemyNPC )
}

void function Weapons()
{
	SetupModCommand( "Marksman Rifle: G7 Scout", "give mp_weapon_g2" )
	SetupModCommand( "Marksman: Triple Take", "give mp_weapon_doubletake" )
	SetupModCommand( "Marksman: 30-30 Repeater", "give mp_weapon_3030" )
	SetupModCommand( "", "give blank" )
	SetupModCommand( "Light Machine Gun: Devotion", "give mp_weapon_esaw" )
	SetupModCommand( "Light Machine Gun: L-Star", "give mp_weapon_lstar" )
	SetupModCommand( "Light Machine Gun: Spitfire", "give mp_weapon_lmg" )
	SetupModCommand( "", "give blank" )
	SetupModCommand( "Sniper: Charge Rifle", "give mp_weapon_defender" )
	SetupModCommand( "Sniper: Longbow", "give mp_weapon_dmr" )
	SetupModCommand( "Sniper: Sentinel", "give mp_weapon_sentinel" )
	SetupModCommand( "", "give blank" )
	SetupModCommand( "Pistol: P2020", "give mp_weapon_semipistol" )
	SetupModCommand( "Pistol: RE-45", "give mp_weapon_autopistol" )
	SetupModCommand( "Pistol: Wingman", "give mp_weapon_wingman" )
	SetupModCommand( "Submachine Gun: Alternator", "give mp_weapon_alternator_smg" )
	SetupModCommand( "Submachine Gun: Prowler", "give mp_weapon_pdw" )
	SetupModCommand( "Submachine Gun: R-99", "give mp_weapon_r97" )
	SetupModCommand( "Submachine Gun: Volt SMG", "give mp_weapon_volt_smg" )
	SetupModCommand( "", "give blank" )
	SetupModCommand( "Assault Rifle: Flatline", "give mp_weapon_vinson" )
	SetupModCommand( "Assault Rifle: Hemlok", "give mp_weapon_hemlok" )
	SetupModCommand( "Assault Rifle: R-301", "give mp_weapon_rspn101" )
	SetupModCommand( "Assault Rifle:  Havoc AR", "give mp_weapon_energy_ar" )
	SetupModCommand( "", "give blank" )
	SetupModCommand( "Shotgun: EVA-8 Auto", "give mp_weapon_shotgun" )
	SetupModCommand( "Shotgun: Mastiff", "give mp_weapon_mastiff" )
	SetupModCommand( "Shotgun: Mozambique", "give mp_weapon_shotgun_pistol" )
	SetupModCommand( "", "give blank" )
	SetupModCommand( "", "give blank" )
	SetupModCommand( "", "give blank" )
	SetupModCommand( "Crate: Triple Take", "give mp_weapon_doubletake_crate crate optic_ranged_aog_variable" )
	SetupModCommand( "Crate: Peacekeeper", "give mp_weapon_energy_shotgun_crate crate optic_cq_hcog_classic shotgun_bolt_l4" )
	SetupModCommand( "Crate: Kraber", "give mp_weapon_sniper" )
}

void function Abilities()
{
	SetupModCommand( "Bangalore Tactical", "give mp_weapon_grenade_bangalore" )
	SetupModCommand( "Bangalore Ultimate", "give mp_weapon_grenade_creeping_bombardment" )
	SetupModCommand( "Bloodhound Tactical", "give mp_ability_area_sonar_scan" )
	SetupModCommand( "Bloodhound Ultimate", "give mp_ability_hunt_mode" )
	SetupModCommand( "Caustic Tactical", "give mp_weapon_dirty_bomb" )
	SetupModCommand( "Caustic Ultimate", "give mp_weapon_grenade_gas" )
	SetupModCommand( "Crypto Tactical", "give mp_ability_crypto_drone" )
	SetupModCommand( "Crypto Ultimate", "give mp_ability_crypto_drone_emp" )
	SetupModCommand( "Gibraltar Tactical", "give mp_weapon_bubble_bunker" )
	SetupModCommand( "Gibraltar Ultimate", "give mp_weapon_grenade_defensive_bombardment" )
	SetupModCommand( "Lifeline Tactical", "give mp_weapon_deployable_medic" )
	SetupModCommand( "Lifeline Ultimate", "give mp_ability_care_package" )
	SetupModCommand( "Mirage Tactical", "give mp_ability_holopilot" )
	SetupModCommand( "Mirage Ultimate", "give mp_ability_mirage_ultimate" )
	SetupModCommand( " ", "give dontgiveanything" )
	SetupModCommand( "Octane Tactical", "give mp_ability_heal" )
	SetupModCommand( "Octane Ultimate", "give mp_weapon_jump_pad" )
	SetupModCommand( "Pathfinder Tactical", "give mp_ability_grapple" )
	SetupModCommand( "Pathfinder Ultimate", "give mp_weapon_zipline" )
	SetupModCommand( "Wattson Tactical", "give mp_weapon_tesla_trap" )
	SetupModCommand( "Wattson Ultimate", "give mp_weapon_trophy_defense_system" )
	SetupModCommand( "Wraith Tactical", "give mp_ability_phase_walk" )
	SetupModCommand( "Wraith Ultimate", "give mp_weapon_phase_tunnel" )
	SetupModCommand( "Revenant Tactical", "give mp_ability_silence" )
	SetupModCommand( "Revenant Ultimate", "give mp_ability_revenant_death_totem" )
}

void function SetupFriendlyNPC()
{
	SetupModCommand( "Friendly NPC: Gunship", "script DEV_SpawnGunshipAtCrosshair(gp()[0].GetTeam())" )
	SetupModCommand( "Friendly NPC: Dummie",  "script DEV_SpawnDummyAtCrosshair(gp()[0].GetTeam())" )
	SetupModCommand( "Friendly NPC: Plasma Drone", "script DEV_SpawnPlasmaDroneAtCrosshair(gp()[0].GetTeam())" )
	SetupModCommand( "Friendly NPC: Rocket Drone", "script DEV_SpawnRocketDroneAtCrosshair(gp()[0].GetTeam())" )
	SetupModCommand( "Friendly NPC: Loot Tick", "script SpawnLootTickAtCrosshair()" )
	SetupModCommand( "Friendly NPC: Prowler", "script DEV_SpawnProwlerAtCrosshair(gp()[0].GetTeam())" )
	SetupModCommand( "Friendly NPC: Marvin", "script DEV_SpawnMarvinAtCrosshair(gp()[0].GetTeam())" )
	SetupModCommand( "Friendly NPC: Spider", "script DEV_SpawnSpiderAtCrosshair(gp()[0].GetTeam())" )
	SetupModCommand( "Friendly NPC: Infected", "script DEV_SpawnInfectedSoldierAtCrosshair(gp()[0].GetTeam())" )
	SetupModCommand( "Friendly NPC: Tick", "script DEV_SpawnExplosiveTickAtCrosshair(gp()[0].GetTeam())" )
}

void function SetupEnemyNPC()
{
	SetupModCommand( "Enemy NPC: Gunship", "script DEV_SpawnGunshipAtCrosshair()" )
	SetupModCommand( "Enemy NPC: Dummie", "script DEV_SpawnDummyAtCrosshair()" )
	SetupModCommand( "Enemy NPC: Plasma Drone", "script DEV_SpawnPlasmaDroneAtCrosshair()" )
	SetupModCommand( "Enemy NPC: Rocket Drone", "script DEV_SpawnRocketDroneAtCrosshair()" )
	SetupModCommand( "Enemy NPC: Legend", "script DEV_SpawnLegendAtCrosshair()" )
	SetupModCommand( "Enemy NPC: Prowler", "script DEV_SpawnProwlerAtCrosshair()" )
	SetupModCommand( "Enemy NPC: Marvin", "script DEV_SpawnMarvinAtCrosshair()" )
	SetupModCommand( "Enemy NPC: Spider", "script DEV_SpawnSpiderAtCrosshair()" )
	SetupModCommand( "Enemy NPC: Infected", "script DEV_SpawnInfectedSoldierAtCrosshair()" )
	SetupModCommand( "Enemy NPC: Tick", "script DEV_SpawnExplosiveTickAtCrosshair()" )
}