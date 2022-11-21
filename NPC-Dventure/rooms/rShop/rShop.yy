{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rShop",
  "isDnd": false,
  "volume": 1.0,
  "parentRoom": {
    "name": "rParent",
    "path": "rooms/rParent/rParent.yy",
  },
  "views": [
    {"inherit":true,"visible":true,"xview":0,"yview":0,"wview":320,"hview":180,"xport":0,"yport":0,"wport":640,"hport":360,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
  ],
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_139C4887_1","properties":[],"isDnd":false,"objectId":{"name":"oPlayer","path":"objects/oPlayer/oPlayer.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":1,"imageSpeed":1.0,"inheritedItemId":{"name":"inst_139C4887","path":"rooms/rParent/rParent.yy",},"frozen":false,"ignore":false,"inheritItemSettings":false,"x":200.0,"y":120.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_A67E5C5_1","properties":[],"isDnd":false,"objectId":{"name":"oUI","path":"objects/oUI/oUI.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":0.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_15CACD9C","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateArgs","path":"objects/pEntity/pEntity.yy",},"objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"value":"[2]",},
          ],"isDnd":false,"objectId":{"name":"oDoor","path":"objects/oDoor/oDoor.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":0.5,"scaleY":0.90625,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":200.0,"y":129.5,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4980313D","properties":[],"isDnd":false,"objectId":{"name":"oShopkeeper","path":"objects/oShopkeeper/oShopkeeper.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":596.0,"y":136.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_D890857","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateScript","path":"objects/pEntity/pEntity.yy",},"objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"value":"NewTextBox",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateArgs","path":"objects/pEntity/pEntity.yy",},"objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"value":"[\"You''ll need some of my items, blah blah\" ,2]",},
          ],"isDnd":false,"objectId":{"name":"oShopkeeper","path":"objects/oShopkeeper/oShopkeeper.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":3,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":108.0,"y":104.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_C2946F8","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"itemCost","path":"objects/oShopItem/oShopItem.yy",},"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"value":"10",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"itemAmount","path":"objects/oShopItem/oShopItem.yy",},"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"value":"5",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateArgs","path":"objects/pEntity/pEntity.yy",},"objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"value":"[\"Bombs - Cost 10\\nGood for blowing things up\",1, [\"7:Purchase\",\"0:No Thanks\"]]",},
          ],"isDnd":false,"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":1,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":225.0,"y":47.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3952CC63","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"item","path":"objects/oShopItem/oShopItem.yy",},"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"value":"ITEM.BOW",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"itemCost","path":"objects/oShopItem/oShopItem.yy",},"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"value":"15",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"itemAmount","path":"objects/oShopItem/oShopItem.yy",},"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"value":"15",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateArgs","path":"objects/pEntity/pEntity.yy",},"objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"value":"[\"Bow - Cost 15\\n Hit anything from further points\",1, [\"7:Purchase\",\"0:No Thanks\"]]",},
          ],"isDnd":false,"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":2,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":182.0,"y":48.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_18246BEC","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"item","path":"objects/oShopItem/oShopItem.yy",},"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"value":"ITEM.HOOK",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"itemCost","path":"objects/oShopItem/oShopItem.yy",},"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"value":"20",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"itemAmount","path":"objects/oShopItem/oShopItem.yy",},"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"value":"0",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateArgs","path":"objects/pEntity/pEntity.yy",},"objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"value":"[\"Grapple - Cost 20\\nAttracts things to you\",1, [\"7:Purchase\",\"0:No Thanks\"]]",},
          ],"isDnd":false,"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":3,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":133.0,"y":47.0,},
      ],"visible":true,"depth":0,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":4,"gridY":4,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"top","tilesetId":{"name":"TileSetShaun","path":"tilesets/TileSetShaun/TileSetShaun.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":40,"SerialiseHeight":23,"TileCompressedData":[
-126,0,1,128,-10,129,1,130,-782,0,],},"visible":true,"depth":100,"userdefinedDepth":true,"inheritLayerDepth":true,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Col","tilesetId":{"name":"TileSet","path":"tilesets/TileSet/TileSet.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":40,"SerialiseHeight":23,"TileCompressedData":[
-45,0,-14,1,-26,0,1,1,-12,0,1,1,-26,0,-14,1,-26,0,1,1,-12,0,1,1,-26,0,1,1,-12,0,1,1,-26,0,1,1,-12,0,1,1,
-26,0,1,1,-12,0,1,1,-26,0,-7,1,1,0,-6,1,-32,0,-3,1,-546,0,],},"visible":true,"depth":200,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"newFloor","tilesetId":{"name":"TileSetShaun","path":"tilesets/TileSetShaun/TileSetShaun.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":40,"SerialiseHeight":23,"TileCompressedData":[
-45,0,1,173,-12,177,1,178,-26,0,1,188,-12,189,1,193,-26,0,1,188,-12,189,1,193,-26,0,1,188,-12,189,1,193,-26,0,1,188,-12,189,1,193,
-26,0,1,188,-12,189,1,193,-26,0,1,188,-12,189,1,193,-26,0,1,203,-5,204,3,205,189,207,-4,204,1,208,-581,0,],},"visible":true,"depth":300,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","spriteId":null,"colour":4278190080,"x":0,"y":0,"htiled":false,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":15.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":400,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
  ],
  "inheritLayers": false,
  "creationCodeFile": "",
  "inheritCode": false,
  "instanceCreationOrder": [
    {"name":"inst_139C4887_1","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_A67E5C5_1","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_15CACD9C","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_4980313D","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_D890857","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_C2946F8","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_3952CC63","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_18246BEC","path":"rooms/rShop/rShop.yy",},
  ],
  "inheritCreationOrder": true,
  "sequenceId": null,
  "roomSettings": {
    "inheritRoomSettings": false,
    "Width": 640,
    "Height": 360,
    "persistent": false,
  },
  "viewSettings": {
    "inheritViewSettings": true,
    "enableViews": true,
    "clearViewBackground": false,
    "clearDisplayBuffer": true,
  },
  "physicsSettings": {
    "inheritPhysicsSettings": true,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
}