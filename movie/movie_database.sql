-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2020 at 03:26 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movieid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(800) NOT NULL,
  `img` varchar(300) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movieid`, `name`, `description`, `img`, `category`) VALUES
(11, 'Casino Royale', 'James Bond (Daniel Craig) goes on his first mission as a 00. Le Chiffre (Mads Mikkelsen) is a banker to the world\'s terrorists. He is participating in a poker game at Montenegro, where he must win back his money, in order to stay safe amongst the terrorist market. The boss of MI6, known simply as \'M\' (Dame Judi Dench) sends Bond, along with Vesper Lynd Eva Green) to attend this game and prevent Le Chiffre from winning. Bond, using help from Felix Leiter (Jeffrey Wright), Rene Mathis (Giancarlo Giannini), and having Vesper pose as his partner, enters the most important poker game in his already dangerous career. But if Bond defeats Le Chiffre, will he and Vesper Lynd remain safe?', 'https://m.media-amazon.com/images/I/61WGMnFEYgL._AC_SL1039_.jpg', 'action'),
(12, 'Dredd', 'The future America is an irradiated waste land. On its East Coast, running from Boston to Washington DC, lies Mega City One - a vast, violent metropolis where criminals rule the chaotic streets. The only force of order lies with the urban cops called \'Judges\' who possess the combined powers of judge, jury and instant executioner. Known and feared throughout the city, Dredd is the ultimate Judge, challenged with ridding the city of its latest scourge - a dangerous drug epidemic that has users of \'Slo-Mo\' experiencing reality at a fraction of its normal speed. During a routine day on the job, Dredd is assigned to train and evaluate Cassandra Anderson, a rookie with powerful psychic abilities thanks to a genetic mutation. A heinous crime calls them to a neighborhood where fellow Judges rarely', 'https://m.media-amazon.com/images/M/MV5BODkyNDQzMzUzOF5BMl5BanBnXkFtZTcwODYyMDEyOA@@._V1_.jpg', 'action'),
(13, 'John Wick', 'With the untimely death of his beloved wife still bitter in his mouth, John Wick, the expert former assassin, receives one final gift from her--a precious keepsake to help John find a new meaning in life now that she is gone. But when the arrogant Russian mob prince, Iosef Tarasov, and his men pay Wick a rather unwelcome visit to rob him of his prized 1969 Mustang and his wife\'s present, the legendary hitman will be forced to unearth his meticulously concealed identity. Blind with revenge, John will immediately unleash a carefully orchestrated maelstrom of destruction against the sophisticated kingpin, Viggo Tarasov, and his family, who are fully aware of his lethal capacity. Now, only blood can quench the boogeyman\'s thirst for retribution.', 'https://images-na.ssl-images-amazon.com/images/I/71WiYBT2QsL._AC_SY741_.jpg', 'action'),
(14, 'Mad Max', 'An apocalyptic story set in the furthest reaches of our planet, in a stark desert landscape where humanity is broken, and almost everyone is crazed fighting for the necessities of life. Within this world exist two rebels on the run who just might be able to restore order. There\'s Max, a man of action and a man of few words, who seeks peace of mind following the loss of his wife and child in the aftermath of the chaos. And Furiosa, a woman of action and a woman who believes her path to survival may be achieved if she can make it across the desert back to her childhood homeland.', 'https://images-na.ssl-images-amazon.com/images/I/817J4ESrRdL._AC_SL1500_.jpg', 'action'),
(15, 'Back to the Future', 'Marty McFly, a typical American teenager of the Eighties, is accidentally sent back to 1955 in a plutonium-powered DeLorean \'time machine\' invented by a slightly mad scientist. During his often hysterical, always amazing trip back in time, Marty must make certain his teenage parents-to-be meet and fall in love - so he can get back to the future.', 'https://m.media-amazon.com/images/I/71pwYomGC1L._AC_SY741_.jpg', 'adventure'),
(16, 'Inception', 'Dom Cobb is a skilled thief, the absolute best in the dangerous art of extraction, stealing valuable secrets from deep within the subconscious during the dream state, when the mind is at its most vulnerable. Cobb\'s rare ability has made him a coveted player in this treacherous new world of corporate espionage, but it has also made him an international fugitive and cost him everything he has ever loved. Now Cobb is being offered a chance at redemption. One last job could give him his life back but only if he can accomplish the impossible, inception. Instead of the perfect heist, Cobb and his team of specialists have to pull off the reverse: their task is not to steal an idea, but to plant one. If they succeed, it could be the perfect crime. But no amount of careful planning or expertise can', 'https://m.media-amazon.com/images/I/71uKM+LdgFL._AC_SY879_.jpg', 'adventure'),
(17, 'Interstellar', 'Earth\'s future has been riddled by disasters, famines, and droughts. There is only one way to ensure mankind\'s survival: Interstellar travel. A newly discovered wormhole in the far reaches of our solar system allows a team of astronauts to go where no man has gone before, a planet that may have the right environment to sustain human life. ', 'https://cdn.shopify.com/s/files/1/1416/8662/products/interstellar_2014_advance_original_film_art_682852f2-23f6-46de-a1db-4029d5b6f0b4_5000x.jpg?v=1574284010', 'adventure'),
(18, 'Lord of the Rings', 'An ancient Ring thought lost for centuries has been found, and through a strange twist of fate has been given to a small Hobbit named Frodo. When Gandalf discovers the Ring is in fact the One Ring of the Dark Lord Sauron, Frodo must make an epic quest to the Cracks of Doom in order to destroy it. However, he does not go alone. He is joined by Gandalf, Legolas the elf, Gimli the Dwarf, Aragorn, Boromir, and his three Hobbit friends Merry, Pippin, and Samwise. Through mountains, snow, darkness, forests, rivers and plains, facing evil and danger at every corner the Fellowship of the Ring must go. Their quest to destroy the One Ring is the only hope for the end of the Dark Lords reign. ', 'https://dgeiu3fz282x5.cloudfront.net/g/x/x-3637.jpg', 'adventure'),
(19, 'Space Odyssey', '\'2001\' is a story of evolution. Sometime in the distant past, someone or something nudged evolution by placing a monolith on Earth (presumably elsewhere throughout the universe as well). Evolution then enabled humankind to reach the moon\'s surface, where yet another monolith is found, one that signals the monolith placers that humankind has evolved that far. Now a race begins between computers (HAL) and human (Bowman) to reach the monolith placers. The winner will achieve the next step in evolution, whatever that may be.', 'https://m.media-amazon.com/images/I/71uoIeVduJL._AC_SY879_.jpg', 'adventure'),
(22, 'Australia', 'In northern Australia at the beginning of World War II, an English aristocrat inherits a cattle station the size of Maryland. When English cattle barons plot to take her land, she reluctantly joins forces with a rough-hewn stock-man to drive 2,000 head of cattle across hundreds of miles of the country\'s most unforgiving land, only to still face the bombing of Darwin, Australia, by the Japanese forces that had attacked Pearl Harbor only months earlier.', 'https://img.moviepostershop.com/australia-movie-poster-2008-1020427803.jpg', 'drama'),
(23, 'Denial', 'Based on the acclaimed book \'History on Trial: My Day in Court with a Holocaust Denier,\' DENIAL recounts Deborah E. Lipstadt\'s (Academy Award winner Rachel Weisz) legal battle for historical truth against David Irving (Cannes Award winner Timothy Spall), who accused her of libel when she declared him a Holocaust denier. In the English legal system in Defamation, the burden of proof is on the accused, therefore it was up to Lipstadt and her legal team to prove the essential truth that the Holocaust occurred. Also starring two-time Academy Award nominee Tom Wilkinson, the film is directed by Emmy Award winner Mick Jackson (\'Temple Grandin\') and adapted for the screen by BAFTA and Academy Award nominated writer David Hare (THE READER). Producers are Gary Foster and Russ Krasnoff.', 'https://www.joblo.com/assets/images/oldsite/posters/images/full/denial-poster.jpg', 'drama'),
(24, 'Inception', 'Dom Cobb is a skilled thief, the absolute best in the dangerous art of extraction, stealing valuable secrets from deep within the subconscious during the dream state, when the mind is at its most vulnerable. Cobb\'s rare ability has made him a coveted player in this treacherous new world of corporate espionage, but it has also made him an international fugitive and cost him everything he has ever loved. Now Cobb is being offered a chance at redemption. One last job could give him his life back but only if he can accomplish the impossible, inception. Instead of the perfect heist, Cobb and his team of specialists have to pull off the reverse: their task is not to steal an idea, but to plant one. If they succeed, it could be the perfect crime. But no amount of careful planning or expertise can', 'https://m.media-amazon.com/images/I/71uKM+LdgFL._AC_SY879_.jpg', 'drama'),
(25, 'Now Is Good', 'Tessa is seventeen and passionate about life. Diagnosed with a terminal illness, she determines to use every moment, compiling a catalogue of what a normal teenager would experience, including losing her virginity and taking drugs, With the help of her best friend, Zoey, she sets the list into motion. And while her parents and brother each deals with their fear of losing her in their own way, Tessa explores a whole new world, determined to live every day as intensely as possible. Falling in love with her new neighbor, Adam, wasn\'t on the list, but this proves to be the most exhilarating experience of them all.', 'https://i.pinimg.com/474x/29/28/7a/29287aeb83d8ba40cdb71b56ef9051c9.jpg', 'drama'),
(26, 'Moonlight', 'Three time periods - young adolescence, mid-teen and young adult - in the life of black-American Chiron is presented. When a child, Chiron lives with his single, crack addict mother Paula in a crime ridden neighborhood in Miami. Chiron is a shy, withdrawn child largely due to his small size and being neglected by his mother, who is more concerned about getting her fixes and satisfying her carnal needs than taking care of him. Because of these issues, Chiron is bullied, the slurs hurled at him which he doesn\'t understand beyond knowing that they are meant to be hurtful. Besides his same aged Cuban-American friend Kevin, Chiron is given what little guidance he has in life from a neighborhood drug dealer named Juan, who can see that he is neglected, and Juan\'s caring girlfriend Teresa, whose ', 'https://images-na.ssl-images-amazon.com/images/I/91PbfpzX5uL._AC_SL1500_.jpg', 'drama'),
(28, 'Friday the 13th', 'A group of young adults set up tent near the abandoned summer camp where a series of gruesome murders are said to have taken place back in 1980. The perpetrator was a grieving mother, driven insane by the drowning of her child, Jason, whom she believed was neglected by the camp counselors. As legend has it, the last survivor of the attacks beheaded the woman. But then Jason came back, and now he is a vengeful and inexorable killer, wielding crossbows, swords, axes and other sharp instruments. The legend proves horribly true, as these campers quickly discover. Six weeks later, the brother of one of those campers distributes posters of his missing sister. The police believe she took off with her boyfriend; but he knows better. The brother crosses paths with an uptight young rich guy who is h', 'https://bestsimilar.com/img/movie/thumb/12/13781.jpg', 'horror'),
(29, 'Poltergeist', 'A young family are visited by ghosts in their home. At first the ghosts appear friendly, moving objects around the house to the amusement of everyone, then they turn nasty and start to terrorise the family before they \'kidnap\' the youngest daughter.', 'https://m.media-amazon.com/images/M/MV5BNzliZmRlYTctYmNkYS00NzE5LWI1OWQtMTRiODY5MDMwMTVkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'horror'),
(30, 'The Descent', 'A woman goes on vacation with her friends after her husband and daughter encounter a tragic accident. One year later she goes hiking with her friends and they get trapped in the cave. With a lack of supply, they struggle to survive and they meet strange blood thirsty creatures.', 'https://images-na.ssl-images-amazon.com/images/I/519Jj37SYtL._AC_.jpg', 'horror'),
(31, 'The Exorcist', 'A visiting actress in Washington, D.C., notices dramatic and dangerous changes in the behavior and physical make-up of her 12-year-old daughter. Meanwhile, a young priest at nearby Georgetown University begins to doubt his faith while dealing with his mother\'s terminal sickness. And, book-ending the story, a frail, elderly priest recognizes the necessity for a show-down with an old demonic enemy.', 'https://m.media-amazon.com/images/I/611RokBSHTL._AC_SY741_.jpg', 'horror'),
(32, 'The Shining', 'Haunted by a persistent writer\'s block, the aspiring author and recovering alcoholic, Jack Torrance, drags his wife, Wendy, and his gifted son, Danny, up snow-capped Colorado\'s secluded Overlook Hotel after taking up a job as an off-season caretaker. As the cavernous hotel shuts down for the season, the manager gives Jack a grand tour, and the facility\'s chef, the ageing Mr Hallorann, has a fascinating chat with Danny about a rare psychic gift called \'The Shining\', making sure to warn him about the hotel\'s abandoned rooms, and, in particular, the off-limits Room 237. However, instead of overcoming the dismal creative rut, little by little, Jack starts losing his mind, trapped in an unforgiving environment of seemingly endless snowstorms, and a gargantuan silent prison riddled with strange ', 'https://images-na.ssl-images-amazon.com/images/I/51ZssO%2Bm8vL._AC_.jpg', 'horror'),
(33, 'Madagascar', 'Longing to roam free in the vast landscapes of Mother Africa, Marty, the bored and dejected zebra of the famous Central Park Zoo, escapes his prison on the night of his tenth birthday celebration. However, after a botched rescue attempt by Marty\'s companions--Alex, the content lion; Melman, the skittish giraffe, and Gloria, the resolute hippo--the friends will find themselves crated up and shipped off to a remote wildlife preserve, only to end up on the sandy shores of exotic Madagascar. At last, Marty\'s dream will come true; nevertheless, what does it really mean to be a truly wild animal?', 'https://i.frg.im/Kj6BIbO/2478238-0_600.jpg', 'animated'),
(34, 'Spider-Man: Into the Spiderverse', 'Miles Morales is a New York teen struggling with school, friends and, on top of that, being the new Spider-Man. When he comes across Peter Parker, the erstwhile saviour of New York, in the multiverse, Miles must train to become the new protector of his city.', 'https://m.media-amazon.com/images/M/MV5BMjMwNDkxMTgzOF5BMl5BanBnXkFtZTgwNTkwNTQ3NjM@._V1_.jpg', 'animated'),
(35, 'The Little Mermaid', 'In Disney\'s beguiling animated romp, rebellious 16-year-old mermaid Ariel is fascinated with life on land. On one of her visits to the surface, which are forbidden by her controlling father, King Triton, she falls for a human prince. Determined to be with her new love, Ariel makes a dangerous deal with the sea witch Ursula to become human for three days. But when plans go awry for the star-crossed lovers, the king must make the ultimate sacrifice for his daughter.', 'https://i5.walmartimages.com/asr/b5f42e3c-096a-493b-869f-294c53053e02_1.00bfe9c796dfe5a03af4e623efddcc85.jpeg', 'animated'),
(37, 'Wall-E', 'In a distant, but not so unrealistic, future where mankind has abandoned earth because it has become covered with trash from products sold by the powerful multi-national Buy N Large corporation, WALL-E, a garbage collecting robot has been left to clean up the mess. Mesmerized with trinkets of Earth\'s history and show tunes, WALL-E is alone on Earth except for a sprightly pet cockroach. One day, EVE, a sleek (and dangerous) reconnaissance robot, is sent to Earth to find proof that life is once again sustainable. WALL-E falls in love with EVE. WALL-E rescues EVE from a dust storm and shows her a living plant he found amongst the rubble. Consistent with her \'directive\', EVE takes the plant and automatically enters a deactivated state except for a blinking green beacon. WALL-E, doesn\'t underst', 'https://images-na.ssl-images-amazon.com/images/I/51RoZRgIHtL._AC_.jpg', 'animated'),
(38, 'Baby Driver', 'Baby is a young and partially hearing impaired getaway driver who can make any wild move while in motion with the right track playing. It\'s a critical talent he needs to survive his indentured servitude to the crime boss, Doc, who values his role in his meticulously planned robberies. However, just when Baby thinks he is finally free and clear to have his own life with his new girlfriend, Debora, Doc coerces him back for another job. Now saddled with a crew of thugs too violently unstable to keep to Doc\'s plans, Baby finds himself and everything he cares for in terrible danger. To survive and escape the coming maelstrom, it will take all of Baby\'s skill, wits and daring, but even on the best track, can he make it when life is forcing him to face the music?', 'https://images-na.ssl-images-amazon.com/images/I/717QDxYBkbL._AC_SL1024_.jpg', 'action'),
(39, 'Dora and the Lost City of Gold', 'Having spent most of her life exploring the jungle with her parents, nothing could prepare Dora for her most dangerous adventure ever: high school. Always the explorer, Dora quickly finds herself leading Boots, Diego, a mysterious jungle inhabitant, and a ragtag group of teens on a live-action adventure to save her parents and solve the impossible mystery behind a lost Inca civilization.', 'https://m.media-amazon.com/images/M/MV5BOTVhMzYxNjgtYzYwOC00MGIwLWJmZGEtMjgwMzgxMWUwNmRhXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_.jpg', 'adventure'),
(40, 'The Princess and the Frog', 'A modern day retelling of the classic story The Frog Prince. The Princess and the Frog finds the lives of arrogant, carefree Prince Naveen and hardworking waitress Tiana crossing paths. Prince Naveen is transformed into a frog by a conniving voodoo magician and Tiana, following suit, upon kissing the amphibian royalty. With the help of a trumpet-playing alligator, a Cajun firefly, and an old blind lady who lives in a boat in a tree, Naveen and Tiana must race to break the spell and fulfill their dreams.', 'https://images-na.ssl-images-amazon.com/images/I/81Vp8un09cL._AC_SL1500_.jpg', 'animated'),
(41, 'Captain Underpants', 'George and Harold are two imaginative pranksters who make the depressing Jerome Horwitz School a better place. They hypnotize their nemesis, the mean-spirited principal Mr. Krupp. He transforms into the incredibly clueless yet kind-hearted and enthusiastic superhero named Captain Underpants. Even without the mean principal, they discover that having Captain Underpants comes at a steep price. Meanwhile, Professor Poopypants tries to eliminate laughter with the school snitch Melvin, and George and Harold discover that there may be more to Mr. Krupp than they had originally thought.', 'https://i.pinimg.com/originals/21/2a/11/212a11cf4a3c6e2b9e71a4d47ea18320.jpg', 'animáció'),
(42, 'Captain Underpants', 'sdf', 'https://i.pinimg.com/originals/21/2a/11/212a11cf4a3c6e2b9e71a4d47ea18320.jpg', 'animáció'),
(43, 'Captain Underpants', 'George and Harold are two imaginative pranksters who make the depressing Jerome Horwitz School a better place. They hypnotize their nemesis, the mean-spirited principal Mr. Krupp. He transforms into the incredibly clueless yet kind-hearted and enthusiastic superhero named Captain Underpants. Even without the mean principal, they discover that having Captain Underpants comes at a steep price. Meanwhile, Professor Poopypants tries to eliminate laughter with the school snitch Melvin, and George and Harold discover that there may be more to Mr. Krupp than they had originally thought.', 'https://i.pinimg.com/originals/21/2a/11/212a11cf4a3c6e2b9e71a4d47ea18320.jpg', 'animáció'),
(44, 'asd', 'asd', 'https://i.pinimg.com/originals/21/2a/11/212a11cf4a3c6e2b9e71a4d47ea18320.jpg', 'kaland'),
(45, 'Captain Underpants', 'George and Harold are two imaginative pranksters who make the depressing Jerome Horwitz School a better place. They hypnotize their nemesis, the mean-spirited principal Mr. Krupp. He transforms into the incredibly clueless yet kind-hearted and enthusiastic superhero named Captain Underpants. Even without the mean principal, they discover that having Captain Underpants comes at a steep price. Meanwhile, Professor Poopypants tries to eliminate laughter with the school snitch Melvin, and George and Harold discover that there may be more to Mr. Krupp than they had originally thought.', 'https://i.pinimg.com/originals/21/2a/11/212a11cf4a3c6e2b9e71a4d47ea18320.jpg', 'animáció'),
(46, 'Captain Underpants', 'George and Harold are two imaginative pranksters who make the depressing Jerome Horwitz School a better place. They hypnotize their nemesis, the mean-spirited principal Mr. Krupp. He transforms into the incredibly clueless yet kind-hearted and enthusiastic superhero named Captain Underpants. Even without the mean principal, they discover that having Captain Underpants comes at a steep price. Meanwhile, Professor Poopypants tries to eliminate laughter with the school snitch Melvin, and George and Harold discover that there may be more to Mr. Krupp than they had originally thought.', 'https://i.pinimg.com/originals/21/2a/11/212a11cf4a3c6e2b9e71a4d47ea18320.jpg', 'animáció'),
(47, 'Captain Underpants', 'George and Harold are two imaginative pranksters who make the depressing Jerome Horwitz School a better place. They hypnotize their nemesis, the mean-spirited principal Mr. Krupp. He transforms into the incredibly clueless yet kind-hearted and enthusiastic superhero named Captain Underpants. Even without the mean principal, they discover that having Captain Underpants comes at a steep price. Meanwhile, Professor Poopypants tries to eliminate laughter with the school snitch Melvin, and George and Harold discover that there may be more to Mr. Krupp than they had originally thought.', 'https://i.pinimg.com/originals/21/2a/11/212a11cf4a3c6e2b9e71a4d47ea18320.jpg', 'animáció'),
(48, 'Captain Underpants', 'George and Harold are two imaginative pranksters who make the depressing Jerome Horwitz School a better place. They hypnotize their nemesis, the mean-spirited principal Mr. Krupp. He transforms into the incredibly clueless yet kind-hearted and enthusiastic superhero named Captain Underpants. Even without the mean principal, they discover that having Captain Underpants comes at a steep price. Meanwhile, Professor Poopypants tries to eliminate laughter with the school snitch Melvin, and George and Harold discover that there may be more to Mr. Krupp than they had originally thought.', 'https://i.pinimg.com/originals/21/2a/11/212a11cf4a3c6e2b9e71a4d47ea18320.jpg', 'animáció');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersId` int(11) NOT NULL,
  `usersName` varchar(128) NOT NULL,
  `usersEmail` varchar(128) NOT NULL,
  `userUid` varchar(128) NOT NULL,
  `usersPwd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersId`, `usersName`, `usersEmail`, `userUid`, `usersPwd`) VALUES
(1, 'asdad', 'birovivien95@gmail.com', 'birovivien', '$2y$10$CgEUuWRm/SE26IWRI/G2ouR3yq0NWypEnEf57gdg0lsOTQLv8CVD2'),
(2, '123123', 'valami@gmail.com', 'asdfsdf', '$2y$10$BfQ0vB4eX6B2ehcj746Jv.5BbmMWbL1sqzSozBLxnwSqHs1yWGI/e'),
(3, 'something', 'someting@gmail.com', 'asdasd', '$2y$10$V7c4Xr6aTLG2jUanBeHHW.ij3KrK36bRsCtG59TBmvfrh4vtRlUwq'),
(4, 'valakivalaki', 'igen@gmail.com', 'igen', '$2y$10$ukBDtLobYt8gEu889aE4YueoMzVRUGgaBPcq0H4d.k/iAQEcgaRem'),
(5, 'Vivien Bíró', 'aaaa@aaa.hu', 'aaa', '$2y$10$6PGPTHnG8qqlszR5hRLF4edmaquTANYDARaDfTczS4.NeewONFSn6'),
(6, 'Vivien Bíró', 'asdasd@gmail.com', 'asdasdasd', '$2y$10$DTQ1q12/loHFKTyLghXihOkkUbnL8IZb7F667oiJnd3BNiuQu/qzW'),
(7, 'admin admin', 'admin@admin.hu', 'admin', '$2y$10$aeiSYHrzGz8W5A9z25wsq.xGRtu7Jx3eew.kBfojI6H.OYoqr9vFi'),
(10, 'nyenykó', 'nyenyi@nyeni.hu', 'nyenyimenyi', '$2y$10$4Q/dHqtMyidtcP7LvkaHTuIvEVJKcC2NxxBEkA5CKFggP0NFWiIri');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movieid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
