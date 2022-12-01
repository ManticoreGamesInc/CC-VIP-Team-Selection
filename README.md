<div align="center">

# VIP Team Selection

[![Build Status](https://github.com/ManticoreGamesInc/CC-VIP-Team-Selection/workflows/CI/badge.svg)](https://github.com/ManticoreGamesInc/CC-VIP-Team-Selection/actions/workflows/ci.yml?query=workflow%3ACI%29)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/ManticoreGamesInc/CC-VIP-Team-Selection?style=plastic)

![Preview](/Screenshots/Main.png)

</div>

## Finding the Component

This component can be found under the **CoreAcademy** account on Community Content.

## Overview

VIP Team Selection selects player to certain teams based if they have VIP status.

Players can be designated as VIP if they have a certain name or if they own a certain NFT.

This component is designed to work with other components from Core Academy Essentials.
Some examples are VIP Teleporter, Chat Rewards, and VIP Entrance.

## Setup

1. Drag and drop the VIP Team Selection template into the Hierarchy.
2. Open the properties of the root object and add your name to VIP Names custom property.
3. Preview the project and check the Event Log to see if the player was assigned VIP.

## How to use

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

