cask "tuist" do
  version "4.195.5"
  sha256 "297cdfcaf783bd61e5b261999f8a348b1654fceb250f9e0608f345c0de435811"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
