cask "tuist" do
  version "4.166.0"
  sha256 "8d03039478464839f03568830f44c26c2c1399736bf4d3e2c02a0f201a0fba51"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
