require '/Users/saritaradia/Desktop/Projects/Golden-Square-API/lib/TimeError.rb'
require 'date'
require 'json'
require 'net/http'


RSpec.describe TimeError do
  it "Returns difference in seconds between server time and the time on this computer" do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(
      URI("https://worldtimeapi.org/api/ip")
    ).and_return('{"abbreviation":"BST","client_ip":"88.98.83.195","datetime":"2022-09-25T19:25:36.595651+01:00","day_of_week":0,"day_of_year":268,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1664130336,"utc_datetime":"2022-09-25T18:25:36.595651+00:00","utc_offset":"+01:00","week_number":38}')
    time = Time.new(2022, 9, 25, 19, 25, 36)
    timeerror = TimeError.new(fake_requester)
    expect(timeerror.error(time)).to eq 0.595651


    #   fake_servertime = double :fake_servertime
  #
  #   timeerror = TimeError.new
  #   expect(timeerror.error).to eq "??"
  end
end

# expect(timeerror.error).to eq -0.073294 #"??" #DateTime.parse(json["2022-09-25T17:59:24.920366+00:00"]).to_time
