cask "tuist" do
  version "3.36.1"
  sha256 "828875b9c389ee567fd187972a43242f27f1b08a096704afdd1d9ff3cf40edbc"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
