cask "tuist" do
  version "4.168.0"
  sha256 "4b2b7149d92c60bc3dca8c7b576b5bc774bfcbcee5b37bec90e1ed5ee6fac901"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
