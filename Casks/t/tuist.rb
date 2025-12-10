cask "tuist" do
  version "4.113.0"
  sha256 "97140ffdd646da20d8113e84ca777b5838cae2c38bc9e5d5b1627a91e2a5af58"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
