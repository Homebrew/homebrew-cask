cask "tuist" do
  version "4.195.8"
  sha256 "b238dd3d581d17f8f97b0301b003d762d01241750202dbc03fcc172ad9c908c8"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
