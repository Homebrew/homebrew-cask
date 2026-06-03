cask "tuist" do
  version "4.195.15"
  sha256 "781fc32fe441f5ddff17123b2438b0a93716acecaba3e5342c1a65b94b3d792d"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
