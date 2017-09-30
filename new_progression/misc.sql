-- Add missing rare creature Baron Bloodbane.
-- He dropped Royal Seal of Alexis prior to 1.3 and was near the naxxramas portal.
-- 1.3 Patch Notes: "Royal Seal of Alexis no longer drops off of Baron Bloodbane. It is now only obtainable via the quest Ramstein, no longer has a minimum level requirement, and is Bind on Acquire. Existing Royal Seal of Alexis items have not been changed."
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `MechanicImmuneMask`, `SchoolImmuneMask`, `flags_extra`, `ScriptName`) VALUES (10819, 0, 0, 6380, 0, 0, 0, 'Baron Bloodbane', NULL, 0, 59, 59, 3998, 3998, 0, 0, 3489, 16, 16, 0, 1, 1.14286, 1, 4, 100, 130, 0, 50, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 10819, 0, 0, 0, 0, 0, 0, 0, 0, 12555, 11734, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 10819, 0, 0, 8388624, 0, 0, '');
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (10819, 11019, 0, 0);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (1081901, 10819, 13, 0, 100, 1, 10000, 12000, 0, 0, 11, 12555, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Bloodbane - Pummel Target');
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (4000, 37, 0, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (10819, 4338, 100, 0, 1, 5, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (10819, 4608, 50, 0, 1, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (10819, 2043, 20, 1, -2043, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (10819, 16999, 60, 0, 1, 1, 4000);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `patch_min`, `patch_max`) VALUES (66900, 10819, 0, 0, 10819, 3104.2, -3711.8, 132.547, 2.32201, 19800, 0, 0, 3998, 0, 0, 0, 0, 0, 0);

-- Add patch condition to Andorgos' gossip options.
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (4019, 37, 9, 1);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (4719, -1, 717, 4019);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (4720, -1, 718, 4019);
UPDATE `gossip_menu_option` SET `condition_id`=4719 WHERE `menu_id`=6644 && `id`=0;
UPDATE `gossip_menu_option` SET `condition_id`=4720 WHERE `menu_id`=6644 && `id`=1;

-- -- Add patch condition to Betina Bigglezink gossip options.
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (4015, 37, 5, 1);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (50414, -1, 4015, 50413);
UPDATE `gossip_menu_option` SET `condition_id`=50414 WHERE `menu_id`=3651 && `id` IN (1,2);

-- Nexus Crystal replaced Large Brilliant Shard
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (4026, 37, 6, 2);
INSERT INTO `disenchant_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (64, 14344, 100, 0, 1, 1, 4026);
INSERT INTO `disenchant_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (65, 14344, 100, 0, 1, 2, 4026);
