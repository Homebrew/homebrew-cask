cask "tuist" do
  version "4.86.0"
  sha256 "b795d3a6da1efc18598b036db63529202d62b6921a220ec6604a7ffeea340001"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
