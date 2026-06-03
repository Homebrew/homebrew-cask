cask "tuist" do
  version "4.195.13"
  sha256 "4e1be9d01cbcb5951e3202c94293ab51ecbcf00091c33bd36ceca61cb74dd75d"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
