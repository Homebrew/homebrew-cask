cask "tuist" do
  version "4.154.5"
  sha256 "0f1dd610dead8f2306ff7a71e54dc314617813ef851ab0d3145fc3aebc054bc4"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
