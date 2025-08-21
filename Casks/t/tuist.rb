cask "tuist" do
  version "4.64.1"
  sha256 "bb8ab62a8306d0fca08ed86b5bdf0512ab23f0e940c5b7270de5bd1123b81f57"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
