-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 03 Des 2025 pada 17.38
-- Versi server: 8.0.30
-- Versi PHP: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Basis data: `wiki_ml`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `heroes`
--

CREATE TABLE `heroes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `story` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `heroes`
--

INSERT INTO `heroes` (`id`, `name`, `slug`, `photo`, `story`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Alucard', 'alucard-jU3W4', 'heroes/dViCtonBqUkd02oplSbhntpJJO4NVTVG98Z0iBPb.jpg', '\n    Demon Hunter\n    \\\"The last great war is a glorious memory for the Moniyans. The powerful Light\'s Order, together with the Imperial Border Guards, wiped out the demonic strongholds at the Moniyan and Barren Lands pass, driving the fiends back to the hinterlands of the Forsaken Wastes. But for young Alucard, the war was nothing but a terrible memory of pain and misery. His father\'s second regiment suffered heavy losses due to a rash lone advance. Alucard\'s father disappeared in the battle, and was later declared dead by the Light\'s Order.\n\n    As they had disobeyed orders, the second regiment was not honored and praised for their sacrifice, but labeled \\\"\\\"disobedient\\\"\\\" and criticized for their lack of discipline. This was a huge blow to Alucard, who had always regarded his father as a hero and role model. Facing shame and ridicule everywhere he went, the flames of revenge burned within his chest, and he became determined to bring honor to his father\'s name and eliminate all the demons in the Land of Dawn. And so, he left his hometown and journeyed to the ancient and mysterious Monastery of Light. As the orphaned son of a dead soldier, Alucard was soon accepted into the Monastery of Light.\n\n    In the following years, Alucard studied a range of combat skills in the Monastery of Light. With his natural talent and undying determination, he soon became the most promising student among his peers. During his training, Tigreal, Commander of the Light\'s Order, who had once fought in the second regiment with his father, often visited Alucard in the Monastery of Light, teaching him various advanced combat skills and telling him of his father\'s heroic deeds.\n\n    Tigreal was already famous throughout the Empire at that time, and Alucard respected him greatly, regarding him as an elder brother of sorts. However, whenever he mentioned his father\'s final battle, Tigreal always fell silent, his eyes filled with a wave of complex emotions. Alucard was skeptical of the idea that his father had died in battle. He was convinced that his father was still alive and was waiting for him somewhere.\n\n    At the age of eighteen, Alucard finally completed all of his studies and formal preparations. Encouraged by Tigreal, he became the monastery\'s Arbiter of Light. He was ordered to go forth and eliminate the demons and heretics hidden throughout the world, and so he picked up his father\'s old sword, given to him by Tigreal, and set off. In his father\'s name, and fueled by his deep hatred of demons, Alucard soon became the greatest demon hunter in the world.\n\n    An unforeseen incident occurred during a demon hunting operation on the border of the Barren Lands. Alucard was injured by a magic blade, sustaining a wound that could not be healed. Darkness poured into his body from the wound, and his arm began to undergo a strange transformation... In order to prevent the mutation from spreading throughout his whole body, Alucard asked an old smith to help him forge a pair of gauntlets. This was no ordinary smith—he was a survivor of that fated battle, a member of the Light\'s Order who covered his allies\' retreat along with Alucard\'s father.\n\n    He recognized the huge sword in Alucard\'s hand. After learning who he was, the old man told Alucard that the reason the second regiment was forced so deep into enemy territory was that the high-level knights at that time were greedy for glory and too impulsive, which led to the second regiment finding itself trapped in a tight encirclement. In a moment of desperation, Alucard\'s father led some soldiers to cover the retreat of the main force headed by Tigreal, and was then swarmed by a tide of demons and disappeared. He was the only survivor, rescued by Alucard\'s father.\n\n    After learning the truth, Alucard returned to the capital and questioned Tigreal about the battle and why he hadn\'t told him what had really happened that day. Seeing the anger gripping Alucard, Tigreal confessed the guilt he felt for abandoning his allies and the silence he was forced to maintain at the behest of his family. He expressed his willingness to make up for it in any way he could, claiming that he would give his own life if he had to. However, before Tigreal, who was once like a brother to him, the young Alucard was entangled in a web of confusion. He couldn\'t bear to kill Tigreal, but he couldn\'t forgive him either.\n\n    For the sake of his father\'s honor, Alucard asked the Empire to reveal the truth of the second regiment and restore his father\'s name. However, the knights of that battle had become some of the most powerful figures in the Empire. They refused Alucard\'s request and drove him out of the capital. On top of this, the puritanical Monastery of Light was strongly against Alucard\'s unnatural right hand, repeatedly making trouble for him and even calling him a heretic. For the longest time, Alucard\'s deep hatred of the demons and his desire to regain his father\'s honor had spurred him on in his mission to serve as the Arbiter of Light. But now, faced with the Empire that had betrayed his father, and a church that treated him with scorn, Alucard made an unthinkable decision: To betray the Monastery of Light and fight for himself.\n\n    In the following years, Alucard began wandering the Land of Dawn, annihilating demons everywhere he went on his own terms and searching for clues as to his father\'s whereabouts. His demonic right hand not only brought him great strength, but also became an unstable element which he was forced to hide under his heavy armor every day.\n\n    After a string of epic battles, Alucard became known as one of the most legendary fighters in Moniyan. Soon, everyone knew that wherever demons ran rampant, the demon hunter with the dark right hand would no doubt descend from the sky and leave none alive.\\\"\n\n    ', 1, '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(2, 'Hayabusa', 'hayabusa-gGDWF', 'heroes/eXHBeAhi4rB3qdZPaEhPqCSTe27zF7NAm8StziO7.jpg', '\n    Shadow and Moon\n    As the second heir to the Shadow Sect of the Scarlet Shadow, Hayabusa had always looked up to his brother, a figure who he saw as the moon itself. To preserve the delicate balance of power between the Shadow and Scarlet Sects, Hayabusa willingly took his brother\'s place to be a political pawn and hostage, to be raised within the rival Scarlet Sect. Every day spent in the Scarlet Sect, Hayabusa lived by his brother\'s principles. He mastered his unique Shadow Shuriken technique and forged an unbreakable bond with Hanabi, a kunoichi of the Scarlet Sect. But when Hanzo\'s betrayal and his brother\'s disappearance shattered their hopes for peace, Hayabusa realized that the moonlight that had always guided him was gone. Yet, he gripped his blade firmly, determined to forge ahead through the shadows, following his brother\'s nindo.\n\n    When clouds obscure the moon,\n\n    Where shall shadows find their place?\n\n    As descendants of the Shadow Sect, Hayabusa and his brother underwent rigorous training from childhood. Even as a young boy, Hayabusa knew his brother\'s skills far surpassed his own. But what truly seemed beyond his reach was his brother\'s vision of nindo, the ninja way: integrating ninja tools with ninjutsu to end the hostility between ninja clans.\n\n    In Hayabusa\'s eyes, his brother shone as bright as the moon, illuminating not only himself but all of the Scarlet Shadow. Hayabusa only wished to be his shadow.\n\n    However, his brother wasn\'t the only genius in the Shadow Sect—there was another named Hanzo. Soon, the Scarlet Sect, the other half of the Scarlet Shadow, sent a warning to the Shadow Sect: the balance of power in the Scarlet Shadow must not be challenged. Hayabusa learned that the two sects would use their own bloodlines as pawns to keep each other in check, and either he or his brother would have to become that pawn.\n\n    On the rooftop, Hayabusa found his brother. Though no words were spoken, the moonlight bridged their hearts.\n\n    To Hayabusa, the world could survive without shadows, but without moonlight, the night would reign eternal...\n\n    Sitting beside his brother, Hayabusa removed his mask. A childlike smile broke through his stern countenance.\n\n    In his first years at the Scarlet Sect, Hayabusa, as a pawn, was met with contempt. He found companionship only in his own shadow. During training, he constantly worked to integrate ninja tools with his ninjutsu, creating his unique Shadow Shuriken technique. Gradually, more and more people came to challenge him. Hayabusa calmly accepted each challenge and silently departed after each victory. For him, winning or losing mattered less than fulfilling his brother\'s will—ending the hostility between the two sects.\n\n    Until one day, he met a girl whose convictions rivaled his own—Hanabi. As the successor of \\\"Scarlet,\\\" Hanabi always held her head high. She saw her victories as victories for the Scarlet Sect, and her fierce competitive spirit drove her to challenge Hayabusa again and again.\n\n    Hidden valleys, bamboo forests, rooftops... Every corner of the Scarlet Shadow bore witness to their battles. Every time Hayabusa won, Hanabi would ask,\\\"Why did I lose...\\\", but he would only shrug in return.\n\n    Hayabusa had long accepted that he possessed no extraordinary talent. In pursuit of his brother\'s nindo, he trained alone, until he finally understood that the relationship between ninja tools and ninjutsu was like that of scarlet and shadow—two sides of the same coin. They were inseparable. The Scarlet Sect and Shadow Sect surely knew this too, yet they chose to remain fixated on winning over each other.\n\n    But illusions will eventually shatter.\n\n    The genius ninja Hanzo broke into the forbidden grounds, stole the sealed weapon Ame no Habakiri, and fled. Hayabusa\'s brother, who had gone with him, vanished without a trace. Overnight, Hanzo became the Scarlet Shadow\'s greatest threat, and peace teetered on a blade\'s edge.\n\n    To capture Hanzo and retrieve the cursed weapon, both sects dispatched their best, and both Hayabusa and Hanabi were among them.\n\n    Before departing, Hayabusa received a secret order from his father: \\\"Reclaim the Ame no Habakiri for the Shadow Sect, and kill Hanzo and anyone else who stands in your way.\\\" Strangely, the order made no mention of his brother. Filled with doubt, Hayabusa tracked Hanzo\'s trail—he had to find him.\n\n    During his pursuit, Hayabusa discovered Hanabi lying on the ground, surrounded by ninjas from both sects writhing in agony. As Hayabusa tried to wake Hanabi, a malevolent aura struck at him. He gripped his blade tightly. Then, he saw a familiar yet strange figure—it was his brother, radiating with murderous intent.\n\n    He saw blood staining his brother\'s hands... He saw the light had vanished from his eyes...\n\n    No matter how Hayabusa called out, he was met only with increasingly violent attacks, each aimed to kill.\n\n    Never had Hayabusa imagined the moon could become so blood-red.\n\n    Darkness engulfed Hayabusa\'s heart. He lowered his blade as his brother rushed toward him.\n\n    \\\"Hayabusa, don\'t you dare lose to anyone but me!\\\"\n\n    Hanabi\'s voice echoed in his memory, like a flame igniting in his heart.\n\n    Deep within, Hayabusa saw the moonlight, and beneath it, Hanabi.\n\n    Hanabi\'s eyes burned as she looked at Hayabusa while gently twirling her Higanbana, \\\"I\'m going to surpass you.\\\"\n\n    In that instant, Hayabusa regained consciousness. With one hand, he formed a seal, activating Quad Shadow to send forth four shadows that restrained his opponent with lightning speed. He gripped his blade and struck without a moment of hesitation.\n\n    Hayabusa watched as the murderous aura gradually dissipated along with his brother\'s image, revealing Ame no Habakiri\'s true form, glaring with rage and laughing maniacally.\n\n    The cunning Ame no Habakiri had tried to use illusions to exploit the weakness in human hearts, only to encounter such resilience within. Breaking free from the illusion, Hayabusa was no longer bound by the darkness. Though he knew Ame no Habakiri was powerful, behind him stood Hanabi, Kagura, and the unknown fate of his brother. He had no choice but to stand up.\n\n    Even without the moon\'s guidance, a shadow must forge its own path.\n\n    \\\"Wherever I shall go, I do so without fear.\\\"\n\n    ', 1, '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(3, 'Khaleed', 'khaleed-Q3MCI', 'heroes/0zSlEWqsVxTMi91xyX9Ma6bgeOUbnWvYhhfrFCzM.jpg', '\n    Desert Scimitar\n    There was an ancient tribe that lived on the desert-like Agelta Drylands. They built villages along the Emerald Road and were able to pass down their civilization and legacy.\n\n    As the prince of Artha Clan, Khaleed loved adventures. He longed to experience the once glorious culture of the Emerald Road, dreaming that he could one day visit the vast Agelta Drylands and witness its prosperity. Ever since he was young, Khaleed would often take his squires with him on an adventure along the Emerald Road.\n\n    During their adventure, Khaleed met prince Moskov of the Wildsand Clan. The two equally brave young men shared the same passion for adventures, and quickly bonded with each other and developed a strong friendship. Together, they explored the entire Agelta Drylands.\n\n    However, the adventure of Khaleed and Moskov was a short one. It was not before long that a disaster befell their Clans. The savage Thornwolf Clan started a war and planned to conquer all Agelta Drylands like Tyrant Khufra once did. Faced with merciless enemies, Khaleed and Moskov decided to lead their people and fight against the invaders.\n\n    During the war, Khaleed showed a strong leadership and a great charisma. Every Clan recognized his capability and followed his lead. As time went by, the ambitious Moskov lost his spotlight and slowly became resentful. However, Khaleed did not notice his friend\'s feelings.\n\n    Khaleed and Moskov led the alliance of Clans and drove back their enemies. But it was at the moment when they were about to take control of this war, an accident happened. To turn the tide against their foe, the retreating Thornwolf Clan decided the would go to Ruins of Tivacan and break the seal of Khufra. They awakened the dormant Tyrant.\n\n    When Khufra came back to life, sandstorms raged across all Agelta. And then, the abhorrent sand monsters followed.\n\n    Faced with Khufra and the sand monsters, Khaleed was decisive. He ordered his allies to pull back and prepare for future conflicts. But the resentful Moskov took Khaleed’s decision as an act that lacked courage and responsibility. He challenged Khaleed in front of the crowd and blamed him for his cowardice. He asked the Clans to follow him and put an end to Khufra’s terror.\n\n    However, the leader of each Clan would only listen to Khaleed. No one answered Moskov\'s call. The humiliated Moskov grew even more resentful. Khaleed tried to stop him, but Moskov wouldn’t listen. He led his people into the desert, eager to prove his capability on the battlefield.\n\n    However, Moskov and his people were quickly surrounded and cornered by the formidable Khufra and the sand monsters. It was a massacre. Khaleed was faced with a dilemma. He had to choose. The friend who he had fought with for many years, or the life and future of all Clans?\n\n    But he couldn\'t have it both ways. Khaleed was left with no choice. After a careful consideration, he decided to retreat with the alliance of Clans. After they reached a safe place, Khaleed took up his scimitar and went back to rescue Moskov alone.\n\n    But he was too late. The Wildsand Clan was annihilated. Bodies scattered on the ground and Moskov was missing. Khaleed only managed to find his spear.\n\n    Followed by the Khufra’s resurrection, the Land of Dawn’s western part fell into chaos once again. Most lands were devoured by quicksand, and the evil sand monsters plagued this once peaceful ancient place. Now carrying the guilt of leaving Moskov behind, the determination of vengeance, and the expectation of his people, Khaleed led his warriors to numerous battles in the next few years. They struggled against Khufra and the army of Thornwolf Clan, turning the tide step by step.\n\n    In the last battle, Khaleed charged into a sandstorm, wielding Moskov’s spear, and pierced through the artifact that Khufra’s held in his hand: the Orb of Sand. The orb started to leak quicksands, most of which entered Khaleed’s body and gave him the ability to command sands.\n\n    The Orb of Sand was shattered, and the sandstorms that once darkened the blue sky were no more. The sand monsters were gone, and the wounded Khufra retreated back to Ruins of Tivacan. But so long as the Tyrant and his minions still lived, Khaleed would always have to carry the heavy responsibility. He prepared himself and his warriors for future battles against the malicious Khufra. He took a solemn vow that he would eventually restore peace to the ancient Agelta.\n\n    However, deep in the shadow, a familiar figure lurked and spied on Khaleed’s every move.\n\n    His old friend, Moskov, had returned.\n\n    ', 1, '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(4, 'Zhuxin', 'zhuxin-XIKYd', 'heroes/9kOVpUzKuBb3lFocwt3Q1SjkWvpmPNOFcIkhCGHo.jpg', '\n    Beacon of Spirits\n    The city of Zhu\'an, a dreamlike place where the supernatural can be found in every nook and cranny.\n\n    Divination rituals, dancing paper dolls, dream-inducing incense... there\'s no shortage of strange wonders, and no end to the tall tales that originate from this enchanted city. Among them, the most enigmatic is perhaps \\\"her\\\" story.\n\n    Legend has it that a mysterious young woman named Zhuxin can often be seen wandering the night in Zhu\'an with a lantern in hand. She possesses the ability to summon ember butterflies, which she uses as a medium to fulfill the deepest desires of mortals.\n\n    Zhuxin cared neither for wealth nor power, only the purest wishes held any value to her. It is said that anyone who accepts her help will be subject to her trials, which can range from wagering entire fortunes to walking the line between life and death. Some attempt to get in her good graces, while others curse her as a malevolent witch, but she has never minded what others think. When people say she is capricious, she\'s the first to nod in agreement. However, once a pact has been made and the butterflies begin to dance, neither heaven nor earth, life nor death can stop her from fulfilling a wish.\n\n    No one knew where she came from or what her purpose was, only that she was always searching for something. Her existence was as enigmatic as the night itself.\n\n    But Zhuxin did not always like the night.\n    A thousand years ago, Zhuxin was just an orphan wandering the streets of Zhu\'an. For her, the night only represented danger. In the darkness, the wickedness of human nature emerged to dance with the devil.\n\n    But Little Zhuxin loved the bright flames. Every year during the midsummer festivals, the townsfolk would light countless braziers all over the city. Their warm glow made the smiles of every passerby seem more radiant and welcoming, but Zhuxin always kept her distance. The elders say Zhuxin was born an orphan. According to the stories, she was found crawling out of the coffin after her parents had passed. She possessed such extreme Yin energy that the people regarded her as an ill omen. Little Zhuxin could only approach the warmth of the lingering embers after the crowds had gone home. On lucky nights, she could even find a flower pastry in the discarded leftovers.\n\n    And on those nights, under the glowing embers, Zhuxin held her pastry tightly in her little soot-covered hands and felt warmth in her heart.\n\n    But even these small comforts would not last. When the balance between Yin and Yang was shattered, war broke out across the Cadia Riverlands. Monsters emerged from the shadows and terrorized the continent. The entire city was engulfed by fear. People hid in their homes and no one dared go out to light the braziers. Little Zhuxin endured many freezing nights until she finally exhausted the last bit of her warmth.\n\n    Surrounded by darkness, she breathed her last breath.\n\n    But Zhuxin\'s Yin energy prevented her soul from dissipating. Was she still alive or had she become an apparition? What should she do? Where should she go? She tried to find answers, but couldn\'t escape the night no matter how much her little legs tried. It was a strange feeling; she no longer had to breathe, yet had never felt so suffocated. Whether in life or death, light or darkness, was there anyone who had an answer? Was there anyone who could light a flicker of hope?\n\n    A light pierced through the darkness.\n\n    Little Zhuxin opened her eyes as a pure light descended from the heavens—it was the Great Dragon, the guardian deity of the Cadia Riverlands and one of the twin dragons.\n\n    \\\"Are you here to drive me away?\\\"\n\n    The Great Dragon did not answer. Instead he manifested a flowerlike lantern which gently fell towards Zhuxin.\n\n    Just as it touched her hand, butterflies of ember flew out of the lantern and illuminated the night. Little Zhuxin suddenly found herself floating among the cosmos with the Great Dragon. In the sea of tranquil clouds, the lantern\'s candle lit up the sky, and they conversed in the clouds. The Great Dragon explained that Zhuxin could not pass into the afterlife because she had no wish. If one lives and dies without a wish, what meaning is there to life? But if one can pass on without regrets, then there would be naught to fear. Only by finding her wish could she embark on the next journey.\n\n    \\\"My wish? What could it be?\\\"\n\n    \\\"Child, I have given you this lantern to light the way, but your wish is something you must seek on your own.\\\"\n\n    \\\"Will I... be able to have something to wish for?\\\"\n\n    \\\"Naturally. Your existence is proof of that.\\\"\n    Zhuxin bid farewell to the dragon and departed with the lantern.\n\n    In the beginning, she wandered aimlessly, unsure of what she was even searching for. Eventually, she thought that if she still could not find her wish, perhaps she should fulfill the wishes of others first. Thus, she summoned her ember butterflies as her messengers, seeking, listening, and fulfilling countless wishes.\n\n    Night after night, Zhuxin listened to the hearts of strangers. Sometimes she fell for their schemes; other times she exposed their true intentions with schemes of her own. Until one day, by chance, she fulfilled a wish so sincere that it made her lantern bright enough to warm her heart; it was the same feeling from her childhood.\n\n    Zhuxin realized then that only these genuine wishes were worth seeking. However, mortals are complicated creatures, and their hearts are too easily led astray by wealth and power. So, she began to set various trials to test the worth of people\'s wishes. Even when her trials caused people to misunderstand her, fear her, and curse her, she never defended herself, for none of that was important.\n\n    What truly mattered was finding those forgotten wishes, buried in the ashes, and giving them a gentle blow to ignite their flames anew. When she helped a young man bring a flower to his blind sister, Zhuxin was able to experience the sweet fragrance of flowers for the first time. When Zhuxin helped a weeping soul who perished in a foreign land to deliver a letter to his wife, she understood that death could not separate true love. Each precious wish made her lantern burn brighter, and the world in her eyes became more vivid.\n\n    Although Zhuxin has yet to find her own wish, she understood now that it must be something bright enough to bring warmth to the long night; enough to make this journey worthwhile.\n\n    Her existence was undoubtedly worthy of such a wish.\n\n    ', 1, '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(5, 'Lancelot', 'lancelot-9nhx7', 'heroes/bIog94Gx2yqysf9AnpCzRolo4n6Hi4Y4E44jq1k1.jpg', '\n    Blade of Roses\n    In the west of the Moniyan Empire lay Castle Gorge that had fallen into decline due to the depletion of its famed gold mines.\n\n    As the oldest noble in the Empire, House Baroque ruled over Castle Gorge. The eldest son of Duke Baroque—Lancelot was a handsome young man with unmatchable sword skills. He\'d received an all-round good education but also inherited his father\'s snobbery and haughtiness.\n\n    House Baroque had been in decline for years, and the duke was relying on loans to keep up a facade. To revive his family, the duke came up with a brilliant plan—to choose a daughter-in-law with a handsome dowry and make a fortune out of Lancelot\'s marriage. Or so he thought...\n\n    Lancelot had been fascinated by the charming knights and their heroic tales since childhood and believed that he was the most brilliant and charismatic knight of the modern time—so to him, it would besmirch his honor had he made money off his own marriage. So, Lancelot left home after a ridiculous duel with his father led to by a serious falling-out.\n\n    Even though he\'d lost the financial support from his father, Lancelot made a living out of his excellent swordsmanship by attending contests across the country. He never lost a battle on the arena and would be uttering his family motto \\\"Thorns remain should petals fall\\\" while signing his initials onto his opponent\'s body with his sword.\n\n    Free of his father\'s control, Lancelot began fooling around with women, and stories of his romantic affairs spread throughout the empire. People jokingly called him the Blade of Roses. But Duke Baroque obviously didn\'t think of it as any delightful tale and was told to have crossed Lancelot\'s name from their family records in a fit of anger...\n\n    Lancelot played and traveled all the way to the Azure Lake, and after drinking his fill in a tavern, he held a harp, played and sang a song in praise of himself, secretly gloating over the cheer from the crowd. Then he suddenly noticed a few drunkards surrounding a young girl in a velvet mantle. Immediately he drew his sword to help the harassed maiden out of the situation but accidentally got hurt due to his inebriated mind.\n\n    After driving away the drunken hooligans, Lancelot stumbled out of the tavern knowing that his injury might be fatal, and he refused to collapse in a tavern so gracelessly.\n\n    Covered in blood, he dragged himself towards a tree and fell on the ground. Before he lost his consciousness, he saw a pair of glowing swan wings—maybe it was the angels coming to welcome his soul into heaven?\n\n    Lancelot woke up to find he was lying on a bed with bandages wrapped around his chest, an elegant young maiden smiling wearily at himself. The swan wings he saw before he fainted were actually the swan crown on the girl\'s head. Lancelot thought that he\'d never seen a face so beautiful and innocent, but he could barely speak before falling into a sound sleep again...\n\n    The girl treated Lancelot with great care and kept using magic to help him heal. After a few days of struggle, finally his life was no longer at risk. It was then that Lancelot learned he\'d been living inside the Swan Castle of House Alvin, and the girl that saved him was Princess Odette of the noble family.\n\n    It was forbidden to let any outsiders inside the Swan Castle, so Odette sneaked Lancelot in and hid him in a room atop the castle tower. As Lancelot gradually recovered from his injury, Odette would deliver food to him with a young maid every day.\n\n    At first, Lancelot thought with conceit that Odette saved him because she\'d been enamored by his charisma. But later he found out that she was the girl he helped at the tavern.\n\n    In the first few days they spent together, Lancelot didn\'t change his old habit of telling half-truths about his swordsmanship and the great adventures he\'d had across the land. He concealed his identity as a Baroque and called himself \\\"Lancelot, the romantic knight of Castle Gorge\\\" instead. Odette believed in every poem he sang while playing the harp—be it about his hometown Castle Gorge or the Celestial Palace he\'d never been to, the bandits and thieves he\'d defeated or the dark deities he\'d only heard of on his trips. This young princess who\'d been caged inside the Swan Castle since she was a child was full of curiosity towards the outside world.\n\n    Rather than being his usual conceited self, Lancelot started to feel guilty about lying. When he could no longer boast about his conquests before Odette, he realized he\'d fallen madly in love with the pure princess. He regretted the promiscuous lifestyle he\'d led before but found it difficult to reveal his feelings to Odette. So, whenever she came visiting, Lancelot would hold the harp and sing passionate love songs. First Odette didn\'t understand his intentions, and then became at a loss of how to respond. Later she just remained quiet with a blush on her cheeks...\n\n    In the few days before Lancelot fully recovered, Odette for some reason never showed up once. Not being able to see the object of his desire, Lancelot couldn\'t even stop his fingers from trembling while playing the harp...\n\n    The agitated Lancelot had to ask the maid that came to deliver food to him about what happened to Odette. The girl replied with a cheerful smile, \\\"Someone proposed to our princess. She\'d been busy with it...\\\"\n\n    The words struck him like thunder. At that very moment, Lancelot broke a string of the harp out of utter shock.\n\n    After mulling over the situation, he requested the maid to send a letter to Odette: Dear Princess, please forgive me for departing without a farewell.\n\n    I\'ve decided to travel to every mythical land as in the songs I\'ve sung.\n\n    I promise that the day I return to the Swan Castle, I will stand before you as a true knight.\n\n    Hopefully, with the azure lake and bright sunlight as my witness, I will finally be able to tell you what I\'ve been muttering to myself...\n\n    Just as Odette put down the letter and rushed to look out of the window, Lancelot had quietly left for a great journey across the land.\n\n    As brutal wars were waged throughout the Land of Dawn, the Blade of Roses was about to compose a song of praise that truly belonged to him...\n\n    ', 1, '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(6, 'Helcurt', 'helcurt-lEpsc', 'heroes/VFMQW4ys60NpVCYwpEgaSc5WrJL3sHC6B7ncMCST.jpg', '\n    Shadowbringer\n    In the historical records of the Land of Dawn, there was said to be a mysterious race who had sacrificed their souls to the ruler of the Abyss, in exchange for great power. Their bodies were transformed using dark magic, granting them the ability to swallow light and travel through space in the blink of an eye, allowing them to surprise their enemies with deadly sneak attacks. What was most terrifying about them, however, was the concoction of naturally toxic poison stingers emitted from their tails. For those unfortunate enough to come into contact with this poison would soon be saying their last words.\n\n    However, this is also what caused the ultimate demise of this race. In the annals, the specifics of how this race was wiped out are not made clear, but it is certain that this terrifying race, definitely walked upon the Land of Dawn. Since their extinction, humanity had progressed prosperously. However, the history books could not predict that one day these creatures would slowly creep out of the shadows once more, to bring much more chaos to the world.\n\n    Nobody has ever remembered seeing the race of the Shadow Bringers, because getting to see these creatures, would in turn result in their painful death. One of the most fiercest of attacks from the Shadow Bringers, was their assault on the Moonlit Forest, led by their leader, one of the most demonous creatures to grace the Land of Dawn, Helcurt.\n\n    Helcurt led his army into the depths of the forest and brought down, night and destruction into the tribe of Leonins, who lived there. Helcurt and the other Shadow Bringers mercilessly wiped out the entire village, leaving no one to survive, except a young and talented wizard, Harith, who was, so raged, to see his grandfather, the chief of the village, dead, that he tried to fight back the Shadow Bringers in vain. Not soon after, Harith would have died, if not for Alucard, who suddenly showed up. Fighting as many of them as he could, he managed to save Harith and escape the spot.\n\n    Helcurt tried to chase after them, but was unable to succeed. However, he believed that whatever came into his hands could not live any longer. So, he set out alone, deeper into the Land of Dawn, seeking for more kills and sacrifices. He was indeed, Death incarnate.\n\n    ', 1, '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(7, 'Franco', 'franco-JVcWI', 'heroes/QxCRpgo15I6jQsHFU0dqa6IPYD90tEhM2buoot7O.jpg', '\n    Frozen Warrior\n    The harsh natural environment of the distant and wintry Northern Vale shaped those who live there into a brave and martial people. They revered the strong, and took pride in their tall and rugged appearances. They believed that their robust physiques were inherited from their common ancestor ⁠— the Iceland Golem who once ruled these lands.\n\n    To the young Franco, however, this traditional way of thinking was nothing but oppressive. His tribe had lived on the coast of the Frozen Sea for generations, and relied on their large fleet of ships for trade and fishing to support their livelihoods. But the passing years did not make young Franco want to become a grown man. They only made him notice the strange way the others would look at him. Though his father was a harpooner famous throughout the coast, and his brothers were all tall and strong, Franco was small and unimpressive for a Northman. Some even said jokingly that, given Franco\'s stature, his ancestor was not the Iceland Golem, but the dwarves of legend.\n\n    To train strong warriors, the Norther Vale tribes on the coast of the Frozen Sea engaged in intensely competitive games from childhood, and received systematic combat training once they reached puberty, so that they would be ready to engage in long trading missions or fishing journeys upon reaching adulthood. To Franco\'s embarrassment, however, when the other boys had already started to wield battle axes, spears, and to rig sails, he could only handle much smaller weapons. In fact, the battle axes were even taller than he was.\n\n    Though small in stature, Franco had a great ambition ⁠— to become the Northern Vale\'s greatest warrior, and to have his name remembered in the book of heroes, to be adulated by future generations. To achieve this ambition, Franco trained relentlessly day after day, increasing his strength and martial prowess. Yet, no matter how hard Franco trained, he was looked down upon by the others for his short stature. Even his father and brothers believed that little Franco was only suited to be a merchant, and never a warrior or sailor who could take on the cruel environment and ferocious enemies.\n\n    Facing constant mockery and discrimination, Franco angrily decided to leave his tribe. He would prove to all of them that, even if he was little, he could still achieve his great things. Over the next few years, he hid away in the Northern Vale\'s endless mountains, surviving and training alone in that most extreme of environments. After many long years of fighting the bitter cold, terrible beasts, and ever-present threats, Franco developed a strength far exceeding an ordinary man\'s, as well as a firm and indomitable character.\n\n    Whilst Franco was training alone in the mountains, the cruel and power-hungry Captain Bane descended upon the Frozen Sea. Breaking the long-respected rules of the Northern Vale\'s pirates and fishermen, he began to invade and annex the territory of other pirates as well as commoners, ruling them with an iron fist. Those facing Bane\'s powerful fleet and fearsome firepower had only two options: submit, or be annihilated.\n\n    Bane\'s cruelty drew fierce resistance from various forces, the fiercest of all coming from Franco\'s tribe. As a warning to those who would defy him, Bane sent a massive armada of pirate ships to blockade the surrounding sea, and sent constant raids on Franco\'s tribe, declaring he would sink all their ships, and raze their harbor to the ground.\n\n    After ten years in the mountains, Franco returned to his tribe, full of confidence and strength. Descending upon the ferocious battle, he crushed Franco\'s henchmen with his anchor and god-like strength. Only after the battle did his oppressed tribesmen make a surprising discovery: that the hero who had come to save them was none other than the once-mocked little Franco. After learning of Bane\'s treacherous actions, Franco angrily swore to annihilate him and all his henchmen.\n\n    Franco then led his tribesmen and their ships in resistance against Bane\'s cruel rule. They equipped old fishing ships with battering rams and cannons, and attacked Bane\'s pirate fleets wherever they were found, dealing a heavy blow against Bane\'s forces. In desperation, Bane gathered an enormous fleet to suppress Franco\'s resistance, but both sides remained in a deadlock after several battles, with Bane unable to force an advantage. Once, Bane managed to lead Franco into a trap, but only managed to wound him, and Franco managed to escape with his life. Furthermore, more and more people of the Northern Vale, inspired by Franco\'s courage and strength, united around him to fight Bane.\n\n    Seeing Franco\'s strength grow steadily by the day, the cunning Captain Bane came up with a plan: he would sue for peace with Franco, suggesting that they search for the Twilight Orb of legend together, while secretly drawing the Moniyan Empire\'s navy to the Frozen Sea. This would allow him to kill two birds with one stone: find the Twilight Orb, and defeat Franco for good. Suspicious of Bane\'s sudden goodwill, Franco pretended to take the bait, ordering his men to search for the Twilight Orb, while secretly leading a contingent of warriors to seize control of a pirate ship among the Black Sharks fleet\n\n    Bane instigated a battle between the two navies, preparing to reap the benefits for himself in the aftermath. However, Franco, hidden within the Black Sharks, ordered his men to open fire from behind Bane, making a direct hit on the Behemoth. In his most exultant moment, Bane and his flagship received a deadly blow from the defiant lord, and sank to the bottom of the sea.\n\n    With Bane drowned, Franco became ruler of the entire coast of the Northern Vale. He led his people to drive out the remnants of Bane\'s forces, rebuild the harbor, and restart trade, bringing a renaissance to the entire Northern Vale.\n\n    Out of respect for Franco\'s glorious achievements, the people of the Northern Vale titled him the Frozen Warrior. But to Franco, all that he had done so far was still not worthy of such praise. Not long after, Franco learned that Bane not only had not perished, but had gained a new power, and was gathering his men to make his return.\n\n    The battle between them is only just beginning.\n\n    ', 1, '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(8, 'Melissa', 'melissa-FxOR3', 'heroes/HfkxUUpK6jvfOt6tsGyUkQtuuqsC5jNO4olEyHoZ.jpg', '\n    Cursed Needle\n    There used to be an inconspicuous little tailor shop on the busy streets of the Lumina City, capital of the Moniyan Empire. Its owner was an elegant woman always with a weary smile on her face, who had a clever, quirky daughter named Melissa.\n\n    They lived a hard life, but Melissa always wore a clean, pretty dress and shoes, the worn-out parts carefully patched up in adorable patterns. She was naughty, but she was also thoughtful and sensible. When she was in the shop, she\'d help her mother with the needlework and put aside the shredded cloths. When she was old enough and already had enough worldly experience, she never asked again about where her dad was.\n\n    Melissa always wished for a beautiful rag doll, but she never once mentioned it to her mother, because she knew that her mother couldn\'t even afford to go to the doctor\'s despite her illness.\n\n    Every time she passed by the doll shop, she\'d pop her head up to stare inside, and the aggravated shop owner had tried to scare her off a few times with empty threats. Then the young girl would make a face instead of panicking, so the shop owner that pretended to lose temper would give up first.\n\n    One day, after their shop closed, her mother magically produced a rag doll sewn together with shredded cloths from a pile of cloths. Melissa was beyond happy, smiling and jumping up and down holding the doll and her mom.\n\n    Her happy childhood fleeted away, and the little Melissa who used to run around the streets became a pretty young woman and was able to assist her mother. Watching the girl growing up, her mother always expected to see Melissa getting married in a gorgeous wedding dress she made for her, but, unfortunately, she left Melissa forever before she could fulfill her wish.\n\n    The little tailor shop was closed down, and the father Melissa had never met before suddenly showed up and took her away with him.\n\n    They went back to her father\'s house, and it was then she found out that her mother was a Paxley. Giving up the connection to the noble family, she eloped with her father for love, which abandoned her and left her an illegitimate daughter.\n\n    Later on, even though her father tried to make up for abandoning Melissa, he couldn\'t give her all the rights entitled to a legitimate child. When Melissa was introduced to her half-sister, a cultured and graceful young lady, she became filled with hatred toward Melissa. She thought Melissa had barged into her family, so she always bullied Melissa when their father wasn\'t home, and Melissa pretended not to care but remembered it all.\n\n    Every night, only the rug doll would accompany Melissa in her sleep, which gave her a feeling that her mother was still there with her inside the doll, so when she felt the urge to cry, she would hold the tears and hug the doll.\n\n    But her sister was also hostile toward the rug doll. One time, she deliberately tore it apart and falsely suggested Melissa throw away the broken doll that didn\'t please her eyes and accept one of her old dolls.\n\n    Though Melissa pretended that she agreed, there was no way that she would throw away her \\\"mom doll\\\". Afterward, every time she was bullied, she would often poke the doll, which had her sister\'s favorite bowknot sewn on it, as if it had been her sister herself.\n\n    One time, when she was taking her anger out on the doll, she accidentally found out that her actions seemed to have actually affected her sister! Her suspicion was confirmed after a few attempts, and an idea started to form in this little girl\'s mind...\n\n    It was soon her sister\'s coming-of-age ceremony, and important guests were gathered in their house, but as the illegitimate daughter who couldn\'t be seen by others, Melissa stayed in her room while her sister was showing her piano skills to everyone in the room. When her sister gracefully sat down on the stool as people clapped, Melissa was also prepared with a full grin on her face—she followed the rhythm of the piano song with one hand, and the other hand was ready to poke the \\\"sister doll\\\".\n\n    A melodious piano sound filled the room, and it soon reached the highlight of the song. It was when her sister confidently pressed the keys that Melissa poked the doll—she had rehearsed it to perfection when her sister was practicing the piano.\n\n    At that moment, the song started to go awry.\n\n    Her sister kept hitting the wrong notes, once, twice, and the guests began to whisper to each other as they listened to the off-key melody. Her sister\'s pale face gradually turned crimson, until she finally broke and smashed the piano while cussing at it, and the entire audience was dead silent...\n\n    When her sister and the maid who snitched rushed into Melissa\'s room, she had already changed into her old attire and sneaked out of the house with her little baggage and dolls.\n\n    Melissa escaped from her father\'s house and returned to wander on the familiar streets.\n\n    One night, she dreamt of Cuddles speaking to her in her mom\'s voice, telling her not to be afraid because she would always protect her. Overwhelmed and ecstatic, Melissa threw herself at her mom, only to wake up alone on a rainy night the moment she raised her hands. Suddenly, inexplicit magic energy burst out from her heart—her dark magic ability inherited from her mother had awakened, and a girl endowed with curse magic from nature was thus born.\n\n    After that night, Melissa decided to settle down and started a small tailor shop in the Lumina City, inside of which she recreated the layout of her mother\'s old shop, with various dolls hanging here and there. Sitting behind the counter, Melissa would always have her feet on the table and coldly stare at the bustling world outside with a sneer.\n\n    Despite having the appearance of a normal tailor shop, Melissa\'s Tailor guarantees that all client\'s problems would be taken care of—on condition that the picky shop owner wouldn\'t refuse to take requests from you.\n\n    At the mere age of 16, Melissa really manages to solve every problem of her clients. She always produces some unexpected ideas to deal with the targets: it is either swapping an overdue contract with a loan shark, or telling a homeless child to hold a groom who abandoned his old love and call him daddy at his wedding.\n\n    When those targets come to seek revenge on Melissa, she would grin and make them remember how it feels to be regretful with her cursed needles.\n\n    Not long after she opened the shop, even the nobles begin to talk about it—\\\"Have you heard of Melissa\'s Tailor?\\\"\n\n    \\\"I have. Is the owner really as good as they say?\\\"\n\n    \\\"Yeah, I\'ve got a tough job that needs some help with...\\\"\n\n    If you also find yourself in trouble in the Lumina City, just go to Melissa\'s Tailor and find its owner, Melissa...\n\n    ', 1, '2025-12-03 10:19:47', '2025-12-03 10:19:47');
INSERT INTO `heroes` (`id`, `name`, `slug`, `photo`, `story`, `user_id`, `created_at`, `updated_at`) VALUES
(9, 'Layla', 'layla-XARBC', 'heroes/FMdneEjnsEPSjPqr83F9PgffWA7yJj9oMiFK0VRq.png', '\n    Energy Gunner\n    \\\"Layla Grant, a prominent member of the Eruditio Rangers, bravely protected the core of Eruditio tech—the Starlium Reactor, during a vicious attack on Eruditio just a day earlier. While her actions protected civilization, they also proved that the youth of the city possessed resilience and perseverance and that the love and belonging for this home they shared was the life force flowing through the veins of Eruditians. Thus, the honorary title of \\\"Shining Star\\\" was given to her.\n    This year, the title of Shining Star was not awarded to a Scholar, but to a member of the Eruditio Rangers, and it was no other than the \\\"daughter of Eruditio\\\". She grew up in the streets of Eruditio, and every Scholar in the Spire of Knowledge had experienced her mischievous nature at some point or other. Somehow though, the occasional trouble she caused would miraculously help a Scholar breakthrough in their research. Other times, Layla would suddenly appear from nowhere trying to strike a deal on behalf of the traders with her funny accent when they find it difficult to converse with foreign visitors. Every porter at the docks has also enjoyed her assistance in one way or another. Like an ever-diligent watchman, she watches over the city like a shining star.\n    Meanwhile, Layla\'s only blood relative—the old but still strong as a bull former captain of the Eruditio Rangers, Thomas, had never shown signs of joy. Sitting in a backlit room, his silhouette was like the distant shadow of the lofty mountains. Stroking an old-fashioned gun, he looked imposing yet desolate.\n\n    Holding a crying baby in his arms, Thomas\' beloved daughter vanished behind the \\\"Infinite Gateway\\\" that turned into stardust in the sky, leaving him only this precious little thing. As if she knew what was going on, her cries echoed into the night sky endlessly. Hurriedly, he ran home with the infant in his arms as the morning star in the east gradually rose, because he didn\'t want the daylight to hurt her as the protection of the night was fading fast. He had lost a daughter for the dawn of mankind, and the one in his arms was all he had left.\n    He would swaddle the baby in the cloak of darkness in order to hide her, naming her Layla—the dark night.\n    Over time, she grew up and was such a delight to Thomas\' barren life. She loved both the sky and the earth, and her little life was always bursting with joyful energy. Because of this, Thomas\' face, which once marked by pain began to smile again. He picked up the equipment from his youth when he was still a young Ranger, and together with Layla, he leaped from the ground and flew across the skyline of Eruditio, becoming the biggest headache for the young Eruditio Rangers. What were these poor lads supposed to do, chase down and arrest the old man whose face is printed on the Ranger\'s rulebook? She was everything to Thomas—dawn, high noon, and dusk. But deep down, she still wanted to know where her parents had gone.\n    \\\"It\'s a tragedy that they had to die during the meteor crash. Hey, why don\'t you check out Grandpa\'s newly fine-tuned weapon for you? It\'s got three times the firepower of the previous one!\\\"\n    When Layla\'s ponytails reached her shoulders, she stopped asking him about her parents because she couldn\'t bear to see the sadness and evasiveness in her grandfather\'s eyes any longer. She soon realized that the grandfather who never left her side always left the house before dawn one day each year. So, Layla followed him quietly and discovered the answer to her question. He had gone to a cemetery to pay his respects to a woman named Lillian, a name Layla had seen in an old newspaper, and which had appeared in an official obituary of the Spire of Knowledge. She was a great Scholar who died for the advancement of Eruditio. Layla realized it was her mother, and that knowledge made her proud beyond measure, but she was also saddened by the thought that they could never be together. The tombstone next to Lillian had no name or photo but just a line—I\'ll hold your hands amidst the starry sky.\n\n    Layla understood that her grandfather wanted to erase all traces of her parents from her life so that she\'d never have to grieve. Though Layla understood, she still wanted to leave a little door in her heart for the woman named Lillian, so that if Lillian ever missed her, she could still visit her in her dreams. As for the mysterious man\'s tombstone, since she didn\'t have a single clue at all as to who he was, she hoped that he\'d one day walk through that little door with her mother and finally reveal his true identity.\n    In her heart, Layla vowed that she\'d remember her mother no matter what, and that she would protect Eruditio—the city which her mother had laid her life down for.\n    In her grandfather\'s eyes, Layla was on a very different path from her mother. She disliked studying and flunked every single test she sat for, but she was strong, and no scoundrel had ever walked away without learning a lesson. However, this was just great news to her grandfather, because that way, she\'d never end up a Scholar, sacrificing herself for the future of humanity. And most important of all, she\'d never share the same fate as... Lillian.\n    So when Thomas learned that Layla almost died protecting Eruditio, he went into the room that he had sealed for 15 years and sat in there for a long while. The entire life of Lillian played back in his mind. She was incredibly passionate, intelligent, and courageous, and she was also protecting Eruditio in her own way. She was the brightest star in the sky, and they were exactly the same.\n    \\\"Hey, Grandpa.\\\"\n    The girl\'s timid voice sounded in the doorway, and a sash was seen hanging across her body. It seemed that the treatment at the Spire of Knowledge had restored her body perfectly. However, Layla was filled with guilt as she knew the lengths her grandfather would go through for her even for just a little scratch. So, this time, since she had been severely injured while protecting Eruditio, she expected her grandfather to get really angry...\n\n    But he just held her tightly to him, his entire body trembling violently.\n    \\\"Your mother would be so proud of you.\\\"\n    Thomas handed Layla the gun he had locked away in the cabinet—a prototype gun left by Lillian. For 15 years, he could not bear to see any trace of Lillian, but he forgot that the most beloved girl in front of him was the most beautiful and deepest trace Lillian had left him with.\n    \\\"If you want to protect Eruditio, then you\'ll need to be equipped with the strongest firepower. This is a prototype gun... that your mother and father made. So, hold it tight and protect yourself with it!\\\"\n    With the malefic gun in Layla\'s hands, no evil stands a chance in front of her, as if the stars would always guide her. Whenever Layla is holding her gun, she felt that Lillian is just beside her. Even that nameless man, too, is there for her.\n\n    ', 1, '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(10, 'Saber', 'saber-u8JLn', 'heroes/vRNU0dL8IEwsbOsXcggoq73ABxWjsChqEXxSMPhq.jpg', '\n    Wandering Sword\n    \\\"Deep in the northern mountains of the Cadia Riverlands lies a quiet and peaceful village. This village is home to the legendary Tianyin Swordmaster Sect, and is also the place where Duan Meng spent his childhood perfecting his technique.\n\n    As soon as he was old enough to pick up a bamboo sword, Duan Meng was determined to become a great swordmaster. While everyone else was still sleeping, he would already be practicing hard, and would continue until the sun set and the moon was clear and bright.\n\n    He knew that the requirements for entering the Tianyin Swordmaster Sect were high, and so, after countless days and nights of training in the wind, rain, and snow, the gates of the sacred temple finally opened to Duan Meng. Soon, his extraordinary talent and obsession with swordsmanship attracted the attention of the leader, Master Longma, who was once a disciple of the Great Dragon and the spiritual leader of the Tianyin Swordmaster Sect. Under the guidance of Master Longma, Duan Meng soon exceled among his peers and became the leader of the new generation of students.\n\n    Over time, Duan Meng grew tired of the stoic life of personal cultivation in the mountains. His obsession with swordsmanship and his innate ambition made him eager to challenge stronger enemies so that he could create his own legend and spread it throughout the world like the legendary swordsmen that inspired his personal journey. However, Master Longma denied his request to descend the mountain.\n\n    \\\"\\\"It is not time yet. You have not yet become a truly invincible swordsman.\\\"\\\" The young and vivacious Duan Meng refused to go along with his master\'s point of view. He was confident enough in his own ability and hoped to improve his swordsmanship through constant combat alone.\n\n    In the following years, Duan Meng traveled all over the Cadia Riverlands, defeating one swordsman after another, including the adherents of the Dragon Altar. He kept climbing toward the title of \\\"\\\"The Best Swordsman\\\"\\\" without a single defeat.\n\n    This was until Duan Meng ran into a man who would become his ultimate rival, Zhixu. This man came from nowhere and had no teacher. His life was like that of a sword, perfectly formed and complete within itself.\n\n    In their battle, Duan Meng was defeated, utterly unable to even fight back. In order to one day defeat Zhixu, Duan Meng isolated himself in the mountains and threw himself into a painstaking training regimen for three long years.\n\n    At the end of these three years, Duan Meng felt ready to fight Zhixu again, and emerged from the mountains. But as fate would have it, his opponent had made even greater progress in these three years. He was defeated again, and his sword was even slashed in half by his opponent.\n\n    Duan Meng\'s repeated failure reminded him of his master\'s words: \\\"\\\"It is not time yet. You have not yet become a truly invincible swordsman.\\\"\\\" However, Duan Meng knew that he had already done everything he could, and there was no way for the sword in his hand to become any faster or stronger.\n\n    In order to seek out a truly invincible swordsmanship style, Duan Meng left the confines of the Cadia Riverlands and journeyed throughout the Land of Dawn. During his travels, he overheard rumors regarding Laboratory 1718 - that they could stimulate the potential of the human body through artificial transformation, granting one more power. Duan Meng could not resist inquiring further. If this rumor were true, he might still stand a chance of reaching the very peak of swordsmanship. As long as he could become stronger, he was willing to do anything.\n\n    At this time, the evil scientists of Laboratory 1718 were also interested in this swordsman from the East. They were preparing a new augmentation project to create a human weapon. As soon as the two parties came to an agreement, an unprecedented transformation began.\n\n    After numerous experiments and operations, the project was finally successful, and a being with mechanical strength and human sword skills and sentience was born. But after waking up, Duan Meng had forgotten everything about himself, including his own name. He was then given a new code name by his creator: Saber. The sword of Laboratory 1718, Saber became a tool used for hunting down those stood against them.\n\n    Of course, this was all part of Laboratory 1718\'s plan. They intended on luring just the right person to help complete their human weapon plan. Once the transformation had been completed, Duan Meng, who once dreamt of reaching the very height of swordsmanship, no longer existed. Instead, the ruthless mechanical killer, Saber, was born.\n\n    Though his creators were convinced they had achieved great success, as time went by, the familiar moves, the feeling of holding his sword in his hands, kill after kill, day after day—something began to stir within Saber. As a warrior, he could not accept being reduced to the status of a mere killing machine, and could feel the memories buried deep in his mind fighting to be remembered once more. He began to question his own past and the meaning of his existence.\n\n    Late one night, tormented by shards of his memories, Saber severed the neural control implant in his head, destroyed the humanoid weapon project laboratory, and embarked on the long and lonely road of exile.\n\n    In the years that followed, Laboratory 1718 never gave up their pursuit of what they saw as a failed product. Through the constant fighting and wandering that followed, Saber was determined to rediscover his name and origin. The fragments of his memory constantly bubbled to the surface, guiding him to slowly find his past. There was one thing he was certain of - he knew he had not yet become a truly invincible swordsman, and that he still had a destined opponent awaiting his next challenge.\\\"\n\n    ', 1, '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(11, 'Lesley', 'lesley-jAZch', 'heroes/I9vZm0vY8VHQfxktLI0Wcv7b8NNQ5CvH0C9SuSYM.jpg', '\n    Deadly Sniper\n    Lesley grew up in the Vance household, where her father presided over the noble family\'s security. During an unexpected attack by a rival family, Lesley\'s father was killed. As the assailants approached the Vance household, Lesley took up her father\'s black long rifle and fulfilled her late father\'s mission. Tears rolled down Lesley\'s cheeks as she fired shot after shot, surprisingly, each one taking down an assassin. The final tear came as the final shot took down the last of the rival family\'s men.\n\n    Lesley was adopted by the Vance family, with the patriarch of the noble house even putting their sole heir, Harley under her tutelage. Harley, was a natural troublemaker, who used his talents in magic to unintentionally cause trouble for the Vance household. Only Lesley could keep Harley under control. Harley\'s troublemaking streak was the last part of warmth within Lesley\'s conscience.\n\n    After hearing about how Harley had travelled to the dangerous Land of Dawn after defeating the Boss of Dark Magic, Lesley followed him, along with her trusty heirloom rifle. After she found Harley through a long arduous journey, she discovered that the once immature young boy [has] changed through the numerous life experiences he had gone through. She decided it would be best to have her adopted little brother train, alone, while she would silently protect him from within the shadows. From that day on, all the monsters that were inflicted with Harley\'s magic would also be struck with a black bullet, that would impeccably pierce through their heart. The stories of the magical youngster who was followed by a mysterious black sniper, soon spread across the Land of Dawn, like wild fire.\n\n    ', 1, '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(12, 'Ling', 'ling-obGQ8', 'heroes/uJA6icdocfPShkT49s6LPEkotcGgwiZ1amVlBQsP.jpg', '\n    Cyan Finch\n    At the top of the mountains enshrouded by clouds, lies the entrance to the Hidden Land of the Dragon – the “Sky Arch”. Beside the Sky Arch stood many assassins in black. The cyan embroidery etched on their clothes identified them to being part of the most mysterious assassin faction of the Cadia Riverlands, the “Finch”. Legends say, it’s impossible to escape from claws of the “Finch”.\n\n    After a while, a man landed beside the Sky Arch. With his lithe footwork, he didn’t create any ripples on the lake of clouds. This man was the Finch’s best assassin known as the “Cyan Finch”. Without hesitation, he swung his Defiant Sword, generating great energy and opening the Sky Arch. The assassins behind him dashed across the arch and entered the Hidden Land of the Dragon. As a perfect assassin, Cyan Finch couldn’t tolerate failure. This time was the same. However, the Hidden Land had many occult traps and enchantments to resist invaders, which made the assassins to lose their wings and fall from the sky. Even so, those traps could not stop Cyan Finch at all. His light feet glided over the perils and past into the Hidden Land.\n\n    Cyan Finch quickly got to the core of the Hidden Land – the Great Dragon Palace. All the guards were attracted by the turmoil on the Sky Arch, and hence left the Palace undefended. He overlooked this palace from high point, recalling the time when he was called “Ling”, when he was betrayed. At that time, Ling and Zilong dwelled in the Hidden Land, receiving the Great Dragon’s training. To become the successor of the Great Dragon was their common goal. However, though the talent Ling defeated Zilong in the final contest, the Great Dragon still chosen Zilong as his successor and his foster son.\n\n    Ling left the Hidden Land in disgrace and an unsettled heart. Consumed with hatred and the need for power, he fanatically trained himself. His efforts paid off several years later and he became the best assassin and to be later known as Cyan Finch. His enemies even would tremble at hearing his name. Well-known as he was, he still was not satisfied. He needed something to fulfill the void in his heart. One day, he encountered the Black Dragon, a traitor who was banished from the Hidden Land. He proposed a scheme to take revenge on the Hidden Land and Cyan Finch accepted the offer as they both had faced a similar deceit.\n\n    Ling looked at the Great Dragon sitting in the Palace ominously, and in an instant, he appeared in the center of the Palace. The Great Dragon stared at his once apprentice, shaking his head and sighing. Ling didn’t do anything as he was waiting for his true opponent to come. With a silver flicker, Zilong appeared in the way between Ling and the Great Dragon with his Dragon Spear in hand. This was the moment Ling, now as the Cyan Finch, was waiting for – the moment to settle the score and to prove the Great Dragon wrong. The time the Defiant Sword and the Dragon Spear clashed and a great wave of energy filled the Palace. They fought for hundreds of rounds, from inside to outside. However, they couldn’t best each other.\n\n    Ling found that Zilong was not the weak foe he once defeated. Frustrated with this, Ling mustered all his power to cast his deadliest skill - “Tempest of Blades”. Its great energy shook the entire Hidden Land. Zilong held his ground in the center of the Sword Field without fear. Zilong wielded his Dragon Spear and pursued Ling’s sword like an unyielding dragon. Zilong, powerful as he was, was no match for Ling’s speed and finesse as he found his adversary’s sword pointing at his eye. However, Ling’s hand trembled and hesitated on seeing that Zilong withdrew his spear before it was about to hit him.\n\n    The memory of training together and encouraging each other filled Ling’s heart. Also, Zilong trusted that their friendship could overcome their conflict. All this made Ling withdraw his sword. He realized that what made him confuse was not the choice made by the Great Dragon, but rather it was the reason why Zilong allowed himself to be defeated. Zilong chose to trust the one who had missing for years and dropped his guard. Just like that decisive battle, Zilong chose to be defeated by him in order to help Ling achieve his dream. Ling knew in his heart that this was the last chance to fight fairly with Zilong.\n\n    Zilong knew that Ling’s confusion had been resolved and Ling could now fly through the sky like a real Cyan Finch. However, Zilong also knew that Ling’s raid indicated the coming of the true crisis - The Black Dragon was coming.\n\n    ', 1, '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(13, 'Gusion', 'gusion-mUUzw', 'heroes/8UaXGOzdnKPSUdIq8ymF6Sz8rugDiyhAHFSe2QrR.jpg', '\n    Holy Blade\n    House Paxley ruled over Castle Aberleen in the south of Moniyan. Generations of the house had guarded these areas for the Moniyan Empire, defending against the invasion of the Abyss.\n\n    Around a thousand years ago, House Paxley was granted the dukedom during the rule of the legendary mage Valentina.\n\n    Many horrifying stories were told across the Moniyan Empire about House Paxley\'s use of forbidden dark magic, and so people would shy away from any Paxley they met.\n\n    But Gusion Paxley was an exception.\n\n    He was naturally good with blades and daggers, and before he could speak, he had been able to accurately hit his nanny in the forehead with a toy dagger to get back at her for disciplining him. And when he started to read and write, the quill pen dipped in ink would always fly toward the back of his personal tutor\'s head as if it had eyes.\n\n    His unruly behaviors continued until his eldest brother Aamon took over the dukedom—the young Gusion was showing off his dagger skills at the party when he accidentally missed his target, the dagger instead leaving a deep cut on Aamon\'s face.\n\n    Aamon didn\'t blame his reckless younger brother, but the word soon spread across the Moniyan Empire that the fourth child in House Paxley was a blade wielder—for the Paxley family that had been famed for their magic skills, only lower-class citizens who didn\'t know magic would fight with daggers and swords.\n\n    The Paxley elders who actually controlled the family soon ordered that Gusion must stop playing with daggers and focus on practicing magic. And Gusion did in fact inherit the family\'s talent in magic, he had a strong affinity for the element of light and quickly awakened his potential while learning magic. But he abhorred memorizing tedious spells and writing complicated scrolls. When the other students were researching magic indoors all day, Gusion was powering himself up with sunlight so that he\'d run faster than a leopard, or using the candlelight to move dinner knives and cut a whole table\'s dishes into pieces.\n\n    Gusion was the only upper-class student who would talk with servants in their family academy, and he was a naughty but likable kid, so the maids would always cover for his nonstop violation of the rules; even when he was kept in solitary confinement, the guards would pretend they didn\'t see the desserts that the male servants snuck under the door...\n\n    Finally, those exasperated elders asked the young Aamon to discipline his hopeless brother. Gusion hoped that his brother would be on his side, but Aamon instead started lecturing him as the leader of the family.\n\n    Gusion was disappointed and completely ignored his brother\'s lecturing, while deep down feeling sorry for the big brother that used to be close to him—Aamon in front of him was clearly one of the elders, only younger...\n\n    And during their dinner together, Aamon persuaded Gusion to follow the family traditions and accept magic training, as Valentina, the first duchess of their family, was a great mage herself. Aamon also told Gusion that he could become an assassin like him, turning magic into sharp blades.\n\n    Gusion felt strongly reluctant and asked instead: \\\"Can\'t a Paxley become an assassin that fights with blades?\\\"\n\n    Aamon had no better choice but to say: \\\"As a nobleman, you will have to hide what you really like sometimes...\\\"\n\n    Gusion looked at his brother and spoke no further.\n\n    A few years later, on his coming-of-age ceremony—a family fighting contest, the 18-year-old Gusion appeared on the arena in a unique style: he used bizarre, fancy moves to dodge the projectiles shot by the other young mages, while his swift and mysterious dagger accurately hit his opponents before they could even cast their spells. The elders of House Paxley were amazed—Gusion was an unconventional blade wielder, but he was indeed using magic powers to control the dagger...\n\n    The other young mages lost to Gusion began to accuse him of \\\"cheating\\\", but he instead provoked them further, claiming that those who felt unfair could challenge him together, as he was able to defeat ten pretentious Paxley mages!\n\n    The provoked contestants swarmed toward him, when Gusion suddenly used a move that no one had seen before—he swung his arm and sent daggers flying toward the fan-shaped area in front, hitting all the enemies charging at him. Then he jumped on the spectator stand, before throwing a dagger at the statue of the House Paxley ancestor Valentina and hitting it on the forehead to provoke the others!\n\n    \\\"This is what you want—it\'s just like the motto of House Paxley: Fear over love.\\\"\n\n    After Gusion shouted out the angry words, the exasperated elders began chanting spells, trying to punish the rebel in House Paxley with magic. Aamon, who had remained silent, then stood out and announced loudly: Gusion was to be expelled from the family for seriously violating their rules!\n\n    Now that Aamon expelled his brother, the elders that were prepared to kill Gusion had to stop their dark magic spells, watching as Gusion strode out of the arena without sparing them a glance.\n\n    What would his future be like? Gusion had never thought about it. He felt a heavy weight off his shoulders, confident that with his abilities he would one day make his name across the Land of Dawn.\n\n    Aamon thought to himself as he watched Gusion walk away: \\\"What I can do is to give back your freedom...\\\"\n\n    ', 1, '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(14, 'Hanzo', 'hanzo-pEcx3', 'heroes/w0xGlrit90e5bJIauPj8LDYD2m5RA8F2Gm9qnUrv.jpg', '\n    Akuma Ninja\n    Long ago, the House of Akakage was hailed as the Gods of Ninja Arts. For generations, the Akakages researched and taught advanced ninjutsu. In order to achieve the pinnacle of ninja arts, the Akakages used forbidden ninjutsu to rid their hearts of evil, anger, and greed by condensing them into a demon called, Hanekage. No one expected that Hanekage would have consciousness despite lurking within their bodies.\n\n    When the legendary One Hundred Ghosts attacked the House of Akakage, the demon within them merged the ghosts to become a single entity. Thus began a bloody feud between the Akakage and the powerful demon. Hanekage. At a grave cost, the Akakage used the ninjutsu, Blood Shadow, to temporarily seal the demon. In order to permanently seal Hanekage, the Akakages used their sacred tools to create a legendary sword, known as Ame no Habakiri. Not long after, the forefathers of the Akakage perished from the world. Their grieving disciples hid Ame no Habakiri in an unknown place that the only members of the Akakage family could reach. Little did the Akakage know, the cunning Goddess of Death, Izanami, observed these events and secretly inserted a part of her soul in one of their progeny to one day resurrect Hanekage.\n\n    After many generations, the House of Akakage was divided into the Crimson and Shadow factions. The Shadow Faction gave birth to the strongest Akakage the clan has ever seen — Hanzo. As one would expect, Hanzo became the head of the Shadow Faction.\n\n    However, one day, Hanzo\'s team discovered his secret. All this time, Hanzo secretly fused Hanekage\'s power with his own body, feeding the demon with blood of his enemies. When confronted by the Akakage\'s Crimson Faction, Hanzo killed them all in cold blood. Absorbing the blood of such powerful people, Hanekage regained consciousness once again.\n\n    Hanekage told Hanzo that his noble clan hid the powerful Ame no Habakiri, as well as sacred ninjutsu, in a secret location only the Akakage could reach. The power-hungry Hanzo abused his blood right to acquire the forbidden ninjutsu and the fabled sword, Ame no Habakiri. The remaining members of the Akakage furiously chased after the clan\'s traitor\n\n    Emboldened by the power of the Hanekage, Hanzo used his own clan\'s sword against them and tore the powerful energy from their flesh. Desperate, the two Akakage factions came together once again to take on Hanzo as one. Heavily wounded, the final members of the noble House of Akakage could only watch Hanzo escape.\n\n    Hanzo secretly takes refuge recovers from his injuries. Night and day, Hanzo practiced the Akakage\'s forbidden ninjutsu with Ame no Habakiri. After a decade, Hanzo could not achieve the pinnacle of ninjutsu like his forefathers. Hanekage consumed the flesh and blood of fallen ninjas and transformed into a magical armor for Hanzo. Hanekage struck a deal with Hanzo. In exchange for feeding Hanekage more blood, the powerful demon will help Hanzo reach the pinnacle of ninjutsu. Possessing the ability to reach the pinnacle of ninjutsu and the Ame no Habakiri, Hanzo brought blood bathe to the world.\n\n    ', 1, '2025-12-03 10:19:47', '2025-12-03 10:19:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hero_item`
--

CREATE TABLE `hero_item` (
  `hero_id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hero_item`
--

INSERT INTO `hero_item` (`hero_id`, `item_id`) VALUES
(1, 1),
(1, 2),
(1, 7),
(1, 11),
(1, 27),
(1, 52),
(2, 2),
(2, 3),
(2, 7),
(2, 10),
(2, 11),
(2, 48),
(3, 18),
(3, 19),
(3, 23),
(3, 26),
(3, 29),
(3, 51),
(4, 34),
(4, 35),
(4, 38),
(4, 40),
(4, 41),
(4, 46),
(5, 2),
(5, 3),
(5, 7),
(5, 11),
(5, 12),
(5, 49),
(6, 1),
(6, 2),
(6, 3),
(6, 5),
(6, 10),
(6, 49),
(7, 18),
(7, 19),
(7, 23),
(7, 26),
(7, 29),
(7, 49),
(8, 2),
(8, 6),
(8, 8),
(8, 10),
(8, 17),
(8, 52),
(9, 1),
(9, 2),
(9, 3),
(9, 7),
(9, 8),
(9, 10),
(10, 2),
(10, 3),
(10, 5),
(10, 6),
(10, 10),
(10, 52),
(11, 1),
(11, 2),
(11, 6),
(11, 7),
(11, 10),
(11, 50),
(12, 2),
(12, 3),
(12, 4),
(12, 5),
(12, 25),
(12, 52),
(13, 33),
(13, 35),
(13, 37),
(13, 38),
(13, 39),
(13, 46),
(14, 2),
(14, 4),
(14, 7),
(14, 10),
(14, 11),
(14, 49);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hero_position`
--

CREATE TABLE `hero_position` (
  `hero_id` bigint UNSIGNED NOT NULL,
  `position_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hero_position`
--

INSERT INTO `hero_position` (`hero_id`, `position_id`) VALUES
(1, 4),
(1, 5),
(2, 5),
(3, 1),
(3, 4),
(4, 2),
(5, 5),
(6, 1),
(6, 5),
(7, 1),
(8, 3),
(9, 3),
(10, 1),
(10, 5),
(11, 3),
(12, 5),
(13, 2),
(13, 5),
(14, 1),
(14, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hero_role`
--

CREATE TABLE `hero_role` (
  `hero_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hero_role`
--

INSERT INTO `hero_role` (`hero_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(2, 3),
(3, 1),
(3, 2),
(3, 6),
(4, 4),
(5, 3),
(6, 3),
(6, 6),
(7, 1),
(7, 6),
(8, 5),
(9, 5),
(10, 3),
(10, 6),
(11, 5),
(12, 3),
(13, 3),
(13, 4),
(14, 3),
(14, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `items`
--

CREATE TABLE `items` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` enum('attack','magic','defense','movement','jungling','roaming') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `items`
--

INSERT INTO `items` (`id`, `name`, `category`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Berserker\'s Fury', 'attack', 'images/items/attack/berserker\'s-fury.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(2, 'Blade of Despair', 'attack', 'images/items/attack/blade-of-the-despair.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(3, 'Blade of the Heptaseas', 'attack', 'images/items/attack/blade-of-the-heptaseas.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(4, 'Bloodlust Axe', 'attack', 'images/items/attack/bloodlust-axe.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(5, 'Corrosion Scythe', 'attack', 'images/items/attack/corrosion-scythe.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(6, 'Demon Hunter Sword', 'attack', 'images/items/attack/demon-hunter-sword.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(7, 'Endless Battle', 'attack', 'images/items/attack/endless-battle.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(8, 'Golden Staff', 'attack', 'images/items/attack/golden-staff.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(9, 'Haas\'s Claws', 'attack', 'images/items/attack/haas\'s-claws.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(10, 'Hunter Strike', 'attack', 'images/items/attack/hunter-strike.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(11, 'Malefic Roar', 'attack', 'images/items/attack/malefic-roar.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(12, 'Rose Gold Meteor', 'attack', 'images/items/attack/rose-gold-meteor.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(13, 'Scarlet Phantom', 'attack', 'images/items/attack/scarlet-phantom.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(14, 'Sea Halberd', 'attack', 'images/items/attack/sea-halberd.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(15, 'War Axe', 'attack', 'images/items/attack/war-axe.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(16, 'Wind of Nature', 'attack', 'images/items/attack/wind-of-nature.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(17, 'Windtalker', 'attack', 'images/items/attack/windtalker.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(18, 'Antique Cuirass', 'defense', 'images/items/defense/antique-cuirass.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(19, 'Athena\'s Shield', 'defense', 'images/items/defense/athena\'s-shield.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(20, 'Blade Armor', 'defense', 'images/items/defense/blade-armor.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(21, 'Brute Force Breastplate', 'defense', 'images/items/defense/brute-force-breastplate.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(22, 'Cursed Helmet', 'defense', 'images/items/defense/cursed-helmet.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(23, 'Dominance Ice', 'defense', 'images/items/defense/dominance-ice.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(24, 'Guardian Helmet', 'defense', 'images/items/defense/guardian-helmet.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(25, 'Immortality', 'defense', 'images/items/defense/immortality.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(26, 'Oracle', 'defense', 'images/items/defense/oracle.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(27, 'Queen\'s Wings', 'defense', 'images/items/defense/queen\'s-wings.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(28, 'Radiant Armor', 'defense', 'images/items/defense/radiant-armor.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(29, 'Thunder Belt', 'defense', 'images/items/defense/thunder-belt.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(30, 'Twilight Armor', 'defense', 'images/items/defense/twilight-armor.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(31, 'Blood Wings', 'magic', 'images/items/magic/blood-wings.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(32, 'Calamity Reaper', 'magic', 'images/items/magic/calamity-reaper.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(33, 'Clock of Destiny', 'magic', 'images/items/magic/clock-of-destiny.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(34, 'Concentrated Energy', 'magic', 'images/items/magic/concentrated-energy.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(35, 'Divine Glaive', 'magic', 'images/items/magic/divine-glaive.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(36, 'Enchanted Talisman', 'magic', 'images/items/magic/enchanted-talisman.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(37, 'Feather of Heaven', 'magic', 'images/items/magic/feather-of-heaven.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(38, 'Fleeting Time', 'magic', 'images/items/magic/fleeting-time.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(39, 'Genius Wand', 'magic', 'images/items/magic/genius-wand.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(40, 'Glowing Wand', 'magic', 'images/items/magic/glowing-wand.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(41, 'Holy Crystal', 'magic', 'images/items/magic/holy-crystal.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(42, 'Ice Queen Wand', 'magic', 'images/items/magic/ice-queen-wand.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(43, 'Lightning Truncheon', 'magic', 'images/items/magic/lightning-truncheon.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(44, 'Necklace of Durance', 'magic', 'images/items/magic/necklace-of-durance.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(45, 'Winter Truncheon', 'magic', 'images/items/magic/winter-truncheon.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(46, 'Arcane Boots', 'movement', 'images/items/movement/arcane-boots.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(47, 'Demon Shoes', 'movement', 'images/items/movement/demon-shoes.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(48, 'Magic Shoes', 'movement', 'images/items/movement/magic-shoes.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(49, 'Rapid Boots', 'movement', 'images/items/movement/rapid-boots.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(50, 'Swift Boots', 'movement', 'images/items/movement/swift-boots.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(51, 'Tough Boots', 'movement', 'images/items/movement/tough-boots.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(52, 'Warrior Boots', 'movement', 'images/items/movement/warrior-boots.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_30_070037_create_roles_table', 1),
(5, '2025_11_30_070042_create_items_table', 1),
(6, '2025_11_30_070047_create_heroes_table', 1),
(7, '2025_11_30_070050_create_positions_table', 1),
(8, '2025_11_30_070052_create_hero_pivots_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `positions`
--

CREATE TABLE `positions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `positions`
--

INSERT INTO `positions` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Roam', 'images/positions/roam.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(2, 'Mid Lane', 'images/positions/mid.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(3, 'Gold Lane', 'images/positions/gold.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(4, 'Exp Lane', 'images/positions/exp.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47'),
(5, 'Jungler', 'images/positions/jungle.png', '2025-12-03 10:19:47', '2025-12-03 10:19:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Tank', 'images/roles/tank.png', '2025-12-03 10:19:46', '2025-12-03 10:19:46'),
(2, 'Fighter', 'images/roles/fighter.png', '2025-12-03 10:19:46', '2025-12-03 10:19:46'),
(3, 'Assassin', 'images/roles/assasins.png', '2025-12-03 10:19:46', '2025-12-03 10:19:46'),
(4, 'Mage', 'images/roles/mage.png', '2025-12-03 10:19:46', '2025-12-03 10:19:46'),
(5, 'Marksman', 'images/roles/marksman.png', '2025-12-03 10:19:46', '2025-12-03 10:19:46'),
(6, 'Support', 'images/roles/support.png', '2025-12-03 10:19:46', '2025-12-03 10:19:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('VOQ5prLzvCNsmTneBK139ltxnvutnuHE6eU0oe2l', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibndPV1RaUUhPMDA5YU5CMWQ3dHdWRmhIc2g4OVNJNzlwclRxeFByYiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9oZXJvZXMvMiI7czo1OiJyb3V0ZSI7czoxMToiaGVyb2VzLnNob3ciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1764782743);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Ganteng', 'admin@gmail.com', NULL, '$2y$12$F79JXT6uKnpnvcDMYYCGlOxOHMW94HY/fkUtEA7AUz/ggyUqHpPOi', NULL, '2025-12-03 10:19:46', '2025-12-03 10:19:46');

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `heroes_slug_unique` (`slug`),
  ADD KEY `heroes_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `hero_item`
--
ALTER TABLE `hero_item`
  ADD KEY `hero_item_hero_id_foreign` (`hero_id`),
  ADD KEY `hero_item_item_id_foreign` (`item_id`);

--
-- Indeks untuk tabel `hero_position`
--
ALTER TABLE `hero_position`
  ADD KEY `hero_position_hero_id_foreign` (`hero_id`),
  ADD KEY `hero_position_position_id_foreign` (`position_id`);

--
-- Indeks untuk tabel `hero_role`
--
ALTER TABLE `hero_role`
  ADD KEY `hero_role_hero_id_foreign` (`hero_id`),
  ADD KEY `hero_role_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `heroes`
--
ALTER TABLE `heroes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `heroes`
--
ALTER TABLE `heroes`
  ADD CONSTRAINT `heroes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hero_item`
--
ALTER TABLE `hero_item`
  ADD CONSTRAINT `hero_item_hero_id_foreign` FOREIGN KEY (`hero_id`) REFERENCES `heroes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hero_item_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hero_position`
--
ALTER TABLE `hero_position`
  ADD CONSTRAINT `hero_position_hero_id_foreign` FOREIGN KEY (`hero_id`) REFERENCES `heroes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hero_position_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hero_role`
--
ALTER TABLE `hero_role`
  ADD CONSTRAINT `hero_role_hero_id_foreign` FOREIGN KEY (`hero_id`) REFERENCES `heroes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hero_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
