cask "tuist" do
  version "4.192.3"
  sha256 "c0321dd60fc8a8ea8a1977db14e566a95d59864c8639f942756e7e5e5316ae41"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
