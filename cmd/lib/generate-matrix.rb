# frozen_string_literal: false

require "utils/github"

require_relative "ci_matrix"

pr_url, = ARGV

pr = GitHub.open_api(pr_url)
labels = pr.fetch("labels").map { |l| l.fetch("name") }

tap = Tap.from_path(Dir.pwd)

syntax_job = {
  name: "syntax",
}

matrix = [syntax_job]

unless labels.include?("ci-syntax-only")
  cask_matrix = CiMatrix.generate(tap)

  cask_matrix.each do |job|
    job[:skip_install] = labels.include?("ci-skip-install")
  end

  matrix += cask_matrix
end

puts JSON.pretty_generate(matrix)
puts "::set-output name=matrix::#{JSON.generate(matrix)}"
