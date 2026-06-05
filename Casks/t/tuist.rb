cask "tuist" do
  version "4.196.0"
  sha256 "3a2188fee0fa82f5b21e845b3eeeb9821a3099aa959c5e5bb21ca2774e60e4eb"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
