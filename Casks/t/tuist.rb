cask "tuist" do
  version "3.23.1"
  sha256 "f4cda67de3ce4879a863e605200dbfd031f4268a30754d098e1badf8a91310fd"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
