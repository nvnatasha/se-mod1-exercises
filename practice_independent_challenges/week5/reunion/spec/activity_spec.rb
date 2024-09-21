require 'rspec'
require './lib/activity'


RSpec.describe Activity do
    before(:each) do
        @activity = Activity.new("Brunch")
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

    it 'can add participants' do
        @activity.add_participant("Maria", 20)
        
        expect(@activity.participants).to eq({"Maria" => 20})
        
    end

   it 'can return activity cost' do
        @activity.add_participant("Maria", 20)

        expect(@activity.total_cost).to eq(20)
    end

    it 'can add more participants' do
        @activity.add_participant("Maria", 20)
        @activity.add_participant("Luther", 40)

        expect(@activity.participants).to eq({"Maria" => 20, "Luther" => 40})
    end

    it 'can return the new activity total cost' do
        @activity.add_participant("Maria", 20)
        @activity.add_participant("Luther", 40)

        expect(@activity.total_cost).to eq(60)
    end

    it 'can split the total cost' do
        @activity.add_participant("Maria", 20)
        @activity.add_participant("Luther", 40)

        expect(@activity.split).to eq(30)
    end

    it 'can return the cost owed' do
        @activity.add_participant("Maria", 20)
        @activity.add_participant("Luther", 40)
        @activity.split

        expect(@activity.owed).to eq({"Maria" => 10, "Luther" => -10})
    end
end