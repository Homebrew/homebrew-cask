require 'test_helper'

describe Cask::CLI::Search do
  it "lists the available casks that match the search term" do
    lambda {
      Cask::CLI::Search.run('intellij')
    }.must_output <<-OUTPUT.gsub(/^ */, '')
      intellij-idea-community
      intellij-idea-ultimate
    OUTPUT
  end

  it "shows that there are no casks matching a search term that did not result in anything" do
    lambda {
      Cask::CLI::Search.run('foo-bar-baz')
    }.must_output("No cask found for \"foo-bar-baz\".\n")
  end

  it "lists all available Casks with no search term" do
    out, err = capture_io do
      Cask::CLI::Search.run
    end
    out.must_match(/google-chrome/)
    out.length.must_be :>, 1000
  end

  it "ignores hyphens in search terms" do
    out, err = capture_io do
      Cask::CLI::Search.run('goo-gle-chrome')
    end
    out.must_match(/google-chrome/)
    out.length.must_be :<, 100
  end

  it "ignores hyphens in Cask names" do
    out, err = capture_io do
      Cask::CLI::Search.run('googlechrome')
    end
    out.must_match(/google-chrome/)
    out.length.must_be :<, 100
  end

  it "accepts multiple arguments" do
    out, err = capture_io do
      Cask::CLI::Search.run('google chrome')
    end
    out.must_match(/google-chrome/)
    out.length.must_be :<, 100
  end

  it "accepts a regexp argument" do
    lambda {
      Cask::CLI::Search.run('/^google-c[a-z]rome$/')
    }.must_output "google-chrome\n"
  end

  it "does not search the Tap name" do
    out, err = capture_io do
      Cask::CLI::Search.run('phinze')
    end
    out.must_match(/^No cask found for "phinze"\.\n/)
  end
end
