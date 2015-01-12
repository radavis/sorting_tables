game_consoles = [
  { name: "Saturn", manufacturer: "Sega", year: 1995 },
  { name: "Genesis", manufacturer: "Sega", year: 1989 },
  { name: "Super NES", manufacturer: "Nintendo", year: 1991 },
  { name: "Dreamcast", manufacturer: "Sega", year: 1999 },
  { name: "Jaguar", manufacturer: "Atari", year: 1993 },
  { name: "CD-i", manufacturer: "Philips", year: 1992 }
]

game_consoles.each do |game_console_attributes|
  game_console = GameConsole.find_or_initialize_by(game_console_attributes)
  game_console.save!
end
