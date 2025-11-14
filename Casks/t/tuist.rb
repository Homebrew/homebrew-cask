cask "tuist" do
  version "4.104.6"
  sha256 "440394c719cee9e9e672ed81cd25231c52c71744fd5b33319331d3d34e5a9775"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
