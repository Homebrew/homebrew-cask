cask "tuist" do
  version "4.146.2"
  sha256 "b4db13408164e34a81c1a8489136f3ff1f382307e839191cd514047a2ee3c64e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
