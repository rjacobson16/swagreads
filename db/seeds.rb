# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Book.delete_all
Bookshelf.delete_all
Shelving.delete_all

User.create!(
  username: 'guest',
  password: 'password'
)

Book.create!(
  title: 'Snow Crash',
  author: 'Neal Stephenson',
  description: 'In reality, Hiro Protagonist delivers pizza for Uncle Enzo’s CosoNostra Pizza Inc., but in the Metaverse he’s a warrior prince. Plunging headlong into the enigma of a new computer virus that’s striking down hackers everywhere, he races along the neon-lit streets on a search-and-destroy mission for the shadowy virtual villain threatening to bring about infocalypse. Snow Crash is a mind-altering romp through a future America so bizarre, so outrageous…you’ll recognize it immediately. ',
  img_url: 'http://res.cloudinary.com/dve2z73dr/image/upload/v1506140376/snow-crash_swtiiu.jpg'
)


Book.create!(
  title: 'The Road',
  author: 'Cormac McCarthy',
  description: 'A father and his son walk alone through burned America. Nothing moves in the ravaged landscape save the ash on the wind. It is cold enough to crack stones, and when the snow falls it is gray. The sky is dark. Their destination is the coast, although they don’t know what, if anything, awaits them there. They have nothing; just a pistol to defend themselves against the lawless bands that stalk the road, the clothes they are wearing, a cart of scavenged food—and each other.',
  img_url: 'http://res.cloudinary.com/dve2z73dr/image/upload/v1506140377/the-road_abo3mp.jpg'
)

Book.create!(
 title: 'Out',
 author: 'Natsuo Kirino',
 description: "Natsuo Kirino's novel tells a story of random violence in the staid Tokyo suburbs, as a young mother who works a night shift making boxed lunches brutally strangles her deadbeat husband and then seeks the help of her co-workers to dispose of the body and cover up her crime.",
 img_url: 'http://res.cloudinary.com/dve2z73dr/image/upload/v1506140376/out_va0qua.jpg'
)

Book.create!(
 title: 'I Am Legend',
 author: 'Richard Matheson',
 description: "Robert Neville is the last living man on Earth...but he is not alone. Every other man, woman, and child on Earth has become a vampire, and they are all hungry for Neville's blood.
By day, he is the hunter, stalking the sleeping undead through the abandoned ruins of civilization. By night, he barricades himself in his home and prays for dawn.
How long can one man survive in a world of vampires?",
 img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140375/i-am-legend_ggcvbm.jpg"
)


Book.create!(
 title: "Oryx and Crake",
 author: 'Margaret Atwood',
 description: "Oryx and Crake is at once an unforgettable love story and a compelling vision of the future. Snowman, known as Jimmy before mankind was overwhelmed by a plague, is struggling to survive in a world where he may be the last human, and mourning the loss of his best friend, Crake, and the beautiful and elusive Oryx whom they both loved. In search of answers, Snowman embarks on a journey–with the help of the green-eyed Children of Crake–through the lush wilderness that was so recently a great city, until powerful corporations took mankind on an uncontrolled genetic engineering ride. Margaret Atwood projects us into a near future that is both all too familiar and beyond our imagining.",
 img_url: 'http://res.cloudinary.com/dve2z73dr/image/upload/v1506140377/oryx-crake_hvbrcg.jpg'
)

Book.create!(
 title: 'Flatland',
 author: 'Edwin A. Abbot',
 description: 'Classic of science (and mathematical) fiction — charmingly illustrated by author — describes the journeys of A. Square and his adventures in Spaceland (three dimensions), Lineland (one dimension) and Pointland (no dimensions). A. Square also entertains thoughts of visiting a land of four dimensions — a revolutionary idea for which he is banished from Spaceland.',
 img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140374/flatland_yl95zx.jpg"
)

Book.create!(
 title: 'The Gunslinger',
 author: 'Stephen King',
 description: "Beginning with a short story appearing in The Magazine of Fantasy and Science Fiction in 1978, the publication of Stephen King's epic work of fantasy -- what he considers to be a single long novel and his magnum opus -- has spanned a quarter of a century.

Set in a world of extraordinary circumstances, filled with stunning visual imagery and unforgettable characters, The Dark Tower series is King's most visionary feat of storytelling, a magical mix of science fiction, fantasy, and horror that may well be his crowning achievement.",
 img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140374/gunslinger_vrz1tz.jpg"
)

Book.create!(
 title: 'House of Leaves',
 author: 'Mark Z. Danielewski',
 description: "A blind old man, a young apprentice working in a tattoo shop, and a mad woman haunting an Ohio institute narrate this story of a family that encounters an endlessly shifting series of hallways in their new home, eventually coming face to face with the awful darkness lying at its heart.",
 img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140374/house-of-leaves_ywmz2t.jpg"
)

Book.create!(
 title: "The Singularity is Near: When Humans Transcend Biology",
 author: 'Ray Kurzweil',
 description: "For over three decades, Ray Kurzweil has been one of the most respected and provocative advocates of the role of technology in our future. In his classic The Age of Spiritual Machines, he argued that computers would soon rival the full range of human intelligence at its best. Now he examines the next step in this inexorable evolutionary process: the union of human and machine, in which the knowledge and skills embedded in our brains will be combined with the vastly greater capacity, speed, and knowledge-sharing ability of our creations.",
 img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140376/singularity-is-near_klp56x.jpg"
)

Book.create!(
 title: "The Language Instinct: How the Mind Creates Language",
 author: 'Steven Pinker',
 description: "In this classic, the world's expert on language and mind lucidly explains everything you always wanted to know about language: how it works, how children learn it, how it changes, how the brain computes it, and how it evolved. With deft use of examples of humor and wordplay, Steven Pinker weaves our vast knowledge of language into a compelling story: language is a human instinct, wired into our brains by evolution. The Language Instinct received the William James Book Prize from the American Psychological Association and the Public Interest Award from the Linguistics Society of America. This edition includes an update on advances in the science of language since The Language Instinct was first published.",
 img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140375/language-instinct_gcsnar.jpg"
)

Book.create!(
 title: 'The Things They Carried',
 author: "Tim O'Brien",
 description: "They carried malaria tablets, love letters, 28-pound mine detectors, dope, illustrated bibles, each other. And if they made it home alive, they carried unrelenting images of a nightmarish war that history is only beginning to absorb. Since its first publication, The Things They Carried has become an unparalleled Vietnam testament, a classic work of American literature, and a profound study of men at war that illuminates the capacity, and the limits, of the human heart and soul.

The Things They Carried depicts the men of Alpha Company: Jimmy Cross, Henry Dobbins, Rat Kiley, Mitchell Sanders, Norman Bowker, Kiowa, and the character Tim O’Brien, who has survived his tour in Vietnam to become a father and writer at the age of forty-three.",
 img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140377/things-they-carried_kumxze.jpg"
)

Book.create!(
 title: "The Hobbit",
 author: 'J.R.R. Tolkien',
 description: "Written for J.R.R. Tolkien’s own children, The Hobbit met with instant critical acclaim when it was first published in 1937. Now recognized as a timeless classic, this introduction to the hobbit Bilbo Baggins, the wizard Gandalf, Gollum, and the spectacular world of Middle-earth recounts of the adventures of a reluctant hero, a powerful and dangerous ring, and the cruel dragon Smaug the Magnificent. The text in this 372-page paperback edition is based on that first published in Great Britain by Collins Modern Classics (1998), and includes a note on the text by Douglas A. Anderson (2001). Unforgettable!",
 img_url: 'https://res.cloudinary.com/dve2z73dr/image/upload/v1506140374/hobbit_oae6eg.jpg'
)

 Book.create!(
  title: 'The Pillars of the Earth',
  author: 'Ken Follett',
  description: "Everything readers expect from Follett is here: intrigue, fast-paced action, and passionate romance. But what makes The Pillars of the Earth extraordinary is the time the twelfth century; the place feudal England; and the subject the building of a glorious cathedral. Follett has re-created the crude, flamboyant England of the Middle Ages in every detail. The vast forests, the walled towns, the castles, and the monasteries become a familiar landscape. Against this richly imagined and intricately interwoven backdrop, filled with the ravages of war and the rhythms of daily life, the master storyteller draws the reader irresistibly into the intertwined lives of his characters into their dreams, their labors, and their loves: Tom, the master builder; Aliena, the ravishingly beautiful noblewoman; Philip, the prior of Kingsbridge; Jack, the artist in stone; and Ellen, the woman of the forest who casts a terrifying curse. From humble stonemason to imperious monarch, each character is brought vividly to life. The building of the cathedral, with the almost eerie artistry of the unschooled stonemasons, is the center of the drama. Around the site of the construction, Follett weaves a story of betrayal, revenge, and love, which begins with the public hanging of an innocent man and ends with the humiliation of a king." ,
  img_url: 'http://res.cloudinary.com/dve2z73dr/image/upload/v1506140376/pillars-earth_zdlzqm.jpg'
 )

 Book.create!(
  title: "Freakonomics: A Rogue Economist Explores the Hidden Side of Everything",
  author: 'Steven D. Levitt, Stephen J. Dubner',
  description: "Which is more dangerous, a gun or a swimming pool? What do schoolteachers and sumo wrestlers have in common? Why do drug dealers still live with their moms? How much do parents really matter? What kind of impact did Roe v. Wade have on violent crime?

These may not sound like typical questions for an economist to ask. But Steven D. Levitt is not a typical economist. He is a much heralded scholar who studies the stuff and riddles of everyday life -- from cheating and crime to sports and child rearing -- and whose conclusions regularly turn the conventional wisdom on its head. He usually begins with a mountain of data and a simple, unasked question. Some of these questions concern life-and-death issues; others have an admittedly freakish quality. Thus the new field of study contained in this book: freakonomics. \n

Through forceful storytelling and wry insight, Levitt and co-author Stephen J. Dubner show that economics is, at root, the study of incentives -- how people get what they want, or need, especially when other people want or need the same thing. In Freakonomics, they set out to explore the hidden side of ... well, everything. The inner workings of a crack gang. The truth about real-estate agents. The myths of campaign finance. The telltale marks of a cheating schoolteacher. The secrets of the Ku Klux Klan.

What unites all these stories is a belief that the modern world, despite a surfeit of obfuscation, complication, and downright deceit, is not impenetrable, is not unknowable, and -- if the right questions are asked -- is even more intriguing than we think. All it takes is a new way of looking. Steven Levitt, through devilishly clever and clear-eyed thinking, shows how to see through all the clutter.

Freakonomics establishes this unconventional premise: If morality represents how we would like the world to work, then economics represents how it actually does work. It is true that readers of this book will be armed with enough riddles and stories to last a thousand cocktail parties. But Freakonomics can provide more than that. It will literally redefine the way we view the modern world.",
  img_url: 'http://res.cloudinary.com/dve2z73dr/image/upload/v1506140373/freakonomics_jrtpy5.jpg'
 )

 Book.create!(
  title: 'Bossypants',
  author: 'Tina Fey',
  description: "Before Liz Lemon, before \"Weekend Update,\" before \"Sarah Palin,\" Tina Fey was just a young girl with a dream: a recurring stress dream that she was being chased through a local airport by her middle-school gym teacher. She also had a dream that one day she would be a comedian on TV.

She has seen both these dreams come true.

At last, Tina Fey's story can be told. From her youthful days as a vicious nerd to her tour of duty on Saturday Night Live; from her passionately halfhearted pursuit of physical beauty to her life as a mother eating things off the floor; from her one-sided college romance to her nearly fatal honeymoon -- from the beginning of this paragraph to this final sentence.

Tina Fey reveals all, and proves what we've all suspected: you're no one until someone calls you bossy.",
  img_url: 'http://res.cloudinary.com/dve2z73dr/image/upload/v1506140373/9476337_ytc5qi.jpg'
 )

 Book.create!(
  title: 'Stiff: The Curious Lives of Human Cadavers',
  author: 'Mary Roach',
  description: "Stiff is an oddly compelling, often hilarious exploration of the strange lives of our bodies postmortem. For two thousand years, cadavers—some willingly, some unwittingly—have been involved in science's boldest strides and weirdest undertakings. In this fascinating account, Mary Roach visits the good deeds of cadavers over the centuries and tells the engrossing story of our bodies when we are no longer with them.",
  img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140377/stiff_u2tkuu.jpg"
 )

 Book.create!(
  title: "Lost Horizon",
  author: 'James Hilton',
  description: "While attempting to escape a civil war, four people are kidnapped and transported to the Tibetan mountains. After their plane crashes, they are found by a mysterious Chinese man. He leads them to a monastery hidden in \"the valley of the blue moon\" -- a land of mystery and matchless beauty where life is lived in tranquil wonder, beyond the grasp of a doomed world.

It is here, in Shangri-La, where destinies will be discovered and the meaning of paradise will be unveiled.",
  img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140375/lost-horizon_kvowc2.jpg"
 )

 Book.create!(
  title: '2666',
  author: ' Roberto Bolaño',
  description: "Composed in the last years of Roberto Bolaño’s life, 2666 was greeted across Europe and Latin America as his highest achievement, surpassing even his previous work in its strangeness, beauty, and scope. Its throng of unforgettable characters includes academics and convicts, an American sportswriter, an elusive German novelist, and a teenage student and her widowed, mentally unstable father. Their lives intersect in the urban sprawl of Santa Teresa—a fictional Juárez—on the U.S-Mexico border, where hundreds of young factory workers, in the novel as in life, have disappeared.",
  img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140373/2666_etylvd.jpg"
 )

 Book.create!(
  title: 'In Cold Blood',
  author: 'Truman Capote',
  description: "On November 15, 1959, in the small town of Holcomb, Kansas, four members of the Clutter family were savagely murdered by blasts from a shotgun held a few inches from their faces. There was no apparent motive for the crime, and there were almost no clues.
As Truman Capote reconstructs the murder and the investigation that led to the capture, trial, and execution of the killers, he generates both mesmerizing suspense and astonishing empathy. In Cold Blood is a work that transcends its moment, yielding poignant insights into the nature of American violence. ",
  img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140375/in-cold-blood_ldhwya.jpg"
 )


 Book.create!(
  title: 'Spin',
  author: 'Robert Charles Wilson',
  description: "One night in October when he was ten years old, Tyler Dupree stood in his back yard and watched the stars go out. They all flared into brilliance at once, then disappeared, replaced by a flat, empty black barrier. He and his best friends, Jason and Diane Lawton, had seen what became known as the Big Blackout. It would shape their lives.

Life on Earth is about to get much, much stranger.",
  img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140377/spin_iqqklm.jpg"
 )

 Book.create!(
  title: 'We Have Always Lived in the Castle',
  author: 'Shirley Jackson',
  description: "Merricat Blackwood lives on the family estate with her sister Constance and her Uncle Julian. Not long ago there were seven Blackwoods—until a fatal dose of arsenic found its way into the sugar bowl one terrible night. Acquitted of the murders, Constance has returned home, where Merricat protects her from the curiosity and hostility of the villagers. Their days pass in happy isolation until cousin Charles appears. Only Merricat can see the danger, and she must act swiftly to keep Constance from his grasp.",
  img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140375/always-lived-in-castle_pdldkm.jpg"
 )

 Book.create!(
  title: 'The Waste Lands',
  author: 'Stephen King',
  description: "Roland, The Last Gunslinger, moves ever closer to The Dark Tower of his dreams and nightmares—as he crosses a desert of damnation in a macabre world that is a twisted image of our own. With him are those he has drawn to this world: street-smart Eddie Dean and courageous wheelchair-bound Susannah.

Ahead of him are mind-rending revelations about who and what is driving him. Against him is arrayed a swelling legion of foes—both more and less than human...",
  img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140377/the-waste-lands_rojoxw.jpg"
 )

 Book.create!(
  title: 'Dune',
  author: 'Frank Herbert',
  description: "Set in the far future amidst a sprawling feudal interstellar empire where planetary dynasties are controlled by noble houses that owe an allegiance to the imperial House Corrino, Dune tells the story of young Paul Atreides (the heir apparent to Duke Leto Atreides and heir of House Atreides) as he and his family accept control of the desert planet Arrakis, the only source of the 'spice' melange, the most important and valuable substance in the cosmos. The story explores the complex, multi-layered interactions of politics, religion, ecology, technology, and human emotion as the forces of the empire confront each other for control of Arrakis.

Published in 1965, it won the Hugo Award in 1966 and the inaugural Nebula Award for Best Novel. Dune is frequently cited as the world's best-selling sf novel.",
  img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140374/dune_xmkeal.jpg"
 )

 Book.create!(
  title: 'Joan of Arc',
  author: 'Helen Castor',
  description: "We all know the story of Joan of Arc. A peasant girl who hears voices from God. A warrior leading an army to victory, in an age that believes women cannot fight. The Maid of Orleans, and the saviour of France. Burned at the stake as a heretic at the age of just nineteen. Five hundred years later, a saint. Her case was heard in court twice over. One trial, in 1431, condemned her; the other, twenty-five years after her death, cleared her name. In the transcripts, we hear first-hand testimony from Joan, her family and her friends: a rare survival from the medieval world. What could be more revealing?",
  img_url: "http://res.cloudinary.com/dve2z73dr/image/upload/v1506140375/joan-of-arc_ozpjzn.jpg"
 )

Bookshelf.create!(
  name: 'Fiction',
  user_id: 1
)

Bookshelf.create!(
  name: 'Non-fiction',
  user_id: 1
)

Shelving.create!(
  bookshelf_id: 1,
  book_id: 1
)

Shelving.create!(
  bookshelf_id: 1,
  book_id: 2
)

Shelving.create!(
  bookshelf_id: 1,
  book_id: 3
)

Shelving.create!(
  bookshelf_id: 1,
  book_id: 4
)

Shelving.create!(
  bookshelf_id: 1,
  book_id: 5
)

Shelving.create!(
  bookshelf_id: 1,
  book_id: 6
)

Shelving.create!(
  bookshelf_id: 1,
  book_id: 7
)

Shelving.create!(
  bookshelf_id: 1,
  book_id: 11
)

Shelving.create!(
  bookshelf_id: 1,
  book_id: 12
)

Shelving.create!(
  bookshelf_id: 1,
  book_id: 13
)


Shelving.create!(
  bookshelf_id: 1,
  book_id: 8
)

Shelving.create!(
  bookshelf_id: 2,
  book_id: 9
)

Shelving.create!(
  bookshelf_id: 2,
  book_id: 10
)

Shelving.create!(
  bookshelf_id: 2,
  book_id: 14
)

Shelving.create!(
  bookshelf_id: 2,
  book_id: 16
)

Shelving.create!(
  bookshelf_id: 2,
  book_id: 24
)
