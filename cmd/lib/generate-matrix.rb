# frozen_string_literal: false

require_relative "ci_matrix"

tap = Tap.from_path(Dir.pwd)

syntax_job = {
  name: "syntax",
}

matrix = [syntax_job]

matrix += CiMatrix.generate(tap) unless ARGV.include?("--syntax-only")

puts JSON.pretty_generate(matrix)
puts "::set-output name=matrix::#{JSON.generate(matrix)}"
