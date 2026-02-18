cask "tuist" do
  version "4.147.0"
  sha256 "713993674ec01281952473c707d9ecbaf6691f447cee3b891031a8f3fba23dc2"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
