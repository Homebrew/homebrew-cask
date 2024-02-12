cask "tuist" do
  version "4.1.1"
  sha256 "835f6574d70226580bbd3dc1194f6123318945c73b95af86079264d9d4ddb390"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
