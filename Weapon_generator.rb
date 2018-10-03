def weapon_name(number)
weapon_first_poor = ["Dulled", "Broken", "Wooden", "Stone", "Rusty", "Liars", "Woeful"]
weapon_last_poor = ["Blade", "Grasscutter", "Slicer", "Edge", "Breaker", "Toothpick"]
weapon_first = ["Bronze", "Heartless", "Feral", "Unholy", "Iron", "Cursed", "Apocalyptic", "Curved", "Soul", "Bladed", "Lusting", "Gladiators", "Roaring", "Keepers", "Lightning", "Malevolent", "Razors"]
weapon_last = ["Swiftblade", "Might", "Edge", "Ravager", "Breaker", "Diligence", "Reaver", "Promise", "Secret", "Slicer"]
single_named = ["Assurance", "Hellfire", "Eternity", "Cataclysm", "Allegiance", "Lazarus", "Convergence","Peacemaker", "Devastator", "Harbinger"]
  case number
  when 1..25 then "#{weapon_first_poor.sample} #{weapon_last_poor.sample}"
  when 26..60 then "#{weapon_first_poor.sample} #{weapon_last.sample}"
  when 61..84 then "#{weapon_first.sample} #{weapon_last.sample}"
  when 85..95 then "#{weapon_first.sample} #{weapon_last.sample}"
  when 96..99 then "#{single_named.sample}"
  when 100 then "#{single_named.sample}"
  end
end

def weapon_type
weapon_type = ["Broadsword", "Cleaver", "Longsword", "Dagger", "Battle Axe", "Hatchet", "Club", "Mace", "War Hammer"]
end

def rarity_calculator(number)
  case number
  when 1..25 then "Poor"
  when 26..60 then "Common"
  when 61..84 then "Uncommon"
  when 85..95 then "Rare"
  when 96..99 then "Legendary"
  when 100 then "Artifact"
  end
end

def damage_per_second(number)
end

def damage_type
physical = rand(100)
fire = rand(100 - physical)
energy = rand(100 - physical - fire)
poison = rand(100 - physical - fire - energy)
cold = rand(100 - physical - fire - energy - poison)

damage_to_100 = physical+fire+energy+poison+cold
physical = physical + 100-damage_to_100
puts "Physical: #{physical}%"
puts "Fire: #{fire}%"
puts "Energy: #{energy}%"
puts "Poison: #{poison}%"
puts "Cold: #{cold}%"
end

def unique_ability(number)
unique_ability = ["Disarm - Ocassionally disarms opponent for 3 attacks", "Bleed - Your attach has a chance to cause bleed damage"]
if number > 90
  puts
  puts "#{unique_ability.sample}"
else
  nil
end
  #disarm?
  #kill person

end

def weapon_generator
  random = rand(100)
  puts weapon_name(random)
  puts rarity_calculator(random)
  puts weapon_type.sample
  damage_type
  puts unique_ability(random)
end

weapon_generator


#damage type?
#extra stats?
#unique ability
