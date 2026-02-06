cask "tuist" do
  version "4.140.1"
  sha256 "ef6bec1372a836525d1ac3bc7819942bccf5d518ccaa551e907b468fae62a285"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
