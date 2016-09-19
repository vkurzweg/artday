
Gallery.destroy_all

galleries = Gallery.create ([
  {name: "Gavlak", address: "1034 N Highland Avenue", zip: 90038, website: "http://www.gavlakgallery.com/"},
  {name: "Night Gallery", address: "2276 E 16th St", zip: 90021, website: "http://nightgallery.ca/"},
  {name: "Overduin & Co", address: "6693 Sunset Boulevard", zip: 90028, website: "http://www.overduinandco.com/"},
  {name: "Ghebaly Gallery", address: "2245 E Washington Blvd.", zip: 90021, website: "http://ghebaly.com/"},
  {name: "Regen Projects", address: "6750 Santa Monica Boulevard", zip: 90038, website: "http://www.regenprojects.com/"},
  {name: "Honor Fraser", address: "2622 S. La Cienega Blvd.", zip: 90034, website: "http://www.honorfraser.com/"},
  {name: "William Turner Gallery", address: "2525 Michigan Ave", zip: 90404, website: "http://www.williamturnergallery.com/"},
  {name: "Hauser Wirth & Schimmel", address: "901 East 3rd Street", zip: 90013, website: "http://www.hauserwirthschimmel.com/"}
  # {name: "", address: "", zip: , website: ""}
  # {name: "", address: "", zip: , website: ""}


  ])

galleries[0].artists.create (
  {name: "Marnie Weber"}
  )

galleries[1].artists.create ([
  {name: "Sojourner Truth Parsons"},
  {name: "Augustus Thompson"},
  {name: "Roni Shneior & Orr Herz"}
  ])

galleries[2].artists.create (
  {name: "Erika Vogt"}
  )

galleries[3].artists.create ([
  {name: "Davide Balula"},
  {name: "Willa Nasatir"}
  ])

galleries[4].artists.create ([
  {name: "Abraham Cruzvillegas"},
  {name: "Wolfgang Tillmans"},
  {name: "Theaster Gates"}
  ])

galleries[5].artists.create (
  {name: "Ry Rocklen"}
  )

galleries[6].artists.create (
  {name: "Casper Brindle"}
  )

galleries[7].artists.create (
  {name: "Maria Lassnig"}
  )

galleries[8].artists.create ([
  {name: "Isa Genzken"},
  {name: "Kurt Schwitters & Hans Arp"}
  ])

galleries[0].artists[0].exhibitions.create (
  {name: "Chapel of the Moon", opening: Date.parse('17/9/2016'), closing: Date.parse('5/11/2016'), description: "Gavlak is pleased to present Chapel of the Moon, a solo exhibition of new work by Los Angeles based artist Marnie Weber. The artist’s practice, which encompasses painting, collage, photography, video, sculpture, and performance art, often centers around a mythical cast of human, animal, and hybrid characters, who live in a world that exists somewhere between fantasy and reality. Her vivid and surreal theatrical works invite a deep and oftentimes dark exploration of the subconscious, giving voice to one’s inner turmoil and creating a place in which a person can act on their basic human instincts. Interested in the balance between light and darkness, good and evil, Weber creates characters that are constantly inhabited by and pulled between opposing forces.", image: "app/assets/gavlak917.jpg"}
  )

galleries[1].artists[1].exhibitions.create (
  {name: "Crying in California", opening: Date.parse('16/9/2016'), closing: Date.parse('8/10/2016'), image: "app/assets/night_parsons.jpg"}
  )

galleries[1].artists[2].exhibitions.create (
  {name: "waxwing", opening: Date.parse('16/9/2016'), closing: Date.parse('8/10/2016'), image: "app/assets/night_thompson.jpg"}
  )

galleries[1].artists[3].exhibitions.create (
  {name: "Grammatics Jarr", opening: Date.parse('16/9/2016'), closing: Date.parse('8/10/2016'), image: "app/assets/night_jarr.jpg"}
  )

galleries[2].artists[4].exhibitions.create (
  {name: "Eros Island: Knives Please Rise", opening: Date.parse('10/9/2016'), closing: Date.parse('22/10/2016')}
  )

galleries[3].artists[5].exhibitions.create (
  {name: "Broken Things Float Faster", opening: Date.parse('16/9/2016'), closing: Date.parse('29/10/2016'), image: "app/assets/ghebaly_davide.jpg"}
  )

galleries[3].artists[6].exhibitions.create (
  {opening: Date.parse('16/9/2016'), closing: Date.parse('29/10/2016'), image: "app/assets/ghebaly_davide.jpg"}
  )

galleries[4].artists[7].exhibitions.create (
  {name: "Autoconcanción", opening: Date.parse('17/9/2016'), closing: Date.parse('22/10/2016'), description: "Cruzvillegas' practice deals with history and the construction of the self in reference to economic, social, political, and historical conditions. Employing various means to create open-ended strategies of production and reception, Cruzvillegas gives objects a new life and context, generating shifts in meaning and interpretation, meanwhile demonstrating how concepts and relationships can be constantly inverted and transformed.", image: "app/assets/regen_917.jpg"}
  )

galleries[4].artists[8].exhibitions.create (
  {opening: Date.parse('5/11/2016'), closing: Date.parse('23/12/2016'), image: "app/assets/regen_115.jpg"}
  )

galleries[4].artists[9].exhibitions.create (
  {opening: Date.parse('14/1/2017'), closing: Date.parse('18/2/2017'), image: "app/assets/regen_114.jpg"}
  )

galleries[5].artists[10].exhibitions.create (
  {name: "L.A. Relics", opening: Date.parse('10/9/2016'), closing: Date.parse('29/10/2016'), image: "app/assets/fraser_ry.jpg"}
  )

galleries[6].artists[11].exhibitions.create (
  {name: "Aura and Strata", opening: Date.parse('24/9/2015'), image: "app/assets/turner_brindle.jpg"}
  )

galleries[7].artists[12].exhibitions.create (
  {name: "A Painting Survey, 1950 – 2007", opening: Date.parse('16/9/2016'), closing: Date.parse('31/12/2016'), description: "Spanning work made from the 1950s to the end of the artist’s life, this survey traces Lassnig’s evolution from early experiments with abstraction to a richly inventive figuration and the refinement of her ‘body awareness’ paintings, in which she captured physical sensation as felt from within.", image: "app/assets/hauser_lassnig.jpg"}
  )

galleries[8].artists[13].exhibitions.create (
  {name: "I Love Michael Asher", opening: Date.parse('14/10/2016'), closing: Date.parse('31/12/2016'), description: "Isa Genzken was in her late 20s when she visited Michael Asher in California on a travel grant from Düsseldorf Academy, where she had begun teaching in 1977. They had first met in Europe, but their time together in Los Angeles remains a significant event in Genzken’s life. For her first large-scale solo exhibition in California, she will produce a new sculptural installation specifically for the city of Los Angeles and in homage to her friendship with Asher.", image: "app/assets/hauser_asher.jpg"}
  )

galleries[8].artists[14].exhibitions.create (
  {name: "Schwitters Miró Arp", opening: Date.parse('15/10/2016'), closing: Date.parse('8/1/2017'), description: "Hauser Wirth & Schimmel presents a comprehensive exhibition of the renowned Dadaists Kurt Schwitters (1887 – 1948) and Hans Arp (1886 – 1966), in the context of works by the Spanish painter, graphic artist and sculptor Joan Miró (1893 – 1983). From the turn of the century, these three artists were united by the impulse to renew and transform art. Building on the achievements of Cubism, they pursued this goal through experimentation with collage and assemblage, generating radical new ideas to confront a Europe characterized by the catastrophe of war.", image: "app/assets/hauser_schwitters.jpg"}
  )

  # {name: "", opening: Date.parse(''), closing: Date.parse(''), image: "app/assets/"}






# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
