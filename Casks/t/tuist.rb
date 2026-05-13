cask "tuist" do
  version "4.194.0"
  sha256 "ebbf09a5597aed7ecba0a82de709f9d4dd6d328a5f3b0d98d64e90db6e95b7c3"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
