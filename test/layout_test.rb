require 'test_helper'

describe "Repo layout" do
  project_root = Pathname.new(File.expand_path("#{File.dirname(__FILE__)}/../"))

  # todo: a more clever way to do this would be to dispense with
  #       the imperfect IGNORE lists and read the actual repo
  #       contents by reading the output of "git ls-files"

  # dot dirs are always a project of Dir.entries
  # other files are items that the developer hopefully has gitignored
  IGNORE_FILES = %w{
                    .
                    ..
                    .DS_Store
                    .bundle
                    .ruby-version
                    coverage
                   }

  # the developer has hopefully gitignored these
  IGNORE_REGEXPS = [
                    %r{~$},      # emacs
                   ]

  TOPLEVEL_DIRS = %w{
                     .git
                     Casks
                     bin
                     developer
                     doc
                     lib
                     spec
                     test
                    }

  TOPLEVEL_FILES = %w{
                      .gitignore
                      .rspec
                      .travis.yml
                      CONDUCT.md
                      CONTRIBUTING.md
                      Gemfile
                      Gemfile.lock
                      LICENSE
                      README.md
                      Rakefile
                      USAGE.md
                      brew-cask.rb
                     }

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
      entries = Dir.entries(project_root.join('Casks'))
      entries.length.must_be :>, 0
    end

    it "only finds .rb files in the Casks dir" do
      entries = Dir.entries(project_root.join('Casks')) - IGNORE_FILES
      IGNORE_REGEXPS.each do |regexp|
        entries.reject! { |elt| elt.match(regexp) }
      end
      entries.reject! { |elt| elt.match(%r{\.rb$}) }
      entries.must_equal []
    end
  end
end
