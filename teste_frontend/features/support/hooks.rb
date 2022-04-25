require 'watir'
#apos o teste acabar este bloco mostra que o datamagic sera usado para os reports
Before do |scenario|
  DataMagic.load_for_scenario(scenario)
end