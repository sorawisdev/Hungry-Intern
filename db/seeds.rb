# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


catagory = Category.all
# Category.create()
ingredient = Ingredient.all

if catagory.size.zero?
    ['Breakfast', 
     'Lunch', 
     'Dinner', 
     'Dessert', 
     'Snack and Appetizers', 
     'Drink'].map do |catagory|
        Category.create(name: catagory)
    end
end

if ingredient.size.zero?
    [
      'Pork','Fish cake','Pepper','Coconut','Fennel','Sour Cream',
      'Chicken','Garlic','Radish','Salt','Maple sugar','Curry Powder',
      'Duck','Cabbage','Cabbage','Suger','Honey','Cinnamon',
      'Beef','Carrot','Taro','Brown Sugar','Coriander Root','Pineapple',
      'Fish','Chili','Celery','Cane Sugar','Butter','Apple',
      'Shimp','Lemon','Asparagus','Olive Oil','Cheese','Avocado',
      'Octopus','Onion','Mint','Sesame Oil','Mustard','Blueberry',
      'Sausage','Tomato','Spinach','Vinegar','Tamarind Juice','Cherry',
      'Turkey','Brocoli','Potato','Flour','Oats','Olive',
      'Raspbery','Cucumber','Leek','Ginger','Turnip','Pumpkin'
    ].map do |ingredient|
        Ingredient.create(name: ingredient)
    end


    # if instructions.size.zero?
    #     [
    #         'Heat a barbecue grill or chargrill pan on medium-high. Place cauliflower in a bowl. Drizzle with 1 tbs oil. Season. Toss to coat. Cook, turning, for 12 minutes or unit charred and aalmost tender. Reserve 1 1/2 cups small florets.',
    #         'Heat 1 1/2 tbs oil in a saucepan over medium-low heat. Add rosemary, garlic and rind. Cook, stirring, for 30 seconds or until aromatic. Stir in beans for 1 minute. Add water, lemon juice and cauliflower. Cook, covered, stirring occasionally, for 5-7 minutes or until cauliflower is tender. User a strick blender to blend until almost smooth. Seasonwell.',
    #         'Drizzle steak with remaining oil. Season. Cook, turning, for 5 minutes for medium or until cooked to your liking. Rest for 3 minutes. Slice steak.',
    #         'Divide mash among plates. Top with steak. Sprinkle with reserved califlower florets. Serve with greens and drizzle of extra oil and lemon wedges, if using.'
    #     ].map do |instruction| Instruction.create(name: instruction)
    # end
end


