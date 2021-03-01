# frozen_string_literal: true

require "tap"
require "utils/github/api"

require_relative "ci_matrix"

pr_url, = ARGV

labels = if pr_url
  pr = GitHub::API.open_rest(pr_url)
  pr.fetch("labels").map { |l| l.fetch("name") }
else
  []
end

tap = Tap.from_path(Dir.pwd)

runner = CiMatrix.random_runner[:name]
syntax_job = {
  name:   "syntax",
  tap:    tap.name,
  runner: runner,
}

matrix = [syntax_job]

unless labels.include?("ci-syntax-only")
  cask_jobs = CiMatrix.generate(tap, labels: labels)

  if cask_jobs.any?
    # If casks were changed, skip `audit` for whole tap.
    syntax_job[:skip_audit] = true

    # The syntax job only runs `style` at this point, which should work on Linux.
    syntax_job[:runner] = "ubuntu-latest"
  end

  matrix += cask_jobs
end

syntax_job[:name] += " (#{syntax_job[:runner]})"

puts JSON.pretty_generate(matrix)
puts "::set-output name=matrix::#{JSON.generate(matrix)}"
