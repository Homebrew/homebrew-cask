cask "tuist" do
  version "4.86.1"
  sha256 "1d9df3fe76f652bfc3c913eeea94ebb7586170e992ee819dc5bffc4ac86d789e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
