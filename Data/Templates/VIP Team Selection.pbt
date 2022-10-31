Assets {
  Id: 12142635572620005501
  Name: "VIP Team Selection"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 16382372175921451146
      Objects {
        Id: 16382372175921451146
        Name: "VIP Team Selection"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 13007059070825673897
        ChildIds: 14392596120078695994
        UnregisteredParameters {
          Overrides {
            Name: "cs:CheckTokens"
            Bool: false
          }
          Overrides {
            Name: "cs:VipContracts"
            String: ""
          }
          Overrides {
            Name: "cs:VipNames"
            String: ""
          }
          Overrides {
            Name: "cs:PrintResults"
            Bool: true
          }
          Overrides {
            Name: "cs:NonVipTeam"
            Int: 1
          }
          Overrides {
            Name: "cs:VipTeam"
            Int: 2
          }
          Overrides {
            Name: "cs:PrintResults:tooltip"
            String: "If true, the Event Log window will display each player\'s team selection results."
          }
          Overrides {
            Name: "cs:PrintResults:category"
            String: "Team"
          }
          Overrides {
            Name: "cs:NonVipTeam:tooltip"
            String: "This team number will be selected for player that are not VIP."
          }
          Overrides {
            Name: "cs:NonVipTeam:category"
            String: "Team"
          }
          Overrides {
            Name: "cs:VipTeam:tooltip"
            String: "This team number will be selected for player that are VIP."
          }
          Overrides {
            Name: "cs:VipTeam:category"
            String: "Team"
          }
          Overrides {
            Name: "cs:VipNames:tooltip"
            String: "A comma-separated list of player names that will be designated VIP status."
          }
          Overrides {
            Name: "cs:VipNames:category"
            String: "Names"
          }
          Overrides {
            Name: "cs:CheckTokens:tooltip"
            String: "If true, then it will check a player\'s wallets for NFTs and assign them VIP status if they have any."
          }
          Overrides {
            Name: "cs:CheckTokens:category"
            String: "Tokens"
          }
          Overrides {
            Name: "cs:VipContracts:tooltip"
            String: "A comma-separated list of contract addresses so only specific NFTs will be searched for VIP status."
          }
          Overrides {
            Name: "cs:VipContracts:category"
            String: "Tokens"
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13007059070825673897
        Name: "VipTeamSelection_Server"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16382372175921451146
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 16382372175921451146
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 14970118272700123439
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14392596120078695994
        Name: "VipTeamSelection_README"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16382372175921451146
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 7310943330705305768
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 119
  DirectlyPublished: true
  VirtualFolderPath: "VIP Team Selection"
}
