cask "tuist" do
  version "4.62.0"
  sha256 "a7631b654278065cb8dc497ba322695daddc2fab9891480ae19aeed47f87bcb5"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
