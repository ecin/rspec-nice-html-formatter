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

  it "looks nice even if it fails for a test with a really long description like this one, I mean, like a really reall long description, so long that I wonder just how many different context blocks the test went through before arriving at its final, clear assertion" do
    fail
  end

  it "correctly escapes <script> tags" do
    raise RuntimeError, "even when they're in an <error> message"
  end

  it "is pending"

  xit "is disabled" do
    expect(true).to eql(false)
  end
end
