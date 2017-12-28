require "rspec"

require "nice_html_formatter"

RSpec.describe NiceHTMLFormatter do

  it "passes" do
    expect(true).to eql(true)
  end

  it "fails" do
    expect(true).to eql(false)
  end

  it "fails again" do
    raise RuntimeError
  end

  it "is pending"

  xit "is disabled" do
    expect(true).to eql(false)
  end
end
