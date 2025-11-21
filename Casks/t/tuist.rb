cask "tuist" do
  version "4.106.0"
  sha256 "4d3116d3120414d4bc657abf914d980bfb984716beb372ec5c762a85da9ab309"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
