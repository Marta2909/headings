require_relative 'heading'

class Headings
  attr_accessor :headings

  def initialize(headings)
    @headings = headings
  end

  def print
    @@levels_count = {}
    headings.each do |heading|
      heading_level = heading[:heading_level]
      count_headings_per_level(heading_level)
      heading_number = count_heading_number(heading_level)
      print_heading Heading.new(heading, heading_number)
    end
  end

  private

  def print_heading(heading)
    puts '      ' * heading.heading_level + heading.heading_number + ' ' + heading.title
  end

  def count_headings_per_level(heading_level)
    if @@levels_count[heading_level].nil?
      @@levels_count[heading_level] = 1
    else
      @@levels_count[heading_level] += 1
    end
  end

  def count_heading_number(heading_level)
    levels = []
    (0..heading_level).each do |level|
      @@levels_count[level] = 1 if @@levels_count[level].nil?
      levels << @@levels_count[level].to_i
    end
    levels.join('.')
  end
end
