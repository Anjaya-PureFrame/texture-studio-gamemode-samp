#include <a_samp>

main()
{
	print("\n/*-----------------------------------*\\");
	print("|*=====[TS Base GameMode Loaded]=====*|");
	print("\\*-----------------------------------*/\n");
}

new bool:JustConnected[MAX_PLAYERS];
new Text:PublicTD[5];

public OnPlayerRequestClass(playerid, classid)
{
	TogglePlayerSpectating(playerid, true);
	if(JustConnected[playerid])
	{
		JustConnected[playerid] = false;
		SetTimerEx("OnPlayerRequestClass", 100, false, "ii", playerid, classid);
	}
	else
	{
		TogglePlayerSpectating(playerid, false);
		SpawnPlayer(playerid);
	}
	return 1;
}

public OnPlayerConnect(playerid)
{
	GameTextForPlayer(playerid,"~r~T~w~exture ~r~S~w~tudio ~b~1.9~g~d",5000,5);
	JustConnected[playerid] = true;
	
	//Textdraws
	PublicTD[0] = TextDrawCreate(288.000000, 18.000000, "HUNORY");
	TextDrawFont(PublicTD[0], 2);
	TextDrawLetterSize(PublicTD[0], 0.275000, 1.100000);
	TextDrawTextSize(PublicTD[0], 400.000000, 17.000000);
	TextDrawSetOutline(PublicTD[0], 0);
	TextDrawSetShadow(PublicTD[0], 0);
	TextDrawAlignment(PublicTD[0], 1);
	TextDrawColor(PublicTD[0], -1);
	TextDrawBackgroundColor(PublicTD[0], 255);
	TextDrawBoxColor(PublicTD[0], 50);
	TextDrawUseBox(PublicTD[0], 0);
	TextDrawSetProportional(PublicTD[0], 1);
	TextDrawSetSelectable(PublicTD[0], 0);

	PublicTD[1] = TextDrawCreate(333.000000, 18.000000, "PRIDE");
	TextDrawFont(PublicTD[1], 2);
	TextDrawLetterSize(PublicTD[1], 0.275000, 1.100000);
	TextDrawTextSize(PublicTD[1], 400.000000, 17.000000);
	TextDrawSetOutline(PublicTD[1], 0);
	TextDrawSetShadow(PublicTD[1], 0);
	TextDrawAlignment(PublicTD[1], 1);
	TextDrawColor(PublicTD[1], -1);
	TextDrawBackgroundColor(PublicTD[1], 255);
	TextDrawBoxColor(PublicTD[1], 50);
	TextDrawUseBox(PublicTD[1], 0);
	TextDrawSetProportional(PublicTD[1], 1);
	TextDrawSetSelectable(PublicTD[1], 0);

	PublicTD[2] = TextDrawCreate(268.000000, 12.000000, "H");
	TextDrawFont(PublicTD[2], 1);
	TextDrawLetterSize(PublicTD[2], 0.762498, 3.299998);
	TextDrawTextSize(PublicTD[2], 400.000000, 17.000000);
	TextDrawSetOutline(PublicTD[2], 0);
	TextDrawSetShadow(PublicTD[2], 0);
	TextDrawAlignment(PublicTD[2], 1);
	TextDrawColor(PublicTD[2], -16776961);
	TextDrawBackgroundColor(PublicTD[2], 255);
	TextDrawBoxColor(PublicTD[2], 50);
	TextDrawUseBox(PublicTD[2], 0);
	TextDrawSetProportional(PublicTD[2], 1);
	TextDrawSetSelectable(PublicTD[2], 0);

	PublicTD[3] = TextDrawCreate(288.000000, 28.000000, "INDONESIA");
	TextDrawFont(PublicTD[3], 2);
	TextDrawLetterSize(PublicTD[3], 0.275000, 1.100000);
	TextDrawTextSize(PublicTD[3], 400.000000, 17.000000);
	TextDrawSetOutline(PublicTD[3], 0);
	TextDrawSetShadow(PublicTD[3], 0);
	TextDrawAlignment(PublicTD[3], 1);
	TextDrawColor(PublicTD[3], -16776961);
	TextDrawBackgroundColor(PublicTD[3], 255);
	TextDrawBoxColor(PublicTD[3], 50);
	TextDrawUseBox(PublicTD[3], 0);
	TextDrawSetProportional(PublicTD[3], 1);
	TextDrawSetSelectable(PublicTD[3], 0);

	PublicTD[4] = TextDrawCreate(283.000000, 38.000000, "-");
	TextDrawFont(PublicTD[4], 1);
	TextDrawLetterSize(PublicTD[4], 5.199963, 0.699998);
	TextDrawTextSize(PublicTD[4], 400.000000, 17.000000);
	TextDrawSetOutline(PublicTD[4], 0);
	TextDrawSetShadow(PublicTD[4], 0);
	TextDrawAlignment(PublicTD[4], 1);
	TextDrawColor(PublicTD[4], -1);
	TextDrawBackgroundColor(PublicTD[4], 255);
	TextDrawBoxColor(PublicTD[4], 50);
	TextDrawUseBox(PublicTD[4], 0);
	TextDrawSetProportional(PublicTD[4], 1);
	TextDrawSetSelectable(PublicTD[4], 0);

	return 1;
}

public OnGameModeInit()
{
	SetGameModeText("TS 1.9d");
	UsePlayerPedAnims();

	AddPlayerClass(265,246.06,108.97,1003.21,300.1425,0,0,0,0,-1,-1);
	//AddPlayerClass(265,1958.3783,1343.1572,15.3746,270.1425,0,0,0,0,-1,-1);

	return 1;
}

YCMD:tp(playerid, params[])
{
	if(pData[playerid][pAdmin] < 2)
   		if(pData[playerid][pHelper] == 0)
     		return PermissionError(playerid);

	{
        SetPlayerPos(playerid, 246.06, 108.97, 1003.21);
    }
	return 1;
}
