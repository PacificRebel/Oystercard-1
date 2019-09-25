require 'csv'



class Station

  attr_reader :name, :zone

  def initialize(name)
    @name = name
    get_zone(name)
  end

  def get_zone(name)
    CSV.foreach("London stations.csv") do |row|
      return @zone = row[5] if name.downcase == row[0].downcase
    end

  end


end
