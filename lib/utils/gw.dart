import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:guildwars2_companion/models/wallet/currency.dart';

class GuildWarsUtil {

  static int calculatePlayTime(int playTime) {
    return (playTime / 60 / 60).round();
  }

  static Color getProfessionColor(String professionId) {
    switch (professionId) {
      case 'Guardian':
        return Color(0xFF1d95b3);
      case 'Revenant':
        return Color(0xFFb64444);
      case 'Warrior':
        return Color(0xFFcea64b);
      case 'Engineer':
        return Color(0xFFc87137);
      case 'Ranger':
        return Color(0xFF6b932e);
      case 'Thief':
        return Color(0xFF7b5559);
      case 'Elementalist':
        return Color(0xFFb33d3d);
      case 'Mesmer':
        return Color(0xFF86308e);
      case 'Necromancer':
        return Color(0xFF1f6557);
      default:
        return Colors.red;
    }
  }

  static Color getRarityColor(String rarity) {
    switch (rarity) {
      case 'Junk':
        return Color(0xFFAAAAAA);
      case 'Basic':
        return Colors.grey;
      case 'Fine':
        return Color(0xFF62A4DA);
      case 'Masterwork':
        return Color(0xFF1a9306);
      case 'Rare':
        return Color(0xFFfcd00b);
      case 'Exotic':
        return Color(0xFFffa405);
      case 'Ascended':
        return Color(0xFFfb3e8d);
      case 'Legendary':
        return Color(0xFF4C139D);
      default:
        return Colors.grey;
    }
  }

  static List<String> validDisciplines() {
    return [
      'Armorsmith',
      'Artificer',
      'Chef',
      'Huntsman',
      'Jeweler',
      'Leatherworker',
      'Scribe',
      'Tailor',
      'Weaponsmith'
    ];
  }

  static List<Currency> getCoin(int coin) {
    int gold = coin ~/ 10000;
    int silver = (coin - (gold * 10000)) ~/ 100;
    int copper = (coin - (gold * 10000) - (silver * 100));

    return [
      if (gold > 0)
        Currency(
          name: 'Gold',
          value: gold,
          icon: 'assets/coin/gold_coin.png'
        ),
      if (silver > 0)
        Currency(
          name: 'Silver',
          value: silver,
          icon: 'assets/coin/silver_coin.png'
        ),
      Currency(
        name: 'Copper',
        value: copper,
        icon: 'assets/coin/copper_coin.png'
      ),
    ];
  }
}