require 'csv'

class Station

  attr_reader :name, :zone

  def initialize(name)
    @name = name
    @zone = get_zone
  end

  def get_zone
    CSV.foreach("London stations.csv") do |row|
      return @zone = row[5] if @name.downcase == row[0].downcase
    end

  end


end
