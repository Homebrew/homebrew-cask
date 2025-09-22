cask "tuist" do
  version "4.78.1"
  sha256 "892ce4532ebc6c00de1417f77cfd3f36c479010f2507c9a3036324d50ba68afa"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
