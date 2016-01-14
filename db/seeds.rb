Game.destroy_all

games = Game.create([
  {name: "Tag", category: "Active", equipment: "shoes", num_players: "6", num_teams: "2", game_duration: "60", description: "One player runs around trying to tap another player.  Once this is accomplished the player that was tapped becomes the tagger and must run around and try to tap another player.", image_url: "http://3.bp.blogspot.com/-HcDOHNM1OwA/TdrNBM6VvnI/AAAAAAAAAU4/1iqJWD2QG48/s1600/tag.png"},
  {name: "Horse", category: "Active", equipment: "shoes, basketball", num_players: "2", num_teams: "2", game_duration: "30", description: "The first player shoots the basketball however they want from wherever they want and tries to make a basket.  If they make it the next player has to replicate the shot.  If they make it the ball returns to the first player with no consequence.  If the second player misses they are given an H and the game continues in this manner until one of the players has H, O, R, S, E.", image_url: "https://s3.amazonaws.com/lowres.cartoonstock.com/sport-horse_play-horse-farm_animal-basketball_game-basketball-tmcn2630_low.jpg"},
  {name: "War", category: "Cards", equipment: "deck of cards", num_players: "2", num_teams: "2", game_duration: "45", description: "Each player has half of the card deck.  At the same time, each player flips the top card to face up.  Whichever player's card has a higher value takes both cards and adds them to the bottom of their deck.  The game is over once all cards belong to a single player.", image_url: "https://lh5.ggpht.com/16GTM70G8BLoQONAIHBSwIEhDNr_wZFce-Y18La7xlgNve2UTsidZX2ezH8rzs_pwTg=w300"},
  {name: "Beer Pong", category: "Party", equipment: "table, 12 solo cups, two ping pong balls", num_players: "4", num_teams: "2", game_duration: "30", description: "Each team of two has six cups arranged in a triangle pointing towards the other team.  One team starts with both balls and shoots at the cups.  Any cup made on that turn is taken from the triangle and the receiving team rebuttals until all cups are gone from one side.  The team with any amount of cups remaining wins.", image_url: "http://cache4.asset-cache.net/xc/458036793.jpg?v=2&c=IWSAsset&k=2&d=QWqHnn_QMbLWOaDaqnH5ZOstc0KBn-PiUQ-9TDEubm81"},
  {name: "Beer Die", category: "Party", equipment: "table, 4 solo cups, 2 six-sided die", num_players: "4", num_teams: "2", game_duration: "30", description: "Each team of two has two cups placed at the far corners of their side of the table.  Each team switches off throwing two dice underhand, attempting to make the dice in the opposing teams cups.  Three points is awarded for making a cup while one point is given for hitting the cup without it touching the table before the opposing team can catch it.  Each team starts with twenty-one points and the game is over when one team reaches zero.", image_url: "http://www.clipartbest.com/cliparts/xcg/K7k/xcgK7kpMi.png"},
  {name: "License Plate Alphabet game", category: "Car", equipment: "none", num_players: "4", num_teams: "4", game_duration: "40", description: "Each player plays alone and tries to find the alphabet (A-Z) in order on other license plates they see on the road.", image_url: "http://4.bp.blogspot.com/-nZzrOZDdjhM/TpNU7jksAvI/AAAAAAAADcU/RDTLabK7ARg/s400/cartoon-car-prev1175613399z4N9YZ.jpg"},
  {name: "Lord of the Rings Drinking Game", category: "Play-along", equipment: "glass of your favorite beverage", num_players: "1", num_teams: "1", game_duration: "720", description: "Every player chooses a character from the films and drinks when they perform certain actions or say certain words.  There are also social cues for drinking including when the Eye of Sauron is shown and when the One Ring is shown.  The game is over when you have successfully sat through all three extended editions without falling asleep or soiling yourself.", image_url: "http://img00.deviantart.net/2a51/i/2006/302/8/1/cartoon_fellowship_by_jerome_k_moore.jpg"}
  ])
