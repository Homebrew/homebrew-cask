cask "tuist" do
  version "4.193.4"
  sha256 "c94742466c0fd4b662bfad7a684f55d512fcda21fb3c70da77df94a8c102fdd8"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
