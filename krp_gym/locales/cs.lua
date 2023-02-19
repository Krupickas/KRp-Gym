local Translations = {
  eye = {
    bench_exercise = 'Cvičení na lavičce',
    bike_exercise = 'Cvičení na kole',
    flex = 'Flex Muscle',
    chins_exercise = 'Cvičení na bradlech',
    free_weight_exercise = 'Cvičení s volnou váhou',
    one_hand_exercise = 'Cvičení s jednou rukou',
    situps_exercise = 'Cvičení vsedě',
  },
    success = {
      you_had_good_exericise = 'Měl jsi dobré cvičení',
  },
     error = {
    you_had_bad_exericise = 'Špatně jste cvičil',
    catching_breath = 'Lapal jsem po dechu',
  },
     input = {
    flexing_muscle = 'Ohebný sval',
  
    -- vstupní dialog
    how_long_to_flex = 'Jak dlouho se má sval prohýbat ?',
    description = 'V milisekundách, takže - 5 s je 5000',
  
}
}
Lang = Lang or Locale:new({
  phrases = Translations,
  warnOnMissing = true
})
