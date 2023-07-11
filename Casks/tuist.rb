cask "tuist" do
  version "3.21.0"
  sha256 "920910f6b36a232f75b9e0d000112c94721f2998b3bd397ac4a63ac7f5eff7dc"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
