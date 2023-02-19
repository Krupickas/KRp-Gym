local Translations = {
   eye = {
  bench_exercise = 'Bench exercise',
  bike_exercise = 'Bike exercise',
  flex = 'Flex Muscle',
  chins_exercise = 'Chins exercise',
  free_weight_exercise = 'Free Weight exercise',
  one_hand_exercise = 'One hand exercise',
  situps_exercise = 'Situps exercise',
},
  success = {
    you_had_good_exericise = 'You had good exercise',
},
   error = {
  you_had_bad_exericise = 'You bad exercise',
  catching_breath = 'Gasping for breath',
},


  -- busy spinner
 input = {
  flexing_muscle = 'Flexing muscle',

  -- input dialog
  how_long_to_flex = 'How long to flex ?',
  description = 'In miliseconds so - 5 sec is 5000',
}
}
Lang = Lang or Locale:new({
  phrases = Translations,
  warnOnMissing = true
})
