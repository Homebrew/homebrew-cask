cask "tuist" do
  version "4.193.1"
  sha256 "73f0fc085130ee591ac812d36f6489a3698d0a42c81ee5cf52d8c5bf57be97a1"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
