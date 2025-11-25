cask "tuist" do
  version "4.107.2"
  sha256 "cc339a7cd15e36079edd452f2aadca708e41ed6d2c3f703804532308c1ab487a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
