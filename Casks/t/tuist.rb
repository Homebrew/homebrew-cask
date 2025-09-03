cask "tuist" do
  version "4.66.0"
  sha256 "9ef6637a35d4fec5743fc616c948a10af0318cafaafeac492cf71f3937bc76e6"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
