require 'spec_helper'

describe "shops/recommends" do
	before(:each) do
		assign(:recommend_shops, [
    	stub_model(Shop, :name => "shop1"),
    	stub_model(Shop, :name => "shop2"),
    ])
	end

  it "display all recommended shops" do
    render

    expect(rendered).to match(/shop1/)
    expect(rendered).to match(/shop2/)
  end

end
