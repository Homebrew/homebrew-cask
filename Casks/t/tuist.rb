cask "tuist" do
  version "4.52.2"
  sha256 "181bcfa48389444f159a4d8790b042164c8462e91245519f55a1c7ae1414513e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
