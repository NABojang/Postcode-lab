require 'spec_helper'
require_relative '../postcode.rb'
  describe Postcodesio do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @postcodesio = Postcodesio.new
      @response = @postcodesio.get_single_postcode #input a postcode
    end

    it "should respond with a status message of 200" do
      expect(@postcodesio.get_status).to eq 200
    end

    it "should have a results hash" do
      expect(@response).to be_a_kind_of(Hash)
    end

    it "should return a postcode between 5-7 in length"  do
      expect(@postcodesio.postcode_length.length).to be_between(5,7).inclusive
    end

    it "should return an quality key integer between 1-9" do
      expect(@postcodesio.quality_key.to_i).to be_between(1,9).inclusive
    end

    it "should return an ordnance survey eastings value as integer" do
      expect(@postcodesio.get_ordnance_survey.to_i).to be_a_kind_of(Integer)
    end

    it "should return an ordnance survey northings value as integer" do
      expect(@postcodesio.northing_ordnance_survey.to_i).to be_a_kind_of(Integer)
    end

    it "should return a country which is one of the four constituent countries of the UK" do
      expect(@postcodesio.four_constituent).to eq 'England'||'Wales'||'Scotland'||'Northern Ireland'
    end

    it "should return a string value for NHS authority " do
      expect(@postcodesio.nhs_authority).to be_a_kind_of(String)
    end

    it "should return a longitude float value" do
      expect(@postcodesio.longitude_value).to be_a_kind_of(Float)
    end

    it "should return a latitude float value" do
      expect(@postcodesio.latitude_value).to be_a_kind_of(Float)
    end

    it "should return a parliamentary constituency string" do
      expect(@postcodesio.parliamentary_constituency).to be_a_kind_of(String)
    end

    it "should return a european_electoral_region string" do
      expect(@postcodesio.european_electoral_region).to be_a_kind_of(String)
    end

    it "should return a primary_care_trust string" do
      expect(@postcodesio.primary_care_trust).to be_a_kind_of(String)
    end

    it "should return a region string" do
      expect(@postcodesio.region).to be_a_kind_of(String)
    end

    it "should return a parish string" do
      expect(@postcodesio.parish).to be_a_kind_of(String)
    end

    it "should return a lsoa string" do
      expect(@postcodesio.isoa).to be_a_kind_of(String)
    end

    it "should return a msoa string" do
      expect(@postcodesio.msoa).to be_a_kind_of(String)
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
      expect(@postcodesio.admin_district).to be_a_kind_of(String)
    end

    it "should return a incode string of three characters" do
      expect(@postcodesio.incode).to be_a_kind_of(String)
    end

    it "should return a msoa string" do
      expect(@postcodesio.msoa).to be_a_kind_of(String)
    end

    it "should return a incode string of 3-4 characters" do
      expect(@postcodesio.incode.length).to be_between(3,4).inclusive
    end
  end

  context "multiple postcodes validation" do

    before(:all) do
      @postcodesio = Postcodesio.new
      @response = @postcodesio.get_multiple_postcodes #Add in array of postcodes
    end

    it "should respond with a status message of 200" do
      expect(@postcodesio.get_status)
    end

    it "should return the first query as the first postcode in the response" do
    end

    it "should return the second query as the first postcode in the response" do
    end

    it "should have a results hash" do
    end

    it "should return a postcode between 5-7 in length"  do
    end

    it "should return an quality key integer between 1-9" do
    end

    it "should return an ordnance survey eastings value as integer" do
    end

    it "should return an ordnance survey eastings value as integer" do
    end

    it "should return a country which is one of the four constituent countries of the UK" do
    end

    it "should return a string value for NHS authority " do
    end

    it "should return a longitude float value" do
    end

    it "should return a latitude float value" do
    end

    it "should return a parliamentary constituency string" do
    end

    it "should return a european_electoral_region string" do
    end

    it "should return a primary_care_trust string" do
    end

    it "should return a region string" do
    end

    it "should return a parish string" do
    end

    it "should return a lsoa string" do
    end

    it "should return a msoa string" do
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
    end

    it "should return a incode string of three characters" do
    end

    it "should return a msoa string" do
    end

    it "should return a incode string of 3-4 characters" do
    end

    it "should have a results hash" do
    end

    it "should return a postcode between 5-7 in length"  do
    end

    it "should return an quality key integer between 1-9" do
    end

    it "should return an ordnance survey eastings value as integer" do
    end

    it "should return an ordnance survey eastings value as integer" do
    end

    it "should return a country which is one of the four constituent countries of the UK" do
    end

    it "should return a string value for NHS authority " do
    end

    it "should return a longitude float value" do
    end

    it "should return a latitude float value" do
    end

    it "should return a parliamentary constituency string" do
    end

    it "should return a european_electoral_region string" do
    end

    it "should return a primary_care_trust string" do
    end

    it "should return a region string" do
    end

    it "should return a parish string" do
    end

    it "should return a lsoa string" do
    end

    it "should return a msoa string" do
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
    end

    it "should return a incode string of three characters" do
    end

    it "should return a msoa string" do
    end

    it "should return a incode string of 3-4 characters" do
    end

  end
end
