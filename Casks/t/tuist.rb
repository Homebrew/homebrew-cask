cask "tuist" do
  version "4.178.0"
  sha256 "6e59f661513bfa1354be8071138c9c0feec9e4a5e2a2f587d083581777d6aac8"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
