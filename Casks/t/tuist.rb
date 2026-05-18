cask "tuist" do
  version "4.195.1"
  sha256 "30aa25c62f5aa77f1d439976216387a1125f48fe39ad9291ff386a76f2084aa5"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
