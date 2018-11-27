require 'httparty'
require 'json'


class RandomData
  include HTTParty
  base_uri 'https://api.postcodes.io'

  attr_accessor :postcode

  def initialize
    @postcode
  end

  def random_postcodes
  @postcode = JSON.parse(self.class.get('/random/postcodes/').body)
  end

end
