cask "tuist" do
  version "4.198.3"
  sha256 "c40399ea9503ee933833c8648a881edd0c843049926e77db784b8ce3d1d12ad4"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
