cask "tuist" do
  version "4.130.1"
  sha256 "865385a5612ecd8fca1adff6f56deb68c2d1145398d06d33bd4dcb193d07da6b"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
