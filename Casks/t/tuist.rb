cask "tuist" do
  version "4.65.6"
  sha256 "201eabbdb198bc060657532d7f477a3a4521c824eecb679a4f893b8b6aad10f9"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
