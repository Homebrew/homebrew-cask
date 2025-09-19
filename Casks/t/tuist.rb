cask "tuist" do
  version "4.77.0"
  sha256 "3a44d1a8ca759d13d936413e2d12bfcc5b4adb9304c4c32eaef32b4f2c46604b"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
