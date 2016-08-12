#!/System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/bin/ruby -W0 -EUTF-8:UTF-8
# encoding: UTF-8

# Ruby version check
unless RUBY_VERSION.split(".").first.to_i >= 2
  alt_ruby = which "ruby"
  alt_ruby_version = `#{alt_ruby} --version`.chomp[%r{\d\.\d}, 0] if alt_ruby

  unless alt_ruby && alt_ruby_version.split(".").first.to_i >= 2
    abort "Ruby 2.0 or above is required. You can install it with `brew install ruby`."
  end

  exec alt_ruby, "-W0", "-I#{HOMEBREW_LIBRARY_PATH}", "-rglobal", __FILE__, *ARGV
end

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
