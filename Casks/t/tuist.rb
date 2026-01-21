cask "tuist" do
  version "4.129.1"
  sha256 "2b3bd5b798edbbc11e4860c0833e2a740e83dddba559b1443a8ddf29dccbadc4"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
