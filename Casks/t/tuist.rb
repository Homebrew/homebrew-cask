cask "tuist" do
  version "4.101.0"
  sha256 "caa36c8ec8913ad9cabc0c3f957404fec06778c2359971af94a1f5b248e56d7d"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
