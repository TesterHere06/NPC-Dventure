function PurchaseItem(_item, _amount, _cost)
{
	if(global.playerMoney >= _cost)
	{
		global.playerHasAnyItems = true;
		global.playerItemUnlocked[_item] = true;
		global.playerAmmo[_item] += _amount;
		global.playerMoney -= _cost;
		global.playerEquipped = _item;
		instance_destroy(activate);
		
		var _desc = "";
		switch (_item)
		{
			case ITEM.BOW: _desc = "The bow!\nUse it to hit targets from distance"; break;
			case ITEM.BOMB: _desc = "Bombs?\nUse them to blow some unbreakable stuff up\n(And huge damage)"; break;
			case ITEM.HOOK: _desc = "Grappling hook\nYou can use it to either attract stuff to you."; break;
			default: _desc = "No item description found!"; break;
		}
		NewTextBox(_desc, 1);
	}
	else
	{
		NewTextBox("Not enough money...",1)	
	}
}