cask "tuist" do
  version "4.116.2"
  sha256 "59e1b80293e389056a631cd202008623a6cff0a9bced1a84083f6d7219ca2fed"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
