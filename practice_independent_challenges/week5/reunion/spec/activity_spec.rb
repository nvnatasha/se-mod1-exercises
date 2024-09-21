require 'rspec'
require './lib/activity'

RSpect.descibe Activity do
    before(:each) do
        activity = Activity.new("Brunch")
    end

    it 'is an instance of activity' do

        expect(@activity).to be_an_instance_of(Activity)
    end

    it 'can return an activity' do

        expect(@activity.name).to eq("Brunch")
    end

    it 'starts with an empty hash of participants' do

        expect(@activity.participants).to eq({})
    end


end