RegisterServerEvent("mdt:newCall")
AddEventHandler("mdt:newCall", function(details, caller, coords, data)
  call_index = call_index + 1
  local xPlayers = ESX.GetPlayers()
  for i= 1, #xPlayers do
  	local source = xPlayers[i]
  	local xPlayer = ESX.GetPlayerFromId(source)
  	if xPlayer.job.name == 'police' then
  		TriggerClientEvent("InteractSound_CL:PlayOnOne", source, 'demo', 1.0)
  		if not data then
  			TriggerClientEvent("mythic_notify:client:SendAlert", source, {type="inform", text="You have received a new call.", 5000, style = { ['background-color'] = '#ffffff', ['color'] = '#000000' }})
  		end
  		if data and data.desc then TriggerClientEvent("mdt:newCall", source, details..' '..data.desc, caller, coords, call_index) else TriggerClientEvent("mdt:newCall", source, details, caller, coords, call_index) end
  	end
  end
end)
