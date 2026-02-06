cask "tuist" do
  version "4.140.2"
  sha256 "e2391e1fa246fec3f699c7971c68659dcc6d1edea118e01480b543e892c2afe3"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
