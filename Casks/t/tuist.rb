cask "tuist" do
  version "4.109.0"
  sha256 "14f1cffb25286a34534f432089203b694c66525798db210a23a690b11dbd9c7f"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
