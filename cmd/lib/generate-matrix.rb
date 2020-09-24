# frozen_string_literal: true

require "utils/github"

require_relative "ci_matrix"

pr_url, = ARGV

pr = GitHub.open_api(pr_url)
labels = pr.fetch("labels").map { |l| l.fetch("name") }

tap = Tap.from_path(Dir.pwd)

syntax_job = {
  name: "syntax",
  tap:  tap.name,
}

matrix = [syntax_job]

unless labels.include?("ci-syntax-only")
  cask_jobs = CiMatrix.generate(tap, labels: labels)

  # If casks were changed, skip `audit` for all others.
  syntax_job[:skip_audit] = true if cask_jobs.any?

  matrix += cask_jobs
end

puts JSON.pretty_generate(matrix)
puts "::set-output name=matrix::#{JSON.generate(matrix)}"
