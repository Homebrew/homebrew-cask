cask "tuist" do
  version "4.63.0"
  sha256 "f9680561ccd20c7d6234aae3a91f3d12da575e2a440bdcdc078a4ec6ed0a8575"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
