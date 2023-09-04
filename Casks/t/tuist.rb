cask "tuist" do
  version "3.25.0"
  sha256 "2b225d21e9b67528c13ee4729f5ef3aefc34b25c8b4373b319da62f391d5b51a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
