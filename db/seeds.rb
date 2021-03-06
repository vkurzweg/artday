
User.destroy_all
Exhibition.destroy_all
Gallery.destroy_all
Artist.destroy_all

User.create(name: 'test', email: 'test@email.com', password: 'abc123')

galleries = Gallery.create ([
  {name: "Gavlak", address: "1034 N Highland Avenue", zip: 90038, website: "http://www.gavlakgallery.com/", lat: 34.089902, lng: -118.338205},
  {name: "Night Gallery", address: "2276 E 16th St", zip: 90021, website: "http://nightgallery.ca/", lat: 34.019777, lng: -118.23173},
  {name: "Overduin & Co", address: "6693 Sunset Boulevard", zip: 90028, website: "http://www.overduinandco.com/", lat: 34.098194, lng: -118.336103},
  {name: "Ghebaly Gallery", address: "2245 E Washington Blvd.", zip: 90021, website: "http://ghebaly.com/", lat: 34.019231, lng: -118.231849},
  {name: "Regen Projects", address: "6750 Santa Monica Boulevard", zip: 90038, website: "http://www.regenprojects.com/", lat: 34.0904, lng: -118.337735},
  {name: "Honor Fraser", address: "2622 S. La Cienega Blvd.", zip: 90034, website: "http://www.honorfraser.com/", lat: 34.034719, lng: -118.377368},
  {name: "William Turner Gallery", address: "2525 Michigan Ave", zip: 90404, website: "http://www.williamturnergallery.com/", lat: 34.027789, lng: -118.468435},
  {name: "Hauser Wirth & Schimmel", address: "901 East 3rd Street", zip: 90013, website: "http://www.hauserwirthschimmel.com/", lat: 34.046129, lng: -118.234879}
])



galleries[0].exhibitions.create (
  {name: "Chapel of the Moon", opening: '17/9/2016', closing: '5/11/2016', description: "Gavlak is pleased to present Chapel of the Moon, a solo exhibition of new work by Los Angeles based artist Marnie Weber. The artist’s practice, which encompasses painting, collage, photography, video, sculpture, and performance art, often centers around a mythical cast of human, animal, and hybrid characters, who live in a world that exists somewhere between fantasy and reality. Her vivid and surreal theatrical works invite a deep and oftentimes dark exploration of the subconscious, giving voice to one’s inner turmoil and creating a place in which a person can act on their basic human instincts.", image: "gavlak917.jpg",
  artist: Artist.create(name: "Marnie Weber")})

galleries[1].exhibitions.create (
  {name: "Crying in California", opening: '16/9/2016', closing: '8/10/2016', image: "night_parsons.jpg",
  artist: Artist.create(name: "Sojourner Truth Parsons")})

galleries[1].exhibitions.create (
  {name: "waxwing", opening: '16/9/2016', closing: '8/10/2016', image: "night_thompson.jpg",
  artist: Artist.create(name: "Augustus Thompson")})

galleries[1].exhibitions.create (
  {name: "Grammatics Jarr", opening: '16/9/2016', closing: '8/10/2016', image: "night_jarr.jpg",
  artist: Artist.create(name: "Roni Shneior & Orr Herz")})

galleries[2].exhibitions.create (
  {name: "Eros Island: Knives Please Rise", opening: '10/9/2016', closing: '22/10/2016', image: "overduin.jpg",
  artist: Artist.create(name: "Erika Vogt")})

galleries[3].exhibitions.create (
  {name: "Broken Things Float Faster", opening: '16/9/2016', closing: '29/10/2016', image: "ghebaly_davide.jpg",
  artist: Artist.create(name: "Davide Balula")})

galleries[3].exhibitions.create (
  {opening: '16/9/2016', closing: '29/10/2016', image: "ghebaly_willa.jpg",
  artist: Artist.create(name: "Willa Nasatir")})

galleries[4].exhibitions.create (
  {name: "Autoconcanción", opening: '17/9/2016', closing: '22/10/2016', description: "Cruzvillegas' practice deals with history and the construction of the self in reference to economic, social, political, and historical conditions. Employing various means to create open-ended strategies of production and reception, Cruzvillegas gives objects a new life and context, generating shifts in meaning and interpretation, meanwhile demonstrating how concepts and relationships can be constantly inverted and transformed.", image: "regen_917.jpg",
  artist: Artist.create(name: "Abraham Cruzvillegas")})

galleries[4].exhibitions.create (
  {opening: '5/11/2016', closing: '23/12/2016', image: "regen_115.jpg",
  artist: Artist.create(name: "Wolfgang Tillmans")})

galleries[4].exhibitions.create (
  {opening: '14/1/2017', closing: '18/2/2017', image: "regen_114.jpg",
  artist: Artist.create(name: "Theaster Gates")})

galleries[5].exhibitions.create (
  {name: "L.A. Relics", opening: '10/9/2016', closing: '29/10/2016', image: "fraser_ry.jpg",
  artist: Artist.create(name: "Ry Rocklen")})

galleries[6].exhibitions.create (
  {name: "Aura and Strata", opening: '24/9/2015', image: "turner_brindle.jpg",
  artist: Artist.create(name: "Casper Brindle")})

galleries[7].exhibitions.create (
  {name: "A Painting Survey, 1950 – 2007", opening: '16/9/2016', closing: '31/12/2016', description: "Spanning work made from the 1950s to the end of the artist’s life, this survey traces Lassnig’s evolution from early experiments with abstraction to a richly inventive figuration and the refinement of her ‘body awareness’ paintings, in which she captured physical sensation as felt from within.", image: "hauser_lassnig.jpg",
  artist: Artist.create(name: "Maria Lassnig")})

galleries[7].exhibitions.create (
  {name: "I Love Michael Asher", opening: '14/10/2016', closing: '31/12/2016', description: "Isa Genzken was in her late 20s when she visited Michael Asher in California on a travel grant from Düsseldorf Academy, where she had begun teaching in 1977. They had first met in Europe, but their time together in Los Angeles remains a significant event in Genzken’s life. For her first large-scale solo exhibition in California, she will produce a new sculptural installation specifically for the city of Los Angeles and in homage to her friendship with Asher.", image: "hauser_asher.jpg",
  artist: Artist.create(name: "Isa Genzken")})

galleries[7].exhibitions.create (
  {name: "Schwitters Miró Arp", opening: '15/10/2016', closing: '8/1/2017', description: "Hauser Wirth & Schimmel presents a comprehensive exhibition of the renowned Dadaists Kurt Schwitters (1887 – 1948) and Hans Arp (1886 – 1966), in the context of works by the Spanish painter, graphic artist and sculptor Joan Miró (1893 – 1983). From the turn of the century, these three artists were united by the impulse to renew and transform art. Building on the achievements of Cubism, they pursued this goal through experimentation with collage and assemblage, generating radical new ideas to confront a Europe characterized by the catastrophe of war.", image: "hauser_schwitters.jpg",
  artist: Artist.create(name: "Kurt Schwitters & Hans Arp")})

  # {name: "", opening: Date.parse(''), closing: Date.parse(''), image: "app/assets/"}






# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
