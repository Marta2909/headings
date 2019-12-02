class Heading
  attr_accessor :title, :heading_level, :heading_number

  def initialize(heading, heading_number)
    @title = heading[:title]
    @heading_level = heading[:heading_level]
    @heading_number = heading_number
  end
end
