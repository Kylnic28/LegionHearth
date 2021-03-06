CREATE TABLE `creature_template_outfits` (
  `entry` int(10) unsigned NOT NULL,
  `npcsoundsid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'entry from NPCSounds.dbc/db2',
  `race` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0 for male, 1 for female',
  `skin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `face` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hair` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `haircolor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `facialhair` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `feature1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `feature2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `feature3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `head` bigint(20) NOT NULL DEFAULT '0',
  `head_appearance` int(10) unsigned NOT NULL DEFAULT '0',
  `shoulders` bigint(20) NOT NULL DEFAULT '0',
  `shoulders_appearance` int(10) unsigned NOT NULL DEFAULT '0',
  `body` bigint(20) NOT NULL DEFAULT '0',
  `body_appearance` int(10) unsigned NOT NULL DEFAULT '0',
  `chest` bigint(20) NOT NULL DEFAULT '0',
  `chest_appearance` int(10) unsigned NOT NULL DEFAULT '0',
  `waist` bigint(20) NOT NULL DEFAULT '0',
  `waist_appearance` int(10) unsigned NOT NULL DEFAULT '0',
  `legs` bigint(20) NOT NULL DEFAULT '0',
  `legs_appearance` int(10) unsigned NOT NULL DEFAULT '0',
  `feet` bigint(20) NOT NULL DEFAULT '0',
  `feet_appearance` int(10) unsigned NOT NULL DEFAULT '0',
  `wrists` bigint(20) NOT NULL DEFAULT '0',
  `wrists_appearance` int(10) unsigned NOT NULL DEFAULT '0',
  `hands` bigint(20) NOT NULL DEFAULT '0',
  `hands_appearance` int(10) unsigned NOT NULL DEFAULT '0',
  `back` bigint(20) NOT NULL DEFAULT '0',
  `back_appearance` int(10) unsigned NOT NULL DEFAULT '0',
  `tabard` bigint(20) NOT NULL DEFAULT '0',
  `tabard_appearance` int(10) unsigned NOT NULL DEFAULT '0',
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `description` text,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Use positive values for item entries and negative to use item displayid for head, shoulders etc.';

ALTER TABLE `creature` CHANGE COLUMN `modelid` `modelid` INT(10) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE `game_event_model_equip` CHANGE COLUMN `modelid` `modelid` INT(10) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE `creature_model_info` CHANGE COLUMN `DisplayID` `DisplayID` INT(10) UNSIGNED NOT NULL DEFAULT '0';
