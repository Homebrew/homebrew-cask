cask "tuist" do
  version "4.30.0"
  sha256 "b761881f5f7b6188ac8de62c9887775eec148fb6c8e3b982db281d353a300542"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
