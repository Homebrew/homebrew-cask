cask "tuist" do
  version "4.129.0"
  sha256 "2c122428d77ca901127e235303548f1a39e7179fe249e4db38c5463ad26e8dc2"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
