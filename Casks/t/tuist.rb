cask "tuist" do
  version "4.55.7"
  sha256 "3b0d495d54be3332e0edcad1ce53e2564e9dd51810f43eb008777a151caf7a97"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
