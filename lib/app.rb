require_relative 'headings'

input1 = [{id: 1, title: 'heading1', heading_level: 0},
          {id: 2, title: 'heading2', heading_level: 2},
          {id: 3, title: 'heading3', heading_level: 1},
          {id: 4, title: 'heading4', heading_level: 1}]

input2 = [{id: 1, title: 'heading1', heading_level: 0},
          {id: 2, title: 'heading2', heading_level: 3},
          {id: 3, title: 'heading3', heading_level: 4},
          {id: 4, title: 'heading4', heading_level: 1},
          {id: 5, title: 'heading4', heading_level: 0}]

input3 = [{id: 1, title: 'heading1', heading_level: 0},
          {id: 2, title: 'heading2', heading_level: 1},
          {id: 3, title: 'heading3', heading_level: 2},
          {id: 4, title: 'heading4', heading_level: 2},
          {id: 5, title: 'heading4', heading_level: 3}]

Headings.new(input1).print
puts
puts '-----'
puts
Headings.new(input2).print
puts
puts '-----'
puts
Headings.new(input3).print
