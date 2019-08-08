# Scientists
Scientist.destroy_all
puts "Creating Scientists"
Scientist.create(:name => "Richard Phillips Feynman", :dob => "1918-05-11", :fields => "Physics", :known_for => "Quantum Electrodynamics and Feynman Diagrams", :trivia => "once slept in the woods because a physics conference booked him a hotel that was too nice (snobish)")
Scientist.create(:name => "Maria Salomea Skłodowska", :dob => "1867-11-07", :fields => "Physics and Chemistry", :known_for => "Radioactive Decay and Radium", :trivia => "She was the first woman to win a Nobel prize and the only person to win a Nobel prize in two disciplines")
Scientist.create(:name => "Albert Einstein", :dob => "1879-03-14", :fields => "Physics", :known_for => "Special Relativity, General Relativity and The Theory of Brownian Motion", :trivia => "wrote a letter to President Roosevelt to inform him that a nuclear bomb was theoretically possible and that there was a danger the Nazi's could make one before the US, which prompted Roosevelt to create the Manhatten Project. Eventually leading to the creation of the nuclear bomb.")


Theory.destroy_all
puts "Creating Theories"
Theory.create(:name => "Quantum Electrodynamics", :description => "QED mathematically describes all phenomena involving electrically charged particles interacting by means of exchange of photons and represents the quantum counterpart of classical electromagnetism giving a complete account of matter and light interaction", :image => "https://en.wikipedia.org/wiki/Feynman_diagram#/media/File:Feynmann_Diagram_Gluon_Radiation.svg", :scientist_id => 1)
Theory.create(:name => "Feynman Diagrams", :description => "Feynman diagrams are pictorial representations of the mathematical expressions describing the behavior of subatomic particles.", :image => "https://en.wikipedia.org/wiki/Feynman_diagram#/media/File:Feynmann_Diagram_Gluon_Radiation.svg", :scientist_id => 1)
Theory.create(:name => "Radioactive Decay", :description => "Radioactive decay is the process by which an unstable atomic nucleus loses energy by emitting radiation, such as an alpha particle, beta particle or a gamma ray or electron in the case of internal conversion.", :image => "https://en.wikipedia.org/wiki/Radioactive_decay#/media/File:NuclearReaction.svg", :scientist_id => 2)
Theory.create(:name => "Special Relativity", :description => "in physics, special relativity (also known as the special theory of relativity) is the generally accepted and experimentally confirmed physical theory regarding the relationship between space and time.", :image => "https://en.wikipedia.org/wiki/Special_relativity#/media/File:World_line.svg", :scientist_id => 3)
Theory.create(:name => "General Relativity", :description => "General relativity is the geometric theory of gravitation published by Albert Einstein in 1915 and the current description of gravitation in modern physics.", :image => "https://en.wikipedia.org/wiki/General_relativity#/media/File:Spacetime_lattice_analogy.svg", :scientist_id => 3)