cask "tuist" do
  version "4.71.0"
  sha256 "9694aa991d8d74f67c77372cb3bc610babdf0b46097a867133241099ebbdd377"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
