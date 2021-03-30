class Country
    attr_reader :name, :airports
    def initialize(name)
        @name = name
        @airports = []
    end
    def add_airport(port)
        @airports << port
    end
end

class Airport
    attr_reader :name, :airplanes
    def initialize(name)
        @name = name
        @airplanes = []
    end
    def add_airplane(plane)
        @airplanes << plane
    end
end

class Airplane
    attr_reader :model
    def initialize(model)
        @model = model
    end
end

airports = [
    Airport.new('Moscow'),
    Airport.new('New York')
]
planes = [
    Airplane.new('Boieng-777'),
    Airplane.new('Airbus-A320')
]
countries = [
    Country.new('RUS'),
    Country.new('USA')
]

countries[0].add_airport(airports[0])
countries[1].add_airport(airports[1])

airports[0].add_airplane Airplane.new('MC-21')

countries.each do |country|
    country.airports.each do |ports|
        planes.each do |model|
            ports.add_airplane(model)
        end
    end
end

countries.each do |country|
    puts "#{country.name}"
    country.airports.each do |ports|
        puts "\t#{ports.name}"
        ports.airplanes.each do |planes|
            puts "\t\t#{planes.model}"
        end
    end
end