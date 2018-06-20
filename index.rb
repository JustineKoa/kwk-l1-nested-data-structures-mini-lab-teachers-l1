# example ingredients array
ingredients = [
    ["rye", "sourdough", "baguette"],
    ["ham", "salami", "turkey"],
    ["swiss", "munster", "cheddar"],
    ["mayo", "mustard", "tabasco"]
]

def sandwich_request(ingredients, order)
  # your code here!
  order.each do |item|
    found = false
    ingredients.each do |lists|
      lists.each do |list|
        if list == item
          found = true
        end
      end
    end
    if !found
      return false
    end
  end
  return true
end

# example city_info hash
cities = {
  :new_york => {
    :mayor => "Bill DeBlasio",
    :population => 8337000,
    :website => "http://www.nyc.gov"
  },
  :los_angeles => {
    :mayor => "Eric Garcetti",
    :population => 3884307,
    :website => "http://www.lacity.org"
  },
  :miami => {
    :mayor => "Tomás Regalado",
    :population => 419777,
    :website => "http://www.miamigov.com"
  },
  :chicago => {
    :mayor => "Rahm Emanuel",
    :population => 2695598,
    :website => "http://www.cityofchicago.org/"
  }
}

puts cities[:new_york][:population]

def city_populations(cities)
  # your code here!
  total_pop = 0
  cities.each do |city, info|
    pop = info[:population]
    total_pop += pop
  end
  return total_pop
end
