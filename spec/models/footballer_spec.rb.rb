require 'spec_helper'

describe Footballer do
  before(:each) do
    @valid_attributes = {
      :first_name => 'Abalo',
      :last_name => 'Afi',
      :born_at => "1980-02-08",
      :city_born_in =>  "Conakry",
      :country_born_in => "Guinée"
    }
  end

  it "should be valid given valid attibutes" do
    footballer = Footballer.new(@valid_attributes)
    footballer.should be_valid
  end

  it "should not be valid without first_name" do
    footballer = Footballer.new(@valid_attributes.except(:first_name))
    footballer.should_not be_valid
  end

   it "should not be valid without last_name" do
    footballer = Footballer.new(@valid_attributes.except(:last_name))
    footballer.should_not be_valid
  end

end
