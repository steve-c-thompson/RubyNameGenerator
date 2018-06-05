class NameGenerator
  # Start with hardcoded names; later these will be come parameters
  def initialize
    @first_names = ["The", "Tha", "Amazing", "Wonderful", "Cordial", "Impeccable", "Stylin'", "Shoutin'",
			"Armchair", "Argumentative", "Desperate", "Analagous", "Graduate", "Childish", "Annual", "Dogmatic",
			"Violent", "Expert", "Smilin'", "Drunken", "Structural", "Vulgar", "Foolish", "Mad", "Inspector", "Captain",
			"Colonel", "Lazy", "Solid", "Dynamic", "Angry", "Visual", "Exemplary", "Insane", "Arrogant", "Polymorphic",
			"Multidimensional"]
    @last_names = ["Developer", "Ambassador", "Programmer", "Protector", "Funk", "Philosopher",
			"Monster", "Outsider", "Master", "Chieftain", "Despot", "Artist", "Creator", "Warrior", "Pupil", "Watcher",
			"Conqueror", "Mastermind", "Structure", "Wanderer", "Overlord", "Samurai", "Menace", "Clinician", "Doctor",
			"Leader", "Destroyer", "Commander", "Menace", "Specialist", "Exception", "Crusader", "CEO", "President",
			"Baller", "Carcinogen", "2D Array"]
  end

  # Methods to get first and last name from array
  def get_first_name
    @first_names.sample
  end

  def get_last_name
    @last_names.sample
  end

end
