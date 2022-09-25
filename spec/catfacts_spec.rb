require '/Users/saritaradia/Desktop/Projects/Golden-Square-API/lib/catfacts.rb'

RSpec.describe CatFacts do
  it "provides a cat fact" do
    fake_request = double :requester
    expect(fake_request).to receive(:get).with(URI("https://catfact.ninja/fact")
    ).and_return('{"fact":"The cats tail is used to maintain balance.","length":43}')
    cat_fact = CatFacts.new(fake_request)
    expect(cat_fact.provide).to eq "Cat fact: The cats tail is used to maintain balance."
  end
end

#curl
# {"fact":"The cats tail is used to maintain balance.","length":43}
#"The cats tail is used to maintain balance."

#return
# "Cat fact: #{get_cat_fact["fact"]}"
# "Cat fact: "The cats tail is used to maintain balance."