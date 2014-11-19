require 'test_helper'

describe Cask::CLI::Search do
  it "lists the available Casks that match the search term" do
    lambda {
      Cask::CLI::Search.run('intellij')
    }.must_output <<-OUTPUT.gsub(/^ */, '')
      ==> Partial matches
      intellij-idea
      intellij-idea-ce
    OUTPUT
  end

  it "shows that there are no Casks matching a search term that did not result in anything" do
    lambda {
      Cask::CLI::Search.run('foo-bar-baz')
    }.must_output("No Cask found for \"foo-bar-baz\".\n")
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
    }.must_output "==> Regexp matches\ngoogle-chrome\n"
  end

  it "Returns both exact and partial matches" do
    out, err = capture_io do
      Cask::CLI::Search.run('mnemosyne')
    end
    out.must_match(/^==> Exact match\nmnemosyne\n==> Partial matches\nsubclassed-mnemosyne/)
  end

  it "does not search the Tap name" do
    out, err = capture_io do
      Cask::CLI::Search.run('caskroom')
    end
    out.must_match(/^No Cask found for "caskroom"\.\n/)
  end
end
