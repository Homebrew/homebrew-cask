cask "tuist" do
  version "4.175.0"
  sha256 "042c72bf1b9d6caef634617be58bde8674c1e82c1b28cb9301b8b660fa2d6736"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
