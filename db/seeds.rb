User.create!([
  {username: "guest2", password: "password" },
  {username: "guest4", password: "password" },
  {username: "guest6", password: "password" },
  {username: "guest7", password: "password" },
  {username: "guest8", password: "password" },
  {username: "guest3", password: "password" },
  {username: "guest5", password: "password" },
  {username: "guest1", password: "password" }
])

Book.create!([
  {title: "Snow Crash", author: "Neal Stephenson", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140376/snow-crash_swtiiu.jpg", description: "In reality, Hiro Protagonist delivers pizza for Uncle Enzo’s CosoNostra Pizza Inc., but in the Metaverse he’s a warrior prince. Plunging headlong into the enigma of a new computer virus that’s striking down hackers everywhere, he races along the neon-lit streets on a search-and-destroy mission for the shadowy virtual villain threatening to bring about infocalypse. Snow Crash is a mind-altering romp through a future America so bizarre, so outrageous…you’ll recognize it immediately. "},
  {title: "The Road", author: "Cormac McCarthy", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140377/the-road_abo3mp.jpg", description: "A father and his son walk alone through burned America. Nothing moves in the ravaged landscape save the ash on the wind. It is cold enough to crack stones, and when the snow falls it is gray. The sky is dark. Their destination is the coast, although they don’t know what, if anything, awaits them there. They have nothing; just a pistol to defend themselves against the lawless bands that stalk the road, the clothes they are wearing, a cart of scavenged food—and each other."},
  {title: "Out", author: "Natsuo Kirino", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140376/out_va0qua.jpg", description: "Natsuo Kirino's novel tells a story of random violence in the staid Tokyo suburbs, as a young mother who works a night shift making boxed lunches brutally strangles her deadbeat husband and then seeks the help of her co-workers to dispose of the body and cover up her crime."},
  {title: "I Am Legend", author: "Richard Matheson", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140375/i-am-legend_ggcvbm.jpg", description: "Robert Neville is the last living man on Earth...but he is not alone. Every other man, woman, and child on Earth has become a vampire, and they are all hungry for Neville's blood.\nBy day, he is the hunter, stalking the sleeping undead through the abandoned ruins of civilization. By night, he barricades himself in his home and prays for dawn.\nHow long can one man survive in a world of vampires?"},
  {title: "Oryx and Crake", author: "Margaret Atwood", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140377/oryx-crake_hvbrcg.jpg", description: "Oryx and Crake is at once an unforgettable love story and a compelling vision of the future. Snowman, known as Jimmy before mankind was overwhelmed by a plague, is struggling to survive in a world where he may be the last human, and mourning the loss of his best friend, Crake, and the beautiful and elusive Oryx whom they both loved. In search of answers, Snowman embarks on a journey–with the help of the green-eyed Children of Crake–through the lush wilderness that was so recently a great city, until powerful corporations took mankind on an uncontrolled genetic engineering ride. Margaret Atwood projects us into a near future that is both all too familiar and beyond our imagining."},
  {title: "Flatland", author: "Edwin A. Abbot", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140374/flatland_yl95zx.jpg", description: "Classic of science (and mathematical) fiction — charmingly illustrated by author — describes the journeys of A. Square and his adventures in Spaceland (three dimensions), Lineland (one dimension) and Pointland (no dimensions). A. Square also entertains thoughts of visiting a land of four dimensions — a revolutionary idea for which he is banished from Spaceland."},
  {title: "The Gunslinger", author: "Stephen King", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140374/gunslinger_vrz1tz.jpg", description: "Beginning with a short story appearing in The Magazine of Fantasy and Science Fiction in 1978, the publication of Stephen King's epic work of fantasy -- what he considers to be a single long novel and his magnum opus -- has spanned a quarter of a century.\n\nSet in a world of extraordinary circumstances, filled with stunning visual imagery and unforgettable characters, The Dark Tower series is King's most visionary feat of storytelling, a magical mix of science fiction, fantasy, and horror that may well be his crowning achievement."},
  {title: "House of Leaves", author: "Mark Z. Danielewski", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140374/house-of-leaves_ywmz2t.jpg", description: "A blind old man, a young apprentice working in a tattoo shop, and a mad woman haunting an Ohio institute narrate this story of a family that encounters an endlessly shifting series of hallways in their new home, eventually coming face to face with the awful darkness lying at its heart."},
  {title: "The Singularity is Near: When Humans Transcend Biology", author: "Ray Kurzweil", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140376/singularity-is-near_klp56x.jpg", description: "For over three decades, Ray Kurzweil has been one of the most respected and provocative advocates of the role of technology in our future. In his classic The Age of Spiritual Machines, he argued that computers would soon rival the full range of human intelligence at its best. Now he examines the next step in this inexorable evolutionary process: the union of human and machine, in which the knowledge and skills embedded in our brains will be combined with the vastly greater capacity, speed, and knowledge-sharing ability of our creations."},
  {title: "The Language Instinct: How the Mind Creates Language", author: "Steven Pinker", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140375/language-instinct_gcsnar.jpg", description: "In this classic, the world's expert on language and mind lucidly explains everything you always wanted to know about language: how it works, how children learn it, how it changes, how the brain computes it, and how it evolved. With deft use of examples of humor and wordplay, Steven Pinker weaves our vast knowledge of language into a compelling story: language is a human instinct, wired into our brains by evolution. The Language Instinct received the William James Book Prize from the American Psychological Association and the Public Interest Award from the Linguistics Society of America. This edition includes an update on advances in the science of language since The Language Instinct was first published."},
  {title: "The Things They Carried", author: "Tim O'Brien", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140377/things-they-carried_kumxze.jpg", description: "They carried malaria tablets, love letters, 28-pound mine detectors, dope, illustrated bibles, each other. And if they made it home alive, they carried unrelenting images of a nightmarish war that history is only beginning to absorb. Since its first publication, The Things They Carried has become an unparalleled Vietnam testament, a classic work of American literature, and a profound study of men at war that illuminates the capacity, and the limits, of the human heart and soul.\n\nThe Things They Carried depicts the men of Alpha Company: Jimmy Cross, Henry Dobbins, Rat Kiley, Mitchell Sanders, Norman Bowker, Kiowa, and the character Tim O’Brien, who has survived his tour in Vietnam to become a father and writer at the age of forty-three."},
  {title: "The Waste Lands", author: "Stephen King", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140377/the-waste-lands_rojoxw.jpg", description: "Roland, The Last Gunslinger, moves ever closer to The Dark Tower of his dreams and nightmares—as he crosses a desert of damnation in a macabre world that is a twisted image of our own. With him are those he has drawn to this world: street-smart Eddie Dean and courageous wheelchair-bound Susannah.\n\nAhead of him are mind-rending revelations about who and what is driving him. Against him is arrayed a swelling legion of foes—both more and less than human..."},
  {title: "The Hobbit", author: "J.R.R. Tolkien", img_url: "https://res.cloudinary.com/dve2z73dr/image/upload/v1506140374/hobbit_oae6eg.jpg", description: "Written for J.R.R. Tolkien’s own children, The Hobbit met with instant critical acclaim when it was first published in 1937. Now recognized as a timeless classic, this introduction to the hobbit Bilbo Baggins, the wizard Gandalf, Gollum, and the spectacular world of Middle-earth recounts of the adventures of a reluctant hero, a powerful and dangerous ring, and the cruel dragon Smaug the Magnificent. The text in this 372-page paperback edition is based on that first published in Great Britain by Collins Modern Classics (1998), and includes a note on the text by Douglas A. Anderson (2001). Unforgettable!"},
  {title: "The Pillars of the Earth", author: "Ken Follett", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140376/pillars-earth_zdlzqm.jpg", description: "Everything readers expect from Follett is here: intrigue, fast-paced action, and passionate romance. But what makes The Pillars of the Earth extraordinary is the time the twelfth century; the place feudal England; and the subject the building of a glorious cathedral. Follett has re-created the crude, flamboyant England of the Middle Ages in every detail. The vast forests, the walled towns, the castles, and the monasteries become a familiar landscape. Against this richly imagined and intricately interwoven backdrop, filled with the ravages of war and the rhythms of daily life, the master storyteller draws the reader irresistibly into the intertwined lives of his characters into their dreams, their labors, and their loves: Tom, the master builder; Aliena, the ravishingly beautiful noblewoman; Philip, the prior of Kingsbridge; Jack, the artist in stone; and Ellen, the woman of the forest who casts a terrifying curse. From humble stonemason to imperious monarch, each character is brought vividly to life. The building of the cathedral, with the almost eerie artistry of the unschooled stonemasons, is the center of the drama. Around the site of the construction, Follett weaves a story of betrayal, revenge, and love, which begins with the public hanging of an innocent man and ends with the humiliation of a king."},
  {title: "Freakonomics: A Rogue Economist Explores the Hidden Side of Everything", author: "Steven D. Levitt, Stephen J. Dubner", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140373/freakonomics_jrtpy5.jpg", description: "Which is more dangerous, a gun or a swimming pool? What do schoolteachers and sumo wrestlers have in common? Why do drug dealers still live with their moms? How much do parents really matter? What kind of impact did Roe v. Wade have on violent crime?\n\nThese may not sound like typical questions for an economist to ask. But Steven D. Levitt is not a typical economist. He is a much heralded scholar who studies the stuff and riddles of everyday life -- from cheating and crime to sports and child rearing -- and whose conclusions regularly turn the conventional wisdom on its head. He usually begins with a mountain of data and a simple, unasked question. Some of these questions concern life-and-death issues; others have an admittedly freakish quality. Thus the new field of study contained in this book: freakonomics. \n\n\nThrough forceful storytelling and wry insight, Levitt and co-author Stephen J. Dubner show that economics is, at root, the study of incentives -- how people get what they want, or need, especially when other people want or need the same thing. In Freakonomics, they set out to explore the hidden side of ... well, everything. The inner workings of a crack gang. The truth about real-estate agents. The myths of campaign finance. The telltale marks of a cheating schoolteacher. The secrets of the Ku Klux Klan.\n\nWhat unites all these stories is a belief that the modern world, despite a surfeit of obfuscation, complication, and downright deceit, is not impenetrable, is not unknowable, and -- if the right questions are asked -- is even more intriguing than we think. All it takes is a new way of looking. Steven Levitt, through devilishly clever and clear-eyed thinking, shows how to see through all the clutter.\n\nFreakonomics establishes this unconventional premise: If morality represents how we would like the world to work, then economics represents how it actually does work. It is true that readers of this book will be armed with enough riddles and stories to last a thousand cocktail parties. But Freakonomics can provide more than that. It will literally redefine the way we view the modern world."},
  {title: "Bossypants", author: "Tina Fey", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140373/9476337_ytc5qi.jpg", description: "Before Liz Lemon, before \"Weekend Update,\" before \"Sarah Palin,\" Tina Fey was just a young girl with a dream: a recurring stress dream that she was being chased through a local airport by her middle-school gym teacher. She also had a dream that one day she would be a comedian on TV.\n\nShe has seen both these dreams come true.\n\nAt last, Tina Fey's story can be told. From her youthful days as a vicious nerd to her tour of duty on Saturday Night Live; from her passionately halfhearted pursuit of physical beauty to her life as a mother eating things off the floor; from her one-sided college romance to her nearly fatal honeymoon -- from the beginning of this paragraph to this final sentence.\n\nTina Fey reveals all, and proves what we've all suspected: you're no one until someone calls you bossy."},
  {title: "Stiff: The Curious Lives of Human Cadavers", author: "Mary Roach", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140377/stiff_u2tkuu.jpg", description: "Stiff is an oddly compelling, often hilarious exploration of the strange lives of our bodies postmortem. For two thousand years, cadavers—some willingly, some unwittingly—have been involved in science's boldest strides and weirdest undertakings. In this fascinating account, Mary Roach visits the good deeds of cadavers over the centuries and tells the engrossing story of our bodies when we are no longer with them."},
  {title: "Lost Horizon", author: "James Hilton", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140375/lost-horizon_kvowc2.jpg", description: "While attempting to escape a civil war, four people are kidnapped and transported to the Tibetan mountains. After their plane crashes, they are found by a mysterious Chinese man. He leads them to a monastery hidden in \"the valley of the blue moon\" -- a land of mystery and matchless beauty where life is lived in tranquil wonder, beyond the grasp of a doomed world.\n\nIt is here, in Shangri-La, where destinies will be discovered and the meaning of paradise will be unveiled."},
  {title: "2666", author: " Roberto Bolaño", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140373/2666_etylvd.jpg", description: "Composed in the last years of Roberto Bolaño’s life, 2666 was greeted across Europe and Latin America as his highest achievement, surpassing even his previous work in its strangeness, beauty, and scope. Its throng of unforgettable characters includes academics and convicts, an American sportswriter, an elusive German novelist, and a teenage student and her widowed, mentally unstable father. Their lives intersect in the urban sprawl of Santa Teresa—a fictional Juárez—on the U.S-Mexico border, where hundreds of young factory workers, in the novel as in life, have disappeared."},
  {title: "In Cold Blood", author: "Truman Capote", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140375/in-cold-blood_ldhwya.jpg", description: "On November 15, 1959, in the small town of Holcomb, Kansas, four members of the Clutter family were savagely murdered by blasts from a shotgun held a few inches from their faces. There was no apparent motive for the crime, and there were almost no clues.\nAs Truman Capote reconstructs the murder and the investigation that led to the capture, trial, and execution of the killers, he generates both mesmerizing suspense and astonishing empathy. In Cold Blood is a work that transcends its moment, yielding poignant insights into the nature of American violence. "},
  {title: "Spin", author: "Robert Charles Wilson", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140377/spin_iqqklm.jpg", description: "One night in October when he was ten years old, Tyler Dupree stood in his back yard and watched the stars go out. They all flared into brilliance at once, then disappeared, replaced by a flat, empty black barrier. He and his best friends, Jason and Diane Lawton, had seen what became known as the Big Blackout. It would shape their lives.\n\nLife on Earth is about to get much, much stranger."},
  {title: "We Have Always Lived in the Castle", author: "Shirley Jackson", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140375/always-lived-in-castle_pdldkm.jpg", description: "Merricat Blackwood lives on the family estate with her sister Constance and her Uncle Julian. Not long ago there were seven Blackwoods—until a fatal dose of arsenic found its way into the sugar bowl one terrible night. Acquitted of the murders, Constance has returned home, where Merricat protects her from the curiosity and hostility of the villagers. Their days pass in happy isolation until cousin Charles appears. Only Merricat can see the danger, and she must act swiftly to keep Constance from his grasp."},
  {title: "Dune", author: "Frank Herbert", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140374/dune_xmkeal.jpg", description: "Set in the far future amidst a sprawling feudal interstellar empire where planetary dynasties are controlled by noble houses that owe an allegiance to the imperial House Corrino, Dune tells the story of young Paul Atreides (the heir apparent to Duke Leto Atreides and heir of House Atreides) as he and his family accept control of the desert planet Arrakis, the only source of the 'spice' melange, the most important and valuable substance in the cosmos. The story explores the complex, multi-layered interactions of politics, religion, ecology, technology, and human emotion as the forces of the empire confront each other for control of Arrakis.\n\nPublished in 1965, it won the Hugo Award in 1966 and the inaugural Nebula Award for Best Novel. Dune is frequently cited as the world's best-selling sf novel."},
  {title: "Joan of Arc", author: "Helen Castor", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140375/joan-of-arc_ozpjzn.jpg", description: "We all know the story of Joan of Arc. A peasant girl who hears voices from God. A warrior leading an army to victory, in an age that believes women cannot fight. The Maid of Orleans, and the saviour of France. Burned at the stake as a heretic at the age of just nineteen. Five hundred years later, a saint. Her case was heard in court twice over. One trial, in 1431, condemned her; the other, twenty-five years after her death, cleared her name. In the transcripts, we hear first-hand testimony from Joan, her family and her friends: a rare survival from the medieval world. What could be more revealing?"},
  {title: "Twilight", author: "Stephenie Meyer", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506641252/twilight_alxawy.jpg", description: "In the first book of the Twilight Saga, internationally bestselling author Stephenie Meyer introduces Bella Swan and Edward Cullen, a pair of star-crossed lovers whose forbidden relationship ripens against the backdrop of small-town suspicion and a mysterious coven of vampires. This is a love story with bite."},
  {title: "New Moon", author: "Stephenie Meyer", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506641252/new-moon_qjjbeq.jpg", description: "For Bella Swan, there is one thing more important than life itself: Edward Cullen. But being in love with a vampire is even more dangerous than Bella could ever have imagined. Edward has already rescued Bella from the clutches of one evil vampire, but now, as their daring relationship threatens all that is near and dear to them, they realize their troubles may be just beginning..."},
  {title: "City of Bones", author: "Cassandra Clare", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506641259/city-of-bones_mwjbhw.jpg", description: "This is Clary's first meeting with the Shadowhunters, warriors dedicated to ridding the earth of demons. It's also her first encounter with Jace, a Shadowhunter who looks a little like an angel and acts a lot like a jerk. Within twenty-four hours Clary is pulled into Jace's world with a vengeance, when her mother disappears and Clary herself is attacked by a demon. But why would demons be interested in ordinary mundanes like Clary and her mother? And how did Clary suddenly get the Sight? The Shadowhunters would like to know... "},
  {title: "Never Cry Werewolf", author: "Heather Davis", img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506641259/never-cry-werewolf_xv6qcg.jpg", description: "Okay, so maybe Shelby has made a few mistakes with boys lately (how was she supposed to know Wes had \"borrowed\" that Porsche?). But her stepmother totally overreacts when she catches Shelby in a post-curfew kiss with a hot senior: Suddenly Shelby's summer plans are on the shelf, and she's being packed off to brat camp. It's good-bye, prom dress; hello, hiking boots. Things start looking up, though, when Shelby meets fellow camper (and son of a rock star) Austin Bridges III. But soon she realizes there's more to Austin than crush material—his family has a dark secret, and he wants Shelby's help guarding it. Shelby knows that she really shouldn't be getting tangled up with another bad boy . . . but who is she to turn her back on a guy in need, especially such a good-looking one? One thing's for sure: That pesky full moon is about to get her into trouble all over again."}
])
Bookshelf.create!([
  {name: "Fiction", user_id: 1},
  {name: "Non-fiction", user_id: 1},
  {name: "Young-Adult Paranormal Romance", user_id: 1}
])

Bookshelf.create!([
  {name: "Fiction", user_id: 2},
  {name: "Non-fiction", user_id: 2},
  {name: "Young-Adult Paranormal Romance", user_id: 2}
])

Bookshelf.create!([
  {name: "Fiction", user_id: 3},
  {name: "Non-fiction", user_id: 3},
  {name: "Young-Adult Paranormal Romance", user_id: 3}
])

Bookshelf.create!([
  {name: "Fiction", user_id: 4},
  {name: "Non-fiction", user_id: 4},
  {name: "Young-Adult Paranormal Romance", user_id: 4}
])

Bookshelf.create!([
  {name: "Fiction", user_id: 5},
  {name: "Non-fiction", user_id: 5},
  {name: "Young-Adult Paranormal Romance", user_id: 5}
])

Bookshelf.create!([
  {name: "Fiction", user_id: 6},
  {name: "Non-fiction", user_id: 6},
  {name: "Young-Adult Paranormal Romance", user_id: 6}
])

Bookshelf.create!([
  {name: "Fiction", user_id: 7},
  {name: "Non-fiction", user_id: 7},
  {name: "Young-Adult Paranormal Romance", user_id: 7}
])

Bookshelf.create!([
  {name: "Fiction", user_id: 8},
  {name: "Non-fiction", user_id: 8},
  {name: "Young-Adult Paranormal Romance", user_id: 8}
])


Review.create!([
  {user_id: 1, book_id: 4, title: "Very scary", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris fermentum commodo eros eget accumsan. Aenean mauris neque, aliquet elementum quam eget, aliquet placerat mauris. Pellentesque fermentum, nisl at placerat vulputate, nunc diam mattis velit, eget pulvinar odio magna in enim. Vestibulum convallis tristique neque at rutrum. Phasellus ultrices mattis feugiat. Aenean elementum lectus non sapien commodo interdum.", rating: 4},
  {user_id: 1, book_id: 12, title: "great book", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris fermentum commodo eros eget accumsan. ", rating: 5},
  {user_id: 1, book_id: 21, title: "boring", body: "Lorem ipsum dolor sit amet, consectetur ", rating: 2},
  {user_id: 1, book_id: 26, title: "masterpiece", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris fermentum commodo eros eget accumsan. Aenean mauris neque, aliquet elementum quam eget, aliquet placerat mauris. Pellentesque fermentum, nisl at placerat vulputate, nunc diam mattis velit, eget pulvinar odio magna in enim. Vestibulum convallis tristique neque at rutrum. Phasellus ultrices mattis feugiat. Aenean elementum lectus non sapien commodo interdum.", rating: 5},
  {user_id: 1, book_id: 8, title: "meh", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris fermentum commodo eros eget accumsan. Aenean mauris neque, aliquet elementum quam eget.", rating: 3},
  {user_id: 1, book_id: 23, title: "kwitsatz haderach", body: "Donec tempor laoreet maximus. Phasellus posuere purus et finibus consectetur. Sed aliquet, mi id sollicitudin elementum, eros tellus sollicitudin ante, sit amet volutpat velit dui vitae magna. Nam elementum velit nibh, vel gravida nulla vulputate eget. ", rating: 4},
  {user_id: 1, book_id: 1, title: "cyberpunk rulz", body: "wish the internet was like this", rating: 4},
  {user_id: 1, book_id: 6, title: "too much math", body: "Donec tempor laoreet maximus. Phasellus posuere purus et finibus consectetur. Sed aliquet, mi id sollicitudin elementum, eros tellus sollicitudin ante, sit amet volutpat velit dui vitae magna. Nam elementum velit nibh, vel gravida nulla vulputate eget. Donec lobortis justo quis ipsum cursus, in fermentum justo viverra. Pellentesque lacus massa, elementum a felis at, pellentesque volutpat mauris. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec consectetur ultricies neque, sagittis congue erat finibus varius. Maecenas viverra varius orci, ac eleifend mi dapibus eu. In hac habitasse platea dictumst. Duis felis libero, consequat sit amet blandit vel, consectetur maximus metus.", rating: 1},
  {user_id: 1, book_id: 17, title: "dead bodies are dope", body: "Donec tempor laoreet maximus. Phasellus posuere purus et finibus consectetur. Sed aliquet, mi id sollicitudin elementum, eros tellus sollicitudin ante, sit amet volutpat velit dui vitae magna. Nam elementum velit nibh, vel gravida nulla vulputate eget. Donec lobortis justo quis ipsum cursus, in fermentum justo viverra. ", rating: 5},
  {user_id: 3, book_id: 18, title: "This was mediocre", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris fermentum commodo eros eget accumsan. Aenean mauris neque, aliquet elementum quam eget, aliquet placerat mauris. Pellentesque fermentum, nisl at placerat vulputate, nunc diam mattis velit, eget pulvinar odio magna in enim. Vestibulum convallis tristique neque at rutrum. Phasellus ultrices mattis feugiat. Aenean elementum lectus non sapien commodo interdum. Quisque eu lectus nibh. Morbi id consectetur tortor.\n\nSed vitae metus nisl. In luctus volutpat turpis id ultrices. Vestibulum sed volutpat dolor. Nulla bibendum nisi a elit porttitor mollis. Aliquam sodales commodo mi, at finibus ante. Maecenas feugiat elit commodo metus accumsan hendrerit. Interdum et malesuada fames ac ante ipsum primis in faucibus.", rating: 3},
  {user_id: 3, book_id: 4, title: "OMG lame!!", body: "vampires didn't even sparkle!", rating: 1},
  {user_id: 3, book_id: 20, title: "based on a true story!", body: "Sed vitae metus nisl. In luctus volutpat turpis id ultrices. Vestibulum sed volutpat dolor. Nulla bibendum nisi a elit porttitor mollis. Aliquam sodales commodo mi, at finibus ante. Maecenas feugiat elit commodo metus accumsan hendrerit. Interdum et malesuada fames ac ante ipsum primis in faucibus.", rating: 4},
  {user_id: 5, book_id: 10, title: "linguistics is pretty cool!!", body: "Sed vitae metus nisl. In luctus volutpat turpis id ultrices. Vestibulum sed volutpat dolor. Nulla bibendum nisi a elit porttitor mollis. Aliquam sodales commodo mi, at finibus ante. Maecenas feugiat elit commodo metus accumsan hendrerit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed vitae metus nisl. In luctus volutpat turpis id ultrices. Vestibulum sed volutpat dolor. Nulla bibendum nisi a elit porttitor mollis. Aliquam sodales commodo mi, at finibus ante. Maecenas feugiat elit commodo metus accumsan hendrerit. Interdum et malesuada fames ac ante ipsum primis in faucibus.", rating: 4},
  {user_id: 5, book_id: 14, title: "very dramatic ", body: "lots of drama in this book. ", rating: 3},
  {user_id: 5, book_id: 9, title: "Singularities are for nerds", body: "Phasellus quis purus fermentum, rutrum lacus et, blandit neque. Praesent non mattis ante, vel porta lectus.", rating: 2}
])
Shelving.create!([
  {book_id: 1, bookshelf_id: 1},
  {book_id: 2, bookshelf_id: 1},
  {book_id: 3, bookshelf_id: 1},
  {book_id: 4, bookshelf_id: 1},
  {book_id: 5, bookshelf_id: 1},
  {book_id: 6, bookshelf_id: 1},
  {book_id: 7, bookshelf_id: 1},
  {book_id: 11, bookshelf_id: 1},
  {book_id: 13, bookshelf_id: 1},
  {book_id: 8, bookshelf_id: 1},
  {book_id: 9, bookshelf_id: 2},
  {book_id: 10, bookshelf_id: 2},
  {book_id: 14, bookshelf_id: 2},
  {book_id: 16, bookshelf_id: 2},
  {book_id: 24, bookshelf_id: 2},
  {book_id: 18, bookshelf_id: 1},
  {book_id: 22, bookshelf_id: 1},
  {book_id: 20, bookshelf_id: 1},
  {book_id: 25, bookshelf_id: 3},
  {book_id: 26, bookshelf_id: 3},
  {book_id: 27, bookshelf_id: 3},
  {book_id: 28, bookshelf_id: 3}
])

Shelving.create!([
  {book_id: 1, bookshelf_id: 4},
  {book_id: 2, bookshelf_id: 4},
  {book_id: 3, bookshelf_id: 4},
  {book_id: 4, bookshelf_id: 4},
  {book_id: 5, bookshelf_id: 4},
  {book_id: 6, bookshelf_id: 4},
  {book_id: 7, bookshelf_id: 4},
  {book_id: 11, bookshelf_id: 4},
  {book_id: 13, bookshelf_id: 4},
  {book_id: 8, bookshelf_id: 4},
  {book_id: 9, bookshelf_id: 5},
  {book_id: 10, bookshelf_id: 5},
  {book_id: 14, bookshelf_id: 5},
  {book_id: 16, bookshelf_id: 5},
  {book_id: 24, bookshelf_id: 5},
  {book_id: 18, bookshelf_id: 4},
  {book_id: 22, bookshelf_id: 4},
  {book_id: 20, bookshelf_id: 4},
  {book_id: 25, bookshelf_id: 6},
  {book_id: 26, bookshelf_id: 6},
  {book_id: 27, bookshelf_id: 6},
  {book_id: 28, bookshelf_id: 6}
])

Shelving.create!([
  {book_id: 1, bookshelf_id: 7},
  {book_id: 2, bookshelf_id: 7},
  {book_id: 3, bookshelf_id: 7},
  {book_id: 4, bookshelf_id: 7},
  {book_id: 5, bookshelf_id: 7},
  {book_id: 6, bookshelf_id: 7},
  {book_id: 7, bookshelf_id: 7},
  {book_id: 11, bookshelf_id: 7},
  {book_id: 13, bookshelf_id: 7},
  {book_id: 8, bookshelf_id: 7},
  {book_id: 9, bookshelf_id: 8},
  {book_id: 10, bookshelf_id: 8},
  {book_id: 14, bookshelf_id: 8},
  {book_id: 16, bookshelf_id: 8},
  {book_id: 24, bookshelf_id: 8},
  {book_id: 18, bookshelf_id: 7},
  {book_id: 22, bookshelf_id: 7},
  {book_id: 20, bookshelf_id: 7},
  {book_id: 25, bookshelf_id: 9},
  {book_id: 26, bookshelf_id: 9},
  {book_id: 27, bookshelf_id: 9},
  {book_id: 28, bookshelf_id: 9}
])

Shelving.create!([
  {book_id: 1, bookshelf_id: 10},
  {book_id: 2, bookshelf_id: 10},
  {book_id: 3, bookshelf_id: 10},
  {book_id: 4, bookshelf_id: 10},
  {book_id: 5, bookshelf_id: 10},
  {book_id: 6, bookshelf_id: 10},
  {book_id: 7, bookshelf_id: 10},
  {book_id: 11, bookshelf_id: 10},
  {book_id: 13, bookshelf_id: 10},
  {book_id: 8, bookshelf_id: 10},
  {book_id: 9, bookshelf_id: 11},
  {book_id: 10, bookshelf_id: 11},
  {book_id: 14, bookshelf_id: 11},
  {book_id: 16, bookshelf_id: 11},
  {book_id: 24, bookshelf_id: 11},
  {book_id: 18, bookshelf_id: 10},
  {book_id: 22, bookshelf_id: 10},
  {book_id: 20, bookshelf_id: 10},
  {book_id: 25, bookshelf_id: 12},
  {book_id: 26, bookshelf_id: 12},
  {book_id: 27, bookshelf_id: 12},
  {book_id: 28, bookshelf_id: 12}
])

Shelving.create!([
  {book_id: 1, bookshelf_id: 13},
  {book_id: 2, bookshelf_id: 13},
  {book_id: 3, bookshelf_id: 13},
  {book_id: 4, bookshelf_id: 13},
  {book_id: 5, bookshelf_id: 13},
  {book_id: 6, bookshelf_id: 13},
  {book_id: 7, bookshelf_id: 13},
  {book_id: 11, bookshelf_id: 13},
  {book_id: 13, bookshelf_id: 13},
  {book_id: 8, bookshelf_id: 13},
  {book_id: 9, bookshelf_id: 14},
  {book_id: 10, bookshelf_id: 14},
  {book_id: 14, bookshelf_id: 14},
  {book_id: 16, bookshelf_id: 14},
  {book_id: 24, bookshelf_id: 14},
  {book_id: 18, bookshelf_id: 13},
  {book_id: 22, bookshelf_id: 13},
  {book_id: 20, bookshelf_id: 13},
  {book_id: 25, bookshelf_id: 15},
  {book_id: 26, bookshelf_id: 15},
  {book_id: 27, bookshelf_id: 15},
  {book_id: 28, bookshelf_id: 15}
])

Shelving.create!([
  {book_id: 1, bookshelf_id: 16},
  {book_id: 2, bookshelf_id: 16},
  {book_id: 3, bookshelf_id: 16},
  {book_id: 4, bookshelf_id: 16},
  {book_id: 5, bookshelf_id: 16},
  {book_id: 6, bookshelf_id: 16},
  {book_id: 7, bookshelf_id: 16},
  {book_id: 11, bookshelf_id: 16},
  {book_id: 13, bookshelf_id: 16},
  {book_id: 8, bookshelf_id: 16},
  {book_id: 9, bookshelf_id: 17},
  {book_id: 10, bookshelf_id: 17},
  {book_id: 14, bookshelf_id: 17},
  {book_id: 16, bookshelf_id: 17},
  {book_id: 24, bookshelf_id: 17},
  {book_id: 18, bookshelf_id: 16},
  {book_id: 22, bookshelf_id: 16},
  {book_id: 20, bookshelf_id: 16},
  {book_id: 25, bookshelf_id: 18},
  {book_id: 26, bookshelf_id: 18},
  {book_id: 27, bookshelf_id: 18},
  {book_id: 28, bookshelf_id: 18}
])

Shelving.create!([
  {book_id: 1, bookshelf_id: 19},
  {book_id: 2, bookshelf_id: 19},
  {book_id: 3, bookshelf_id: 19},
  {book_id: 4, bookshelf_id: 19},
  {book_id: 5, bookshelf_id: 19},
  {book_id: 6, bookshelf_id: 19},
  {book_id: 7, bookshelf_id: 19},
  {book_id: 11, bookshelf_id: 19},
  {book_id: 13, bookshelf_id: 19},
  {book_id: 8, bookshelf_id: 19},
  {book_id: 9, bookshelf_id: 20},
  {book_id: 10, bookshelf_id: 20},
  {book_id: 14, bookshelf_id: 20},
  {book_id: 16, bookshelf_id: 20},
  {book_id: 24, bookshelf_id: 20},
  {book_id: 18, bookshelf_id: 19},
  {book_id: 22, bookshelf_id: 19},
  {book_id: 20, bookshelf_id: 19},
  {book_id: 25, bookshelf_id: 21},
  {book_id: 26, bookshelf_id: 21},
  {book_id: 27, bookshelf_id: 21},
  {book_id: 28, bookshelf_id: 21}
])

Shelving.create!([
  {book_id: 1, bookshelf_id: 22},
  {book_id: 2, bookshelf_id: 22},
  {book_id: 3, bookshelf_id: 22},
  {book_id: 4, bookshelf_id: 22},
  {book_id: 5, bookshelf_id: 22},
  {book_id: 6, bookshelf_id: 22},
  {book_id: 7, bookshelf_id: 22},
  {book_id: 11, bookshelf_id: 22},
  {book_id: 13, bookshelf_id: 22},
  {book_id: 8, bookshelf_id: 22},
  {book_id: 9, bookshelf_id: 23},
  {book_id: 10, bookshelf_id: 23},
  {book_id: 14, bookshelf_id: 23},
  {book_id: 16, bookshelf_id: 23},
  {book_id: 24, bookshelf_id: 23},
  {book_id: 18, bookshelf_id: 22},
  {book_id: 22, bookshelf_id: 22},
  {book_id: 20, bookshelf_id: 22},
  {book_id: 25, bookshelf_id: 24},
  {book_id: 26, bookshelf_id: 24},
  {book_id: 27, bookshelf_id: 24},
  {book_id: 28, bookshelf_id: 24}
])
