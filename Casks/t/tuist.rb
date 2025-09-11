cask "tuist" do
  version "4.70.0"
  sha256 "b63e4df04ad1a44cd4aa72520f56f80751838b030268ded577bca7138aa7175e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
