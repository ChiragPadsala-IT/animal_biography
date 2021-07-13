class Animal{
  int id;
  String name;
  String image;
  String info;

  Animal({this.name,this.image,this.info});

  Animal.query({this.id,this.name,this.image,this.info});

}

List mammals = [
  Animal(name: "Lion",image: "assets/mammals_animal/lion.jpg",info: "The lion (Panthera leo) is a species in the family Felidae and a member of the genus Panthera."),
  Animal(name: "Tiger",image: "assets/mammals_animal/tiger.jpg",info: "The tiger (Panthera tigris) is the largest living cat species and a member of the genus Panthera."),
  Animal(name: "Monkey",image: "assets/mammals_animal/monkey.jpg",info: "Monkey is a common name that may refer to certain groups or species of simian mammals of infraorder Simiiformes."),
  Animal(name: "Giraffe",image: "assets/mammals_animal/giraffe.jpg",info: "The giraffe (Giraffa) is an African artiodactyl mammal, the tallest living terrestrial animal and the largest ruminant."),
];

List birds = [
  Animal(name: "Pigeon",image: "assets/birds/pigeon.jpg",info: "Pigeons are also bred for meat, generally called squab and harvested from young birds."),
  Animal(name: "Sparrow",image: "assets/birds/sparrow.jpg",info: "The house sparrow (Passer domesticus) is a bird of the sparrow family Passeridae, found in most parts of the world."),
  Animal(name: "Parrot",image: "assets/birds/parrot.png",info: "Parrots are a colourful group of birds found in most tropical and subtropical regions where they use cool temperate habitats."),
  Animal(name: "Eagle",image: "assets/birds/eagle.jpg",info: "Eagle is the common name for many large birds of prey of the family Accipitridae."),
];

List fish = [
  Animal(name: "Dolphin",image: "assets/fish/dolphin.jpg",info: "Dolphins feed largely on fish and squid, but a few, like the killer whale, feed on large mammals, like seals."),
  Animal(name: "Whale",image: "assets/fish/whale.jpg",info: "Toothed whales, on the other hand, have conical teeth adapted to catching fish or squid."),
  Animal(name: "Carlos",image: "assets/fish/carlos.jpg",info: "Carlos Fish Skin Chips. Taste The Original Auhentic Fishskin Chips - Crackling Crunchy Goodness."),
  Animal(name: "JellyFish",image: "assets/fish/jellyfish.jpg",info: "The term jellies or sea jellies is more recent, having been introduced by public."),
];

List reptiles = [
  Animal(name: "Snake",image: "assets/reptiles/snake.jpg",info: "Snakes are elongated, limbless, carnivorous reptiles of the suborder Serpentes."),
  Animal(name: "Turtles",image: "assets/reptiles/turtles.jpg",info: "Turtles are reptiles of the order Chelonia /kɪˈloʊniə/ or Testudines."),
  Animal(name: "Crocodile",image: "assets/reptiles/crocodile.jpg",info: "Crocodiles (subfamily Crocodylinae) or true crocodiles are large semiaquatic reptiles."),
  Animal(name: "Lizard",image: "assets/reptiles/lizard.jpg",info: "Lizards are a widespread group of squamate reptiles, with over 6,000 species."),
];