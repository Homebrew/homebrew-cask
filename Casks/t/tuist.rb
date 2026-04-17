cask "tuist" do
  version "4.182.0"
  sha256 "33f869ba73fc742a1d2b6e7c82d3e98f54ae57201a00b303b3076419be80b9b9"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
