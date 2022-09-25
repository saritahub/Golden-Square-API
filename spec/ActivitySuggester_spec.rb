# require 'net/http'
require '/Users/saritaradia/Desktop/Projects/Golden-Square-API/lib/ActivitySuggester.rb'

RSpec.describe ActivitySuggester do
  it "suggests an activity" do
    # activity_suggester = ActivitySuggester.new(Net::HTTP) #REPLACE (Net::HTTP) with double

    fake_requester = double :requester
    expect(fake_requester).to receive(:get).with("www.boredapi.com", "/api/activity").and_return('{"activity":"Paint the first thing you see","type":"recreational","participants":1,"price":0.25,"link":"","key":"1162360","accessibility":0.2}')
    activity_suggester = ActivitySuggester.new(fake_requester)
    expect(activity_suggester.suggest).to eq "Why not: Paint the first thing you see"
  end





  # it "calls an API to provide a suggested activity" do
  #   requester_dbl = double :requester
  #   # We expect `requester_dbl` to be called with `#get` and the right args
  #   # And we tell it to return a sample output of the API
  #   # I got this using `curl "https://www.boredapi.com/api/activity"`
  #   expect(requester_dbl).to receive(:get)
  #                              .with(URI("https://www.boredapi.com/api/activity"))
  #                              .and_return('{"activity":"Take your dog on a walk","type":"relaxation","participants":1,"price":0,"link":"","key":"9318514","accessibility":0.2}')
  
  #   activity_suggester = ActivitySuggester.new(requester_dbl)
  #   result = activity_suggester.suggest
  #   expect(result).to eq "Why not: Take your dog on a walk"
  # end
end