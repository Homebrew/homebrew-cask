# frozen_string_literal: false

require_relative "ci_matrix"

tap = Tap.from_path(Dir.pwd)
matrix = CiMatrix.generate(tap)

puts "::set-output name=matrix::#{JSON.generate({ include: matrix })}"
