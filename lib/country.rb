class Country
  attr_accessor :name, :confirmed_cases, :overall_deaths, :recoveries
  @@countries = []

  def initialize(country_name, country_cases, country_deaths, country_recoveries)
    @name = country_name
    @confirmed_cases = country_cases
    @overall_deaths = country_deaths
    @recoveries = country_recoveries

    @@countries << self
  end
  
  def self.all
    @@countries
  end
end

usa = Country.new("USA", "10", "0", "10")

puts "There are this many cases in the USA " + usa.confirmed_cases

puts Country.all