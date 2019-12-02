require 'app'

describe Headings do
  let(:input) { [{id: 1, title: 'aaa', heading_level: 0},
                 {id: 2, title: 'bbb', heading_level: 2},
                 {id: 3, title: 'ccc', heading_level: 2},
                 {id: 4, title: 'ddd', heading_level: 1}] }

  it "should print headers with proper indentation and numeration" do
    expect(Headings.new(input).print).to output("1 aaa").to_stdout
  end
end
