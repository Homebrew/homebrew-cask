cask "tuist" do
  version "4.192.1"
  sha256 "cb07f8625a22c7ae24416bf7dfadfb5bb7ead68f728c62aa2af35b586f22ab48"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
