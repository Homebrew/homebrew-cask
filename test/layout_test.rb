require "test_helper"

describe "Repo layout" do
  project_root = Pathname.new(File.expand_path("#{File.dirname(__FILE__)}/../"))

  # TODO: a more clever way to do this would be to dispense with
  #       the imperfect IGNORE lists and read the actual repo
  #       contents by reading the output of "git ls-files"

  # dot dirs are always a project of Dir.entries
  # other files are items that the developer hopefully has gitignored
  IGNORE_FILES = %w[
                   .
                   ..
                   .DS_Store
                   .bundle
                   .rubocop.yml
                   .rubocop_todo.yml
                   .ruby-version
                   coverage
                   vendor
                 ].freeze

  # the developer has hopefully gitignored these
  IGNORE_REGEXPS = [
                     %r{~$}, # emacs
                     %r{.sublime-\w+}, # Sublime Text
                   ].freeze

  TOPLEVEL_DIRS = %w[
                    .git
                    .github
                    Casks
                    Formula
                    ci
                    cmd
                    developer
                    doc
                    lib
                    man
                    spec
                    test
                  ].freeze

  TOPLEVEL_FILES = %w[
                     .editorconfig
                     .gitattributes
                     .gitignore
                     .rspec
                     .rubocop.yml
                     .simplecov
                     .travis.yml
                     CONDUCT.md
                     CONTRIBUTING.md
                     Gemfile
                     Gemfile.lock
                     LICENSE
                     README.md
                     Rakefile
                     tap_migrations.json
                     USAGE.md
                   ].freeze

  describe "toplevel dir" do
    it "finds some files at the top level" do
      entries = Dir.entries(project_root)
      entries.length.must_be :>, 0
    end

    it "only finds expected files at the top level" do
      entries = Dir.entries(project_root) - IGNORE_FILES - TOPLEVEL_DIRS - TOPLEVEL_FILES
      IGNORE_REGEXPS.each do |regexp|
        entries.reject! { |elt| elt.match(regexp) }
      end
      entries.must_equal []
    end
  end

  describe "Casks dir" do
    it "finds some files in the Casks dir" do
      entries = Dir.entries(project_root.join("Casks"))
      entries.length.must_be :>, 0
    end

    it "only finds .rb files in the Casks dir" do
      entries = Dir.entries(project_root.join("Casks")) - IGNORE_FILES
      IGNORE_REGEXPS.each do |regexp|
        entries.reject! { |elt| elt.match(regexp) }
      end
      entries.reject! { |elt| elt.match(%r{\.rb$}) }
      entries.must_equal []
    end
  end
end
