cask "tuist" do
  version "4.63.3"
  sha256 "b3de67e0eb890d814bc9c35a1483a0981e334d04b84a9b2a248426d6e9c234de"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
