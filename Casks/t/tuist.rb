cask "tuist" do
  version "4.198.1"
  sha256 "45157e98b3a338237a4a4cc6f5cd6a12d3947460cd99d6667d723bf91312091d"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
