cask "tuist" do
  version "4.110.3"
  sha256 "cdedaf4cc7a8ccb52aeb01d1a0d7fd0f22cf443a100b169687fca0f75ef9face"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
