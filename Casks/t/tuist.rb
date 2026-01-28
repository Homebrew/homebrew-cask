cask "tuist" do
  version "4.132.0"
  sha256 "2208f3f6652f8d5a570b322d6b45836aebc40f5b67255de96eee7bcaa251fd2c"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
