local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

local PRINT_RESULTS = COMPONENT_ROOT:GetCustomProperty("PrintResults")
local NON_VIP_TEAM = COMPONENT_ROOT:GetCustomProperty("NonVipTeam")
local VIP_TEAM = COMPONENT_ROOT:GetCustomProperty("VipTeam")
local VIP_NAMES = COMPONENT_ROOT:GetCustomProperty("VipNames")
local CHECK_TOKENS = COMPONENT_ROOT:GetCustomProperty("CheckTokens")
local VIP_CONTRACTS = COMPONENT_ROOT:GetCustomProperty("VipContracts")

local function SplitTrim(string, delim)
	local result = {}
	local splitString = {CoreString.Split(string, {delimiters = delim, removeEmptyResults = true})}
	for _, s in ipairs(splitString) do
		table.insert(result, CoreString.Trim(s))
	end
	return result
end

local function CheckNames(player)
	local vipNames = SplitTrim(VIP_NAMES, {","})
    for _, name in ipairs(vipNames) do
    	if string.lower(player.name) == string.lower(name) then
    		player.team = VIP_TEAM
    		player.serverUserData.vipReason = " is on VIP Names list!"
    		return
    	end
    end
end

local function LoadWallets(player)
	local resultingWallets = {}

	local walletCollection, status, error = Blockchain.GetWalletsForPlayer(player)

	if status == BlockchainWalletResultCode.SUCCESS then
		while walletCollection do
			local wallets = walletCollection:GetResults()

			for _, wallet in ipairs(wallets) do
				table.insert(resultingWallets, wallet)
			end

			if walletCollection.hasMoreResults then
				walletCollection = walletCollection:GetMoreResults()
				
				Task.Wait()
			else
				walletCollection = nil
			end
		end
	end

	return resultingWallets
end

local function CheckContracts(player)
	local vipContracts = SplitTrim(VIP_CONTRACTS, {","})
	local wallets = LoadWallets(player)
	for _,wallet in ipairs(wallets) do
		if #vipContracts > 0 then
			for _, contract in ipairs(vipContracts) do
				local collection, status, error = Blockchain.GetTokensForOwner(wallet.address, {contractAddress = contract})
				if status == BlockchainTokenResultCode.SUCCESS then
					local results = collection:GetResults()
					if #results > 0 then
						player.team = VIP_TEAM
						player.serverUserData.vipReason = " has NFT from VIP Contracts list!"
						return
					end
				end
			end
		else
			local collection, status, error = Blockchain.GetTokensForOwner(wallet.address)
			if status == BlockchainTokenResultCode.SUCCESS then
				local results = collection:GetResults()
				if #results > 0 then
					player.team = VIP_TEAM
					player.serverUserData.vipReason = " has a NFT!"
				end
			end
		end
	end
end

local function PrintResults(player)
	if player.team == NON_VIP_TEAM then
		print(player.name .. " is not a VIP so they are on team " .. tostring(player.team))
	else
		print(player.name .. player.serverUserData.vipReason)
		print(player.name .. " is a VIP so they are on team " .. tostring(player.team))
	end
end

local function OnPlayerJoined(player)
	player.team = NON_VIP_TEAM
	CheckNames(player)
	if player.team == NON_VIP_TEAM and CHECK_TOKENS then
		CheckContracts(player)
	end
	if PRINT_RESULTS then
		PrintResults(player)
	end
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
