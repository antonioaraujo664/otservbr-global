local mType = Game.createMonsterType("The Halloween Hare")
local monster = {}

monster.description = "The Halloween Hare"
monster.experience = 0
monster.outfit = {
	lookType = 74,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1
monster.maxHealth = 1
monster.race = "blood"
monster.corpse = 0
monster.speed = 150
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 95
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 10,
	targetDistance = 2,
	runHealth = 0,
	healthHidden = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = 0, effect = CONST_ME_DRAWBLOOD},
	{name ="outfit", interval = 2000, chance = 6},
	{name ="outfit", interval = 2000, chance = 5},
	{name ="outfit", interval = 2000, chance = 6},
	{name ="outfit", interval = 2000, chance = 5},
	{name ="outfit", interval = 2000, chance = 6},
	{name ="outfit", interval = 2000, chance = 5},
	{name ="outfit", interval = 2000, chance = 5},
	{name ="outfit", interval = 2000, chance = 5},
	{name ="outfit", interval = 2000, chance = 5},
	{name ="outfit", interval = 2000, chance = 5},
	{name ="outfit", interval = 2000, chance = 5},
	{name ="outfit", interval = 2000, chance = 5},
	{name ="outfit", interval = 2000, chance = 5},
	{name ="outfit", interval = 2000, chance = 5},
	{name ="outfit", interval = 2000, chance = 15}
}

monster.defenses = {
	defense = 999,
	armor = 999,
	{name ="combat", interval = 1000, chance = 50, minDamage = 1500, maxDamage = 2000, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 100},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
