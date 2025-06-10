cask "tuist" do
  version "4.52.1"
  sha256 "93bdf07c0f4512aa5721137e06112929760d293a88b271a2a019cc2af492b479"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
