cask "tuist" do
  version "4.78.3"
  sha256 "5d9a40d96ea9003f4202715ab80f7a17069a19cf90e4de83762d4c224d60d3bb"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
