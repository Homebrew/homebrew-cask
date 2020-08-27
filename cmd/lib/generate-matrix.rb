# frozen_string_literal: false

require_relative "ci_matrix"

tap = Tap.from_path(Dir.pwd)

matrix = { include: CiMatrix.generate(tap) }

puts JSON.pretty_generate(matrix)
puts "::set-output name=matrix::#{JSON.generate(matrix)}"
