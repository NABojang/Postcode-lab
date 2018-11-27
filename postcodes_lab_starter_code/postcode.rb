require 'httparty'
require 'json'
require_relative './lib/generating_date.rb'

class Postcodesio
  attr_accessor :rand_postcode
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def initialize
    @postcode1 = RandomData.new
    @single = @postcode1.random_postcodes
  end

  def get_single_postcode
    @single
  end

  def get_status
    @single['status']
  end

  def postcode_length
    @single['result']['postcode'].gsub!(/\s/,'')
  end

  def quality_key
    @single['result']['quality']
  end

  def get_ordnance_survey
    @single['result']['eastings']
  end

  def northing_ordnance_survey
      @single['result']['northings']
  end

  def four_constituent
    @single['result']['country']
  end

  def nhs_authority
    @single['result']['nhs_ha']
  end

  def longitude_value
    @single['result']['longitude']
  end

  def latitude_value
    @single['result']['latitude']
  end

  def parliamentary_constituency
    @single['result']['parliamentary_constituency']
  end

  def european_electoral_region
    @single['result']['european_electoral_region']
  end

  def primary_care_trust
    @single['result']['primary_care_trust']
  end

  def region
    @single['result']['region']
  end

  def parish
    @single['result']['parish']
  end

  def isoa
    @single['result']['lsoa']
  end

  def msoa
    @single['result']['msoa']
  end

  def admin_district
    @single['result']['admin_district']
  end

  def incode
    @single['result']['incode']
  end






end
