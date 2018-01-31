# A

stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

# 1. Add "Edinburgh Waverley" to the end of the array

stops.push("Edinburgh Waverley")
p stops

# 2. Add "Glasgow Queen St" to the start of the array

stops.unshift("Glasgow Queen Street")
p stops

# 3. Add "Polmont" at the appropriate point (between "Falkirk High" and "Linlithgow")

stops.insert(4, "Polmont")
p stops

# 4. Work out the index position of "Linlithgow"

p stops.find_index("Linlithgow")

# 5. Remove "Livingston" from the array using its name

stops.delete("Livingston")
p stops

# 6. Delete "Cumbernauld" from the array by index

stops.delete_at(2)
p stops

# 7. How many stops there are in the array?

p stops.length()

# 8. How many ways can we return "Falkirk High" from the array?

p stops[2]
p stops[-5]
p stops.at(2)
p stops.at(-5)
p stops.fetch(2)
p stops.fetch(-5)

# 9. Reverse the positions of the stops in the array

p stops.reverse!()

# 10. Print out all the stops using a for loop

for stop in stops
  p stop
end

# B

users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

# 1. Get Jonathan's Twitter handle (i.e. the string "jonnyt")

p users["Jonathan"][:twitter]

# 2. Get Erik's hometown

p users["Erik"][:home_town]

# 3. Get the array of Erik's lottery numbers

p users["Erik"][:lottery_numbers]

# 4. Get the type of Avril's pet Monty

p users["Avril"][:pets][0][:species]

# 5. Get the smallest of Erik's lottery numbers

p users["Erik"][:lottery_numbers].min()

# 6. Return an array of Avril's lottery numbers that are even

even_nums = []
for num in users["Avril"][:lottery_numbers]
  even_nums.push(num) if (num%2 == 0)
end
p even_nums

# 7. Erik is one lottery number short! Add the number 7 to be included in his lottery numbers

users["Erik"][:lottery_numbers].push(7)
p users["Erik"][:lottery_numbers]

# 8. Change Erik's hometown to Edinburgh

users["Erik"][:home_town] = "Edinburgh"
p users["Erik"][:home_town]

# 9. Add a pet dog to Erik called "Fluffy"

users["Erik"][:pets].push({name: "Fluffy", species: "dog"})
p users["Erik"][:pets]

# 10. Add another person to the users hash

users["Bert"] = {
  :twitter => "bertoverduin",
  :lottery_numbers => [1, 7, 12, 22, 39, 41],
  :home_town => "Edinburgh",
  :pets => [
    {
      :name => "Woof",
      :species => "dog"
    }
  ]
}

p users

# C

united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# 1. Change the capital of Wales from "Swansea" to "Cardiff".

united_kingdom[2][:name] = "Cardiff"

# 2. Create a Hash for Northern Ireland and add it to the united_kingdom array (The capital is Belfast, and the population is 1,811,000).

northern_ireland = {
  name: "Northern Ireland",
  population: 1811000,
  capital: "Belfast"
}

p united_kingdom.push(northern_ireland)

# 3. Use a loop to print the names of all the countries in the UK.

for country in united_kingdom
  p country[:name]
end

# 4. Use a loop to find the total population of the UK.

total_population = 0

for country in united_kingdom
  total_population += country[:population]
end

p total_population
