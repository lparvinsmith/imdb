# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.create!([
  {title: "Casablanca", description: "Set in unoccupied Africa during the early days of World War II: An American expatriate meets a former lover, with unforeseen complications.", release_year: 1942, mpaa_rating: "PG", length: 102},
  {title: "The Maltese Falcon", description: "A private detective takes on a case that involves him with three eccentric criminals, a gorgeous liar, and their quest for a priceless statuette.", release_year: 1941, mpaa_rating: "Not Rated", length: 100},
  {title: "The Big Sleep", description: "Private detective Philip Marlowe is hired by a rich family. Before the complex case is over, he's seen murder, blackmail, and what might be love.", release_year: 1946, mpaa_rating: "Not Rated", length: 114},
  {title: "The Treasure of the Sierra Madre", description: "Fred Dobbs and Bob Curtin, two Americans searching for work in Mexico, convince an old prospector to help them mine for gold in the Sierra Madre Mountains.", release_year: 1948, mpaa_rating: "Not Rated", length: 126}
  ])

Person.create!([
  {name: "Humphrey Bogart", born: "1899-12-25", died: "1957-01-14"},
  {name: "Ingrid Bergman", born: "1915-08-29", died: "1982-08-29"},
  {name: "Paul Henreid", born: "1908-01-10", died: "1992-03-29"},
  {name: "Claude Rains", born: "1889-11-10", died: "1967-05-30"},
  {name: "Conrad Veidt", born: "1893-01-22", died: "1943-04-03"},
  {name: "Sydney Greenstreet", born: "1879-12-27", died: "1954-01-18"},
  {name: "Peter Lorre", born: "1904-06-26", died: "1964-03-23"},
  {name: "Mary Astor", born: "1906-05-03", died: "1987-09-25"},
  {name: "Jerome Cowan", born: "1897-10-06", died: "1972-01-24"},
  {name: "Gladys George", born: "1900-09-13", died: "1954-12-08"},
  {name: "Lee Patrick", born: "1901-11-22", died: "1982-11-21"},
  {name: "Lauren Bacall", born: "1924-09-16", died: "2014-09-16"},
  {name: "John Ridgely", born: "1909-09-06", died: "1968-01-18"},
  {name: "Martha Vickers", born: "1925-05-28", died: "1971-11-02"},
  {name: "Walter Huston", born: "1883-04-05", died: "1950-04-07"},
  {name: "Tim Holt", born: "1919-02-05", died: "1973-02-15"},
  {name: "Bruce Bennett", born: "1906-05-19", died: "2007-02-24"},
  {name: "Barton McLane", born: "1902-12-25", died: "1969-01-01"}
  ])

Role.create([
  {name: "Rick Blaine", movie_id: 1, person_id: 1},
  {name: "Ilsa Lund", movie_id: 1, person_id: 2},
  {name: "Victor Laszlo", movie_id: 1, person_id: 3},
  {name: "Cpt. Louis Renault", movie_id: 1, person_id: 4},
  {name: "Maj. Heinrich Strasser", movie_id: 1, person_id: 5},
  {name: "Signor Ferrari", movie_id: 1, person_id: 6},
  {name: "Ugarte", movie_id: 1, person_id: 7},
  {name: "Samuel Spade", movie_id: 2, person_id: 1},
  {name: "Brigid O'Shaughnessy", movie_id: 2, person_id: 8},
  {name: "Iva Archer", movie_id: 2, person_id: 10},
  {name: "Joel Cairo", movie_id: 2, person_id: 7},
  {name: "Lt. Detective Dundy", movie_id: 2, person_id: 18},
  {name: "Effie Perrine", movie_id: 2, person_id: 11},
  {name: "Kasper Gutman", movie_id: 2, person_id: 6},
  {name: "Miles Archer", movie_id: 2, person_id: 9},
  {name: "Philip Marlowe", movie_id: 3, person_id: 1},
  {name: "Vivian Rutledge", movie_id: 3, person_id: 12},
  {name: "Eddie Mars", movie_id: 3, person_id: 13},
  {name: "Carmen Sternwood", movie_id: 3, person_id: 14},
  {name: "Dobbs", movie_id: 4, person_id: 1},
  {name: "Howard", movie_id: 4, person_id: 15},
  {name: "Curtin", movie_id: 4, person_id: 16},
  {name: "Cody", movie_id: 4, person_id: 17},
  {name: "McCormick", movie_id: 4, person_id: 18}
  ])

  User.create([
    {email: "cclarke6@asu.edu", username: "cclarke6", password_digest: "", token: ""}
    ])
