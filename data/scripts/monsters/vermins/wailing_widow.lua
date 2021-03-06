local mType = Game.createMonsterType("Wailing Widow")
local monster = {}

monster.description = "a wailing widow"
monster.experience = 450
monster.outfit = {
	lookType = 347,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 850
monster.maxHealth = 850
monster.race = "venom"
monster.corpse = 11310
monster.speed = 254
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	damage = 30,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true
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
	{id = "gold coin", chance = 50000, maxCount = 100},
	{id = "gold coin", chance = 50000, maxCount = 37},
	{id = "halberd", chance = 4460},
	{id = "plate shield", chance = 2854},
	{id = "green mushroom", chance = 3208},
	{id = "health potion", chance = 4761},
	{id = "mana potion", chance = 4785},
	{id = "Zaoan halberd", chance = 2210},
	{id = "widow's mandibles", chance = 20950},
	{id = "wailing widow's necklace", chance = 900}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120, effect = CONST_ME_DRAWBLOOD, condition = {type = CONDITION_POISON, startDamage = 160, interval = 4000}},
	{name ="drunk", interval = 2000, chance = 20, range = 7, effect = CONST_ME_SOUND_RED, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -40, maxDamage = -70, type = COMBAT_LIFEDRAIN, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 15, minDamage = -60, maxDamage = -110, type = COMBAT_EARTHDAMAGE, range = 7, shootEffect = CONST_ANI_POISON, target = false}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2000, chance = 5, minDamage = 70, maxDamage = 100, type = COMBAT_HEALING, effect = CONST_ME_SOUND_WHITE, target = false},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = 820, Duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
