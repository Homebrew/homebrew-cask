cask "tuist" do
  version "4.54.0"
  sha256 "35fa9c0f0023a7b82c6ff5afdfb8978af7fddf6ac28fc0d443bf007a1ae5b96c"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
