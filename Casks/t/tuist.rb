cask "tuist" do
  version "4.53.4"
  sha256 "e18418f78fee5a1fc7e1c0b385d4372b1221d7d0fc9a650208328c17c6700381"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
