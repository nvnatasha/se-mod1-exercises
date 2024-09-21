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

    it 'can add participants' do
        @activity.add_participant("Maria", 20)

        expect(@activity.participants).to eq({"Maria" => 20})
    end

    it 'can return activity cost' do

        expect(@activity.total_cost).to eq(20)
    end

    it 'can add more participants' do
        @activity.add_participant("Luther", 40)

        expect(@activity.participants).to eq({"Maria" => 20, "Luther" => 40})
    end

    it 'can return the new activity total cost' do

        expect(@activity.total_cost).to eq(60)

end