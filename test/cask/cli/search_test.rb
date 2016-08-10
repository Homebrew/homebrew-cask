require "test_helper"

describe Hbc::CLI::Search do
  it "lists the available Casks that match the search term" do
    lambda {
      Hbc::CLI::Search.run("photoshop")
    }.must_output <<-OUTPUT.gsub(%r{^ *}, "")
      ==> Partial matches
      adobe-photoshop-cc
      adobe-photoshop-lightroom
    OUTPUT
  end

  it "shows that there are no Casks matching a search term that did not result in anything" do
    lambda {
      Hbc::CLI::Search.run("foo-bar-baz")
    }.must_output("No Cask found for \"foo-bar-baz\".\n")
  end

  it "lists all available Casks with no search term" do
    out = capture_io { Hbc::CLI::Search.run }[0]
    out.must_match(%r{google-chrome})
    out.length.must_be :>, 1000
  end

  it "ignores hyphens in search terms" do
    out = capture_io { Hbc::CLI::Search.run("goo-gle-chrome") }[0]
    out.must_match(%r{google-chrome})
    out.length.must_be :<, 100
  end

  it "ignores hyphens in Cask tokens" do
    out = capture_io { Hbc::CLI::Search.run("googlechrome") }[0]
    out.must_match(%r{google-chrome})
    out.length.must_be :<, 100
  end

  it "accepts multiple arguments" do
    out = capture_io { Hbc::CLI::Search.run("google chrome") }[0]
    out.must_match(%r{google-chrome})
    out.length.must_be :<, 100
  end

  it "accepts a regexp argument" do
    lambda {
      Hbc::CLI::Search.run("/^google-c[a-z]rome$/")
    }.must_output "==> Regexp matches\ngoogle-chrome\n"
  end

  it "Returns both exact and partial matches" do
    out = capture_io { Hbc::CLI::Search.run("mnemosyne") }[0]
    out.must_match(%r{^==> Exact match\nmnemosyne\n==> Partial matches\nsubclassed-mnemosyne})
  end

  it "does not search the Tap name" do
    out = capture_io { Hbc::CLI::Search.run("caskroom") }[0]
    out.must_match(%r{^No Cask found for "caskroom"\.\n})
  end
end
