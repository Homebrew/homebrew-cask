cask "tuist" do
  version "4.11.0"
  sha256 "c87bf00d0bbbcb5e04953250720b7b33765c0e56b518c5de6536739e04e09b2b"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
