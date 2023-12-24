cask "tuist" do
  version "3.36.5"
  sha256 "5d00d6423faaae8100454adc157e531f6d9e2910969dd60a5681509952eec777"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
