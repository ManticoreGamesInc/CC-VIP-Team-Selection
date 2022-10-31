--[[

 __      _______ _____    _______                      _____      _           _   _             
 \ \    / /_   _|  __ \  |__   __|                    / ____|    | |         | | (_)            
  \ \  / /  | | | |__) |    | | ___  __ _ _ __ ___   | (___   ___| | ___  ___| |_ _  ___  _ __  
   \ \/ /   | | |  ___/     | |/ _ \/ _` | '_ ` _ \   \___ \ / _ \ |/ _ \/ __| __| |/ _ \| '_ \ 
    \  /   _| |_| |         | |  __/ (_| | | | | | |  ____) |  __/ |  __/ (__| |_| | (_) | | | |
     \/   |_____|_|         |_|\___|\__,_|_| |_| |_| |_____/ \___|_|\___|\___|\__|_|\___/|_| |_|
                                                                                                
                                                                                                

VIP Team Selection selects player to certain teams based if they have VIP status.

Players can be designated as VIP if they have a certain name or if they own a certain NFT.

This component is designed to work with other components from Core Academy Essentials.
Some examples are VIP Teleporter, Chat Rewards, and VIP Entrance.

=====
Setup
=====

1. Drag and drop the VIP Team Selection template into the Hierarchy.
2. Open the properties of the root object and add your name to VIP Names custom property.
3. Preview the project and check the Event Log to see if the player was assigned VIP.

==========
How to use
==========

The root object of this component has 6 custom properties.

- Print Results

If true, the Event Log window will display each player's team selection results.

- Non Vip Team

This team number will be selected for player that are not VIP.

- Vip Team

This team number will be selected for player that are VIP.

- Vip Names

A comma-separated list of player names that will be designated VIP status.

- Check Tokens

If true, then it will check a player's wallets for NFTs and assign them VIP status if they have any.

- Vip Contracts

A comma-separated list of contract addresses so only specific NFTs will be searched for VIP status.

]]--