cask "tuist" do
  version "4.195.2"
  sha256 "736e3b34f2129c1e13e5de7c8136ef6bf65a87fa51af3390595c16e06ff75936"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
