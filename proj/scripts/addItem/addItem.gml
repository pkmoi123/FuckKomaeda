///@function addItem
///@description Add an item to a grid
///@argument0 DSGrid Grid_To_Add
///@argument1 String Item_name
///@argument2 int Item_amount
///@argument3 String Item_description
///@argument4 Sprite Item_Sprite
///@argument5 Script Item_Script

//so basically here i'm just associating my arguments that are
//already defined in the grid function to a new color so they 
//kinda pop out? also int stands for integar and string is like for
//text, i dont remember if we used that in python but just to make
//sure lolololol

gridToAddTo = argument0;
newItemName = argument1;
newItemAmount = argument2;
newItemDescription = argument3;
newItemSprite = argument4;
newItemScript = argument5;

//case 1 - Item is already in inventory
for(i = 0; i < ds_grid_height(gridToAddTo); i++)
{
	if(ds_grid_get(gridToAddTo, 0, i) == newItemName)
	{
		ds_grid_set(gridToAddTo, 1, i, ds_grid_get(gridToAddTo, 1, i) + newItemAmount);
		return true;
	}
		
};


//case 2 - new Item! 
if(ds_grid_get(gridToAddTo, 0, 0) != 0)
{
	ds_grid_resize(gridToAddTo, playerInventoryWidth, ds_grid_height(gridToAddTo) + 1);
}

newItemSpot = ds_grid_height(gridToAddTo) - 1;
ds_grid_set(gridToAddTo, 0, newItemSpot, newItemName);
ds_grid_set(gridToAddTo, 1, newItemSpot, newItemAmount);
ds_grid_set(gridToAddTo, 2, newItemSpot, newItemDescription);
ds_grid_set(gridToAddTo, 3, newItemSpot, newItemSprite);
ds_grid_set(gridToAddTo, 4, newItemSpot, newItemScript);
