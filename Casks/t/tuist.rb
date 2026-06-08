cask "tuist" do
  version "4.196.1"
  sha256 "2c582586da8066640c99549977b9d2dbba4e147af78a34bbe31c79fae62d2b04"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
