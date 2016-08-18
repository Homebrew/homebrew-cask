require "English"

repo_root = Pathname(__FILE__).realpath.parent.parent
repo_root.cd do
  ENV["HOMEBREW_NO_ANALYTICS_THIS_RUN"] = "1"

  Homebrew.install_gem_setup_path! "bundler"
  unless quiet_system("bundle", "check")
    system "bundle", "install", "--path", "vendor/bundle"
  end

  test_task = "test"
  %w[rspec minitest coverage].each do |subtask|
    next unless ARGV.flag?("--#{subtask}")
    test_task = "test:#{subtask}"
  end

  system "bundle", "exec", "rake", test_task
  Homebrew.failed = !$CHILD_STATUS.success?
end
