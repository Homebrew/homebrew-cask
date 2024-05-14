cask "tuist" do
  version "4.13.0"
  sha256 "2bd710b4672a4d7928a80b0ba82169f99b9c33cc14336a1645ce873efd43e74f"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
