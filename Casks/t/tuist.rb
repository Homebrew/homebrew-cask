cask "tuist" do
  version "4.164.1"
  sha256 "e4b89335461f86074926c5f33cc5523b211b68cb65747769a14c574b63f77ed6"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
