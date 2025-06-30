cask "tuist" do
  version "4.55.2"
  sha256 "3ec18ac96f91fa5aa7a85aee2c9b2675c5c1469661088fd32569b79ca61ad0ed"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
