Citizen.CreateThread(function()
    while true do 

        SetDiscordAppId(766056646618513419) -- CLIENTID du bot

        SetDiscordRichPresenceAsset('halloween') -- Grand Logo
        SetDiscordRichPresenceAssetText('Orion RolePlay') -- Texte quand on passe le curseur sur le grand logo

        SetDiscordRichPresenceAssetSmall('discord_logo') -- Petit Logo
        SetDiscordRichPresenceAssetSmallText('Discord: ywWkJ7Y') -- Texte quand on passe le curseur sur le petit logo

        players = {}
        for i = 0, 255 do 
            if NetworkIsPlayerActive ( i ) then
                tableinsert( players, i )
            end
        end

        SetRichPresence(GetPlayerName(PlayerPedId()) .. "/" .. #players .. "personne co")

        Citizen.Wait(60000)
    end
end)