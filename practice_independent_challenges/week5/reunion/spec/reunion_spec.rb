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

    it 'can return a name' do

        expect(@reunion.name).to eq("1406 BE")
    end

    it 'starts with an empty array of activities' do

        expect(@reunion.actvities).to eq([])
    end

    it 'can add activities' do
        activity_1 = Activity.new("Brunch")
        reunion.add_activity(activity_1)

        expect(@reunion.activities).to include(activity_1)
    end