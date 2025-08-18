cask "tuist" do
  version "4.63.2"
  sha256 "6ac4d2c43535da6f22fc0a8d19ac0917a3fbbaf2c4a177d0f48c554e5c2b4978"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
