cask "tuist" do
  version "4.195.0"
  sha256 "773a4de6b242b182c4a908024f92bf516270dcc26b3d0d1cc661ade242bd7c24"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
