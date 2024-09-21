require 'rspec'
require './lib/activity'
require './lib/reunion'

RSpec.describe Reunion do
    before(:each) do
        @reunion = Activity.new("1406 BE")
    end

    it 'is an instance of reunion' do

        expect(@reunion).to be_an_instance_of(Activity)
    end