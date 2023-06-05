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

tap = Tap.fetch(ENV.fetch("GITHUB_REPOSITORY"))

runner = CiMatrix.random_runner[:name]
syntax_job = {
  name:         "syntax",
  tap:          tap.name,
  runner:       runner,
  skip_readall: false,
}

matrix = [syntax_job]

unless labels.include?("ci-syntax-only")
  cask_jobs = CiMatrix.generate(tap, labels: labels)

  if cask_jobs.any?
    # If casks were changed, skip `audit` for whole tap.
    syntax_job[:skip_audit] = true

    # If casks were cahnged, skip `readall` in the syntax job.
    syntax_job[:skip_readall] = true

    # The syntax job only runs `style` at this point, which should work on Linux.
    # Running on macOS is currently faster though, since `homebrew/cask` and
    # `homebrew/core` are already tapped on macOS CI machines.
    # syntax_job[:runner] = "ubuntu-latest"
  end

  matrix += cask_jobs
end

syntax_job[:name] += " (#{syntax_job[:runner]})"

puts JSON.pretty_generate(matrix)
File.open(ENV.fetch("GITHUB_OUTPUT"), "a") do |f|
  f.puts "matrix=#{JSON.generate(matrix)}"
end
