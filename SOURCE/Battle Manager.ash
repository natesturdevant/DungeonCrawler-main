struct BattleManager
{
	/// default false, set to true to show each enemy stats during battle
	bool debugMode;
	
	int playerCount;
	int enemyCount;
	
	int selectedTarget;
	
	Entity turnOrder[8];
	
	// Where to put player/enemy on the screen
	Entity playerSlots[4];
	Entity enemySlots[4];
	
	import static void EndTurn();
	import static void RemoveDeadEntity(int targetSlot);
	
	import static void EndCombat();
	import static void StartCombat(int enemyCount = 1);
	import static void SetupTurnOrder();
	
	/// Attack selected entity
	import static void Attack();// Enable enemies to be clickable so we can attack them otherwise they cant be clicked.
	
	/// Select target
	import static void SelectTarget(int targetSlot);
};
