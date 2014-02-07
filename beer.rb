module Drinkable
  attr_accessor :volume
  def drink amount
    @volume -= amount
  end
end


class Beverage
  include Drinkable

  attr_accessor :flavor, :alcohol_content

  def initialize stuff = {}
    @volume = stuff[:volume]
    @flavor = stuff[:flavor]
    @alcohol_content = stuff[:alcohol_content]
  end


end

class Beer < Beverage

  attr_accessor :brewery, :beer_type

  def initialize brewery, beer_type, stuff = {}
    @brewery = brewery
    @beer_type = beer_type
    super stuff
  end

end

class Juice < Beverage
end