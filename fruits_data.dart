// fruits_data.dart

class Fruit {
  final String name;
  final String description;
  final String imageUrl;
  final List<NutritionFact> nutritionFacts;

  Fruit({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.nutritionFacts,
  });
}

class NutritionFact {
  final String label;
  final String value;
  final int percentage;

  NutritionFact({
    required this.label,
    required this.value,
    required this.percentage,
  });
}

List<Fruit> fruitsData = [
  Fruit(
    name: 'Pomegranate',
    description:
        'Rich in antioxidants and vitamin C, pomegranates boost heart health and fight inflammation. They also have anti-cancer properties and support healthy digestion.',
    imageUrl: 'https://pngimg.com/uploads/pomegranate/pomegranate_PNG8647.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '83', percentage: 4),
      NutritionFact(label: 'Carbohydrates', value: '19g', percentage: 6),
      NutritionFact(label: 'Fiber', value: '4g', percentage: 16),
      NutritionFact(label: 'Protein', value: '2g', percentage: 4),
      NutritionFact(label: 'Vitamin C', value: '10mg', percentage: 11),
      NutritionFact(label: 'Vitamin K', value: '16mcg', percentage: 20),
      NutritionFact(label: 'Folate', value: '38mcg', percentage: 10),
      NutritionFact(label: 'Potassium', value: '236mg', percentage: 5),
    ],
  ),
  Fruit(
    name: 'Apple',
    description:
        'Apples are high in fiber and vitamin C, supporting digestive health and boosting the immune system. They also contain polyphenols, which have numerous health benefits including lowering blood pressure.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-green-appleappleapplesfruitsweetgreen-apple-1701527181198mir8r.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '95', percentage: 5),
      NutritionFact(label: 'Carbohydrates', value: '25g', percentage: 8),
      NutritionFact(label: 'Fiber', value: '4g', percentage: 16),
      NutritionFact(label: 'Protein', value: '0.5g', percentage: 1),
      NutritionFact(label: 'Vitamin C', value: '8mg', percentage: 9),
      NutritionFact(label: 'Vitamin K', value: '4mcg', percentage: 5),
      NutritionFact(label: 'Potassium', value: '195mg', percentage: 5),
      NutritionFact(label: 'Vitamin B6', value: '0.1mg', percentage: 5),
    ],
  ),
  Fruit(
    name: 'Banana',
    description:
        'Bananas are a great source of potassium and vitamin B6, aiding in heart health and muscle function. They also provide quick energy and improve digestive health due to their fiber content.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-bananasbananabananasyellow-bananabotanically-a-berryedible-fruitherbaceousgenus-musa-1701527188663onc7a.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '105', percentage: 5),
      NutritionFact(label: 'Carbohydrates', value: '27g', percentage: 9),
      NutritionFact(label: 'Fiber', value: '3g', percentage: 12),
      NutritionFact(label: 'Protein', value: '1g', percentage: 2),
      NutritionFact(label: 'Vitamin C', value: '10mg', percentage: 11),
      NutritionFact(label: 'Vitamin B6', value: '0.5mg', percentage: 25),
      NutritionFact(label: 'Potassium', value: '422mg', percentage: 12),
      NutritionFact(label: 'Magnesium', value: '32mg', percentage: 8),
    ],
  ),
  Fruit(
    name: 'Orange',
    description:
        ' Oranges are packed with vitamin C and fiber, enhancing immune function and digestive health. They also contain flavonoids that have anti-inflammatory properties and can help reduce the risk of chronic diseases.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-orange-orangeorangefruitbitter-orangeorangesclip-art-1701527337493x5na7.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '62', percentage: 3),
      NutritionFact(label: 'Carbohydrates', value: '15g', percentage: 5),
      NutritionFact(label: 'Fiber', value: '3g', percentage: 12),
      NutritionFact(label: 'Protein', value: '1g', percentage: 2),
      NutritionFact(label: 'Vitamin C', value: '70mg', percentage: 78),
      NutritionFact(label: 'Folate', value: '40mcg', percentage: 10),
      NutritionFact(label: 'Potassium', value: '237mg', percentage: 7),
      NutritionFact(label: 'Calcium', value: '52mg', percentage: 5),
    ],
  ),
  Fruit(
    name: 'Strawberry',
    description:
        'Strawberries are rich in antioxidants, vitamin C, and manganese, promoting skin health and reducing inflammation. They also help regulate blood sugar levels and support heart health.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-strawberries-with-leaf-and-slicedfruitsberryberriesstrawberrystrawberriesred-981524759471soggn.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '32', percentage: 2),
      NutritionFact(label: 'Carbohydrates', value: '8g', percentage: 3),
      NutritionFact(label: 'Fiber', value: '2g', percentage: 8),
      NutritionFact(label: 'Protein', value: '1g', percentage: 2),
      NutritionFact(label: 'Vitamin C', value: '59mg', percentage: 66),
      NutritionFact(label: 'Folate', value: '24mcg', percentage: 6),
      NutritionFact(label: 'Potassium', value: '153mg', percentage: 4),
      NutritionFact(label: 'Magnesium', value: '13mg', percentage: 3),
    ],
  ),
  Fruit(
    name: 'Grapes',
    description:
        'Grapes are loaded with antioxidants and vitamins K and C, supporting heart health and reducing oxidative stress. They also contain resveratrol, which has anti-aging and disease-fighting properties.',
    imageUrl:
        'https://freepngimg.com/thumb/grape/15-green-grape-png-image-thumb.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '69', percentage: 3),
      NutritionFact(label: 'Carbohydrates', value: '18g', percentage: 6),
      NutritionFact(label: 'Fiber', value: '1g', percentage: 4),
      NutritionFact(label: 'Protein', value: '1g', percentage: 2),
      NutritionFact(label: 'Vitamin C', value: '4mg', percentage: 4),
      NutritionFact(label: 'Vitamin K', value: '14mcg', percentage: 16),
      NutritionFact(label: 'Potassium', value: '191mg', percentage: 5),
      NutritionFact(label: 'Vitamin B6', value: '0.1mg', percentage: 5),
    ],
  ),
  Fruit(
    name: 'Watermelon',
    description:
        'Watermelon is hydrating and rich in vitamins A and C, supporting skin health and the immune system. It also contains lycopene, which has been linked to heart health and cancer prevention.',
    imageUrl:
        'https://purepng.com/public/uploads/large/purepng.com-watermelonwatermelonhairy-pinnately-lobed-leavesyellow-flowerslargegreenyellow-spotssweet-1701527401803yjjp0.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '30', percentage: 2),
      NutritionFact(label: 'Carbohydrates', value: '8g', percentage: 3),
      NutritionFact(label: 'Fiber', value: '0.4g', percentage: 2),
      NutritionFact(label: 'Protein', value: '0.6g', percentage: 1),
      NutritionFact(label: 'Vitamin C', value: '8mg', percentage: 9),
      NutritionFact(label: 'Vitamin A', value: '569IU', percentage: 11),
      NutritionFact(label: 'Potassium', value: '112mg', percentage: 3),
      NutritionFact(label: 'Magnesium', value: '10mg', percentage: 3),
    ],
  ),
  Fruit(
    name: 'Pineapple',
    description:
        ' Pineapples are rich in vitamin C and bromelain, which aids digestion and reduces inflammation. They also support the immune system and improve eye health.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-pineapple-piecespineapplefruitfoodfreshhalvedpiecesfruitycutted-481521633174lym3j.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '50', percentage: 3),
      NutritionFact(label: 'Carbohydrates', value: '13g', percentage: 4),
      NutritionFact(label: 'Fiber', value: '1.4g', percentage: 6),
      NutritionFact(label: 'Protein', value: '0.5g', percentage: 1),
      NutritionFact(label: 'Vitamin C', value: '79mg', percentage: 88),
      NutritionFact(label: 'Vitamin B6', value: '0.1mg', percentage: 5),
      NutritionFact(label: 'Manganese', value: '1.5mg', percentage: 76),
      NutritionFact(label: 'Potassium', value: '109mg', percentage: 3),
    ],
  ),
  Fruit(
    name: 'Mango',
    description:
        'Mangoes are high in vitamins A and C, supporting eye health and boosting the immune system. They also contain fiber, which aids in digestion, and antioxidants that help protect against certain cancers.',
    imageUrl:
        'https://purepng.com/public/uploads/large/purepng.com-mangomangofruithalvedfrontalfullsweetfresh-481521564634qp959.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '60', percentage: 3),
      NutritionFact(label: 'Carbohydrates', value: '15g', percentage: 5),
      NutritionFact(label: 'Fiber', value: '1.6g', percentage: 6),
      NutritionFact(label: 'Protein', value: '0.8g', percentage: 2),
      NutritionFact(label: 'Vitamin C', value: '36mg', percentage: 40),
      NutritionFact(label: 'Vitamin A', value: '54mcg', percentage: 6),
      NutritionFact(label: 'Folate', value: '43mcg', percentage: 11),
      NutritionFact(label: 'Potassium', value: '168mg', percentage: 5),
    ],
  ),
  Fruit(
    name: 'Blueberry',
    description:
        'Blueberries are packed with antioxidants and vitamin C, supporting brain health and reducing the risk of heart disease. They also improve memory and have anti-aging properties.',
    imageUrl:
        'https://purepng.com/public/uploads/large/purepng.com-blueberryberryfruitdeliciousdrawingblueberry-33152234542505pip.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '57', percentage: 3),
      NutritionFact(label: 'Carbohydrates', value: '14g', percentage: 5),
      NutritionFact(label: 'Fiber', value: '2.4g', percentage: 10),
      NutritionFact(label: 'Protein', value: '0.7g', percentage: 1),
      NutritionFact(label: 'Vitamin C', value: '9.7mg', percentage: 11),
      NutritionFact(label: 'Vitamin K', value: '19.3mcg', percentage: 24),
      NutritionFact(label: 'Manganese', value: '0.5mg', percentage: 25),
      NutritionFact(label: 'Vitamin E', value: '0.6mg', percentage: 3),
    ],
  ),
  Fruit(
    name: 'Peach',
    description:
        ' Peaches are rich in vitamins A and C, supporting skin health and boosting the immune system. They also contain fiber, which aids digestion and promotes heart health.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-peachpeachfruitfullwholetwopeachessweetfoodorange-48152163182910ngm.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '59', percentage: 3),
      NutritionFact(label: 'Carbohydrates', value: '14g', percentage: 5),
      NutritionFact(label: 'Fiber', value: '2g', percentage: 8),
      NutritionFact(label: 'Protein', value: '1g', percentage: 2),
      NutritionFact(label: 'Vitamin C', value: '10mg', percentage: 11),
      NutritionFact(label: 'Vitamin A', value: '489IU', percentage: 10),
      NutritionFact(label: 'Potassium', value: '285mg', percentage: 8),
      NutritionFact(label: 'Niacin', value: '1.2mg', percentage: 6),
    ],
  ),
  Fruit(
    name: 'Kiwi',
    description:
        'Kiwis are high in vitamin C and fiber, supporting immune function and digestive health. They also have antioxidants that protect against oxidative damage and promote heart health.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-kiwi-drawingkiwidrawingfruitfooddelicious-331522418267vnnk7.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '42', percentage: 2),
      NutritionFact(label: 'Carbohydrates', value: '10g', percentage: 3),
      NutritionFact(label: 'Fiber', value: '2.1g', percentage: 8),
      NutritionFact(label: 'Protein', value: '0.8g', percentage: 2),
      NutritionFact(label: 'Vitamin C', value: '71mg', percentage: 79),
      NutritionFact(label: 'Vitamin K', value: '27.8mcg', percentage: 35),
      NutritionFact(label: 'Folate', value: '17mcg', percentage: 4),
      NutritionFact(label: 'Potassium', value: '215mg', percentage: 6),
    ],
  ),
  Fruit(
    name: 'Papaya',
    description:
        'Papayas are rich in vitamins A and C, supporting skin and eye health. They also contain papain, an enzyme that aids digestion and reduces inflammation.',
    imageUrl: 'https://pngimg.com/uploads/papaya/papaya_PNG17.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '59', percentage: 3),
      NutritionFact(label: 'Carbohydrates', value: '15g', percentage: 5),
      NutritionFact(label: 'Fiber', value: '2.7g', percentage: 11),
      NutritionFact(label: 'Protein', value: '0.9g', percentage: 2),
      NutritionFact(label: 'Vitamin C', value: '88mg', percentage: 98),
      NutritionFact(label: 'Vitamin A', value: '68mcg', percentage: 8),
      NutritionFact(label: 'Folate', value: '37mcg', percentage: 9),
      NutritionFact(label: 'Potassium', value: '264mg', percentage: 8),
    ],
  ),
  Fruit(
    name: 'Plum',
    description:
        'Plums are high in antioxidants and vitamin C, supporting immune function and reducing inflammation. They also promote digestive health and help control blood sugar levels.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-plumplumgenus-prunuspeachescherriesbird-cherries-1701527358885zm0ul.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '46', percentage: 2),
      NutritionFact(label: 'Carbohydrates', value: '11g', percentage: 4),
      NutritionFact(label: 'Fiber', value: '1g', percentage: 4),
      NutritionFact(label: 'Protein', value: '0.5g', percentage: 1),
      NutritionFact(label: 'Vitamin C', value: '9.5mg', percentage: 11),
      NutritionFact(label: 'Vitamin A', value: '227IU', percentage: 5),
      NutritionFact(label: 'Potassium', value: '157mg', percentage: 4),
      NutritionFact(label: 'Vitamin K', value: '5.9mcg', percentage: 7),
    ],
  ),
  Fruit(
    name: 'Raspberry',
    description:
        'Raspberries are rich in fiber, vitamins C and K, supporting digestive health and bone health. They also contain antioxidants that help reduce the risk of chronic diseases.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-raspberryfruitsberryberriesraspberryrasberries-981525182149uz5ir.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '52', percentage: 3),
      NutritionFact(label: 'Carbohydrates', value: '12g', percentage: 4),
      NutritionFact(label: 'Fiber', value: '6.5g', percentage: 26),
      NutritionFact(label: 'Protein', value: '1.2g', percentage: 2),
      NutritionFact(label: 'Vitamin C', value: '26.2mg', percentage: 29),
      NutritionFact(label: 'Vitamin K', value: '9.6mcg', percentage: 12),
      NutritionFact(label: 'Manganese', value: '0.7mg', percentage: 36),
      NutritionFact(label: 'Magnesium', value: '22mg', percentage: 5),
    ],
  ),
  Fruit(
    name: 'Cantaloupe',
    description:
        'Cantaloupes are high in vitamins A and C, supporting immune function and skin health. They also contain potassium, which helps maintain healthy blood pressure levels.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-ripe-cantaloupe-melonfruitsmeloncantaloupe-981524763349rblns.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '34', percentage: 2),
      NutritionFact(label: 'Carbohydrates', value: '8g', percentage: 3),
      NutritionFact(label: 'Fiber', value: '0.9g', percentage: 4),
      NutritionFact(label: 'Protein', value: '0.8g', percentage: 2),
      NutritionFact(label: 'Vitamin C', value: '36.7mg', percentage: 41),
      NutritionFact(label: 'Vitamin A', value: '3382IU', percentage: 68),
      NutritionFact(label: 'Potassium', value: '267mg', percentage: 8),
      NutritionFact(label: 'Folate', value: '21mcg', percentage: 5),
    ],
  ),
  Fruit(
    name: 'Dragon Fruit',
    description:
        'Dragon fruit is rich in antioxidants, vitamins C and B, and fiber, supporting immune function and digestive health. It also contains prebiotics that promote gut health.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-dragon-fruitfruitsdragon-fruitpitayapitahaya-981524762841xd0vm.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '60', percentage: 3),
      NutritionFact(label: 'Carbohydrates', value: '13g', percentage: 4),
      NutritionFact(label: 'Fiber', value: '3g', percentage: 12),
      NutritionFact(label: 'Protein', value: '1.2g', percentage: 2),
      NutritionFact(label: 'Vitamin C', value: '3mg', percentage: 3),
      NutritionFact(label: 'Iron', value: '1.9mg', percentage: 11),
      NutritionFact(label: 'Magnesium', value: '18mg', percentage: 4),
      NutritionFact(label: 'Calcium', value: '18mg', percentage: 2),
    ],
  ),
  Fruit(
    name: 'Blackberry',
    description:
        'Blackberries are packed with vitamins C and K, supporting immune function and bone health. They also contain antioxidants that protect against oxidative stress and promote heart health.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-blackberry-variationsblackberryberryfruitdeliciousdrawing-331522344717njt2m.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '43', percentage: 2),
      NutritionFact(label: 'Carbohydrates', value: '10g', percentage: 3),
      NutritionFact(label: 'Fiber', value: '5g', percentage: 20),
      NutritionFact(label: 'Protein', value: '1.4g', percentage: 3),
      NutritionFact(label: 'Vitamin C', value: '21mg', percentage: 23),
      NutritionFact(label: 'Vitamin K', value: '19.8mcg', percentage: 24),
      NutritionFact(label: 'Folate', value: '25mcg', percentage: 6),
      NutritionFact(label: 'Potassium', value: '162mg', percentage: 5),
    ],
  ),
  Fruit(
    name: 'Pear',
    description:
        'Pears are high in fiber and vitamin C, supporting digestive health and boosting the immune system. They also contain antioxidants that help reduce inflammation.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-pear-fruitspearorganicripehealthyfruit-981524676175sygto.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '101', percentage: 5),
      NutritionFact(label: 'Carbohydrates', value: '27g', percentage: 9),
      NutritionFact(label: 'Fiber', value: '6g', percentage: 24),
      NutritionFact(label: 'Sugar', value: '17g', percentage: 0),
      NutritionFact(label: 'Protein', value: '1g', percentage: 2),
      NutritionFact(label: 'Vitamin C', value: '8mg', percentage: 9),
      NutritionFact(label: 'Vitamin K', value: '7mcg', percentage: 9),
      NutritionFact(label: 'Potassium', value: '206mg', percentage: 6),
      NutritionFact(label: 'Copper', value: '0.2mg', percentage: 10),
    ],
  ),
  Fruit(
    name: 'Guava',
    description:
        'Guavas are rich in vitamin C and fiber, supporting immune function and digestive health. They also contain antioxidants that protect against chronic diseases.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-guavafruitsguava-98152518405265e5e.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '37', percentage: 2),
      NutritionFact(label: 'Carbohydrates', value: '8g', percentage: 3),
      NutritionFact(label: 'Fiber', value: '3g', percentage: 12),
      NutritionFact(label: 'Sugar', value: '5g', percentage: 0),
      NutritionFact(label: 'Protein', value: '1g', percentage: 2),
      NutritionFact(label: 'Vitamin C', value: '228mg', percentage: 254),
      NutritionFact(label: 'Potassium', value: '417mg', percentage: 12),
      NutritionFact(label: 'Vitamin A', value: '624IU', percentage: 12),
    ],
  ),

  Fruit(
    name: 'Cherry',
    description:
        'Cherries are high in antioxidants and vitamin C, supporting immune function and reducing inflammation. They also contain melatonin, which helps regulate sleep patterns.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-cherriescherrygenus-prunussweet-cherryornamental-cherrycherry-blossomcherries-1701527196898n5w1w.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '50', percentage: 3),
      NutritionFact(label: 'Carbohydrates', value: '12g', percentage: 4),
      NutritionFact(label: 'Fiber', value: '1.6g', percentage: 6),
      NutritionFact(label: 'Sugar', value: '8g', percentage: 0),
      NutritionFact(label: 'Protein', value: '1g', percentage: 2),
      NutritionFact(label: 'Vitamin C', value: '7mg', percentage: 8),
      NutritionFact(label: 'Vitamin A', value: '64IU', percentage: 1),
      NutritionFact(label: 'Calcium', value: '13mg', percentage: 1),
      NutritionFact(label: 'Potassium', value: '173mg', percentage: 5),
    ],
  ),
  Fruit(
    name: 'Fig',
    description:
        'Figs are rich in fiber and antioxidants, supporting digestive health and reducing oxidative stress. They also contain vitamins and minerals that promote bone health.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-figfruitsfig-981525180807so9in.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '74', percentage: 4),
      NutritionFact(label: 'Carbohydrates', value: '19g', percentage: 6),
      NutritionFact(label: 'Fiber', value: '3g', percentage: 12),
      NutritionFact(label: 'Sugar', value: '16g', percentage: 0),
      NutritionFact(label: 'Protein', value: '0.8g', percentage: 2),
      NutritionFact(label: 'Vitamin C', value: '2mg', percentage: 2),
      NutritionFact(label: 'Potassium', value: '232mg', percentage: 7),
    ],
  ),
  Fruit(
    name: 'Apricot',
    description:
        ' Apricots are high in vitamins A and C, supporting eye health and boosting the immune system. They also contain fiber, which aids digestion and promotes heart health.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-apricotapricotfruitstone-fruitsstone-fruitsbrigantinafrom-small-tree-1701527114906yg8o5.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '48', percentage: 2),
      NutritionFact(label: 'Carbohydrates', value: '11g', percentage: 4),
      NutritionFact(label: 'Fiber', value: '2g', percentage: 8),
      NutritionFact(label: 'Sugar', value: '9g', percentage: 0),
      NutritionFact(label: 'Protein', value: '1.4g', percentage: 3),
      NutritionFact(label: 'Vitamin C', value: '10mg', percentage: 11),
      NutritionFact(label: 'Potassium', value: '259mg', percentage: 7),
      NutritionFact(label: 'Vitamin A', value: '1926IU', percentage: 39),
    ],
  ),
  Fruit(
    name: 'Lychee',
    description:
        'Lychees are rich in vitamin C and antioxidants, supporting immune function and reducing inflammation. They also promote healthy blood circulation and protect against free radical damage.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-lycheefruitslycheelitchiliecheelizhili-zhilichee-981525183324fmmjm.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '66', percentage: 3),
      NutritionFact(label: 'Carbohydrates', value: '17g', percentage: 6),
      NutritionFact(label: 'Fiber', value: '1.3g', percentage: 5),
      NutritionFact(label: 'Sugar', value: '15g', percentage: 0),
      NutritionFact(label: 'Protein', value: '0.8g', percentage: 2),
      NutritionFact(label: 'Vitamin C', value: '71.5mg', percentage: 79),
      NutritionFact(label: 'Potassium', value: '171mg', percentage: 5),
    ],
  ),
  Fruit(
    name: 'Avocado',
    description:
        'Avocados are high in healthy fats, vitamins E and K, supporting heart health and skin health. They also contain fiber, which aids digestion and helps regulate blood sugar levels.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-avocadoavocadoflowering-plantalligator-pearsingle-seedmediterraneanfoodfruit-1701527115827bxbnm.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '160', percentage: 8),
      NutritionFact(label: 'Carbohydrates', value: '9g', percentage: 3),
      NutritionFact(label: 'Fiber', value: '7g', percentage: 28),
      NutritionFact(label: 'Sugar', value: '0.7g', percentage: 1),
      NutritionFact(label: 'Protein', value: '2g', percentage: 4),
      NutritionFact(label: 'Vitamin C', value: '10mg', percentage: 11),
      NutritionFact(label: 'Potassium', value: '485mg', percentage: 10),
      NutritionFact(label: 'Vitamin A', value: '146IU', percentage: 3),
    ],
  ),
  Fruit(
    name: 'Coconut',
    description:
        'Coconuts are rich in healthy fats and fiber, supporting heart health and digestive health. They also contain antioxidants that protect against oxidative damage.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-coconutcoconutcocofooddelicious-331522413300sc8gq.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '354', percentage: 18),
      NutritionFact(label: 'Carbohydrates', value: '15g', percentage: 5),
      NutritionFact(label: 'Fiber', value: '9g', percentage: 36),
      NutritionFact(label: 'Sugar', value: '6g', percentage: 0),
      NutritionFact(label: 'Protein', value: '3.3g', percentage: 7),
      NutritionFact(label: 'Vitamin C', value: '3.3mg', percentage: 4),
      NutritionFact(label: 'Potassium', value: '356mg', percentage: 8),
      NutritionFact(label: 'Vitamin A', value: '0IU', percentage: 0),
    ],
  ),
//chck data from here bcz it is repeatinggggggggggggggg
  Fruit(
    name: 'Passion Fruit',
    description:
        'Passion fruit is high in fiber and vitamin C, supporting digestive health and immune function. It also contains antioxidants that help reduce inflammation and promote heart health.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-passion-fruitfruitspassion-fruit-981524762642s297n.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '17', percentage: 1),
      NutritionFact(label: 'Carbohydrates', value: '4g', percentage: 1),
      NutritionFact(label: 'Fiber', value: '1.9g', percentage: 8),
      NutritionFact(label: 'Sugar', value: '2.4g', percentage: 0),
      NutritionFact(label: 'Protein', value: '0.5g', percentage: 1),
      NutritionFact(label: 'Vitamin C', value: '9.3mg', percentage: 10),
      NutritionFact(label: 'Potassium', value: '348mg', percentage: 7),
      NutritionFact(label: 'Vitamin A', value: '1275IU', percentage: 26),
    ],
  ),
  Fruit(
    name: 'Jackfruit',
    description:
        'Jackfruit is rich in vitamins A and C, supporting immune function and skin health. It also contains fiber and antioxidants that aid digestion and protect against chronic diseases.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-jackfruitfruitsjackfruitjakfruitjackjak-981525183638vfp4o.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '95', percentage: 5),
      NutritionFact(label: 'Carbohydrates', value: '24g', percentage: 9),
      NutritionFact(label: 'Fiber', value: '1.5g', percentage: 6),
      NutritionFact(label: 'Sugar', value: '19g', percentage: 0),
      NutritionFact(label: 'Protein', value: '1.5g', percentage: 3),
      NutritionFact(label: 'Vitamin C', value: '11mg', percentage: 12),
      NutritionFact(label: 'Potassium', value: '303mg', percentage: 6),
      NutritionFact(label: 'Vitamin A', value: '0IU', percentage: 0),
    ],
  ),
  Fruit(
    name: 'Cranberry',
    description:
        'Cranberries are high in antioxidants and vitamin C, supporting immune function and urinary tract health. They also have anti-inflammatory properties and promote heart health.',
    imageUrl:
        'https://purepng.com/public/uploads/thumbnail//purepng.com-cranberryfruitsberryberriescranberriescranberry-9815247640250hath.png',
    nutritionFacts: [
      NutritionFact(label: 'Calories', value: '46', percentage: 2),
      NutritionFact(label: 'Carbohydrates', value: '12g', percentage: 4),
      NutritionFact(label: 'Fiber', value: '4.6g', percentage: 18),
      NutritionFact(label: 'Sugar', value: '4g', percentage: 0),
      NutritionFact(label: 'Protein', value: '0.4g', percentage: 1),
      NutritionFact(label: 'Vitamin C', value: '13.3mg', percentage: 15),
      NutritionFact(label: 'Potassium', value: '85mg', percentage: 2),
      NutritionFact(label: 'Vitamin A', value: '60IU', percentage: 1),
    ],
  ),
];
