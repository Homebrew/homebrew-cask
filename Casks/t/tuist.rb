cask "tuist" do
  version "4.144.4"
  sha256 "3fffb5d9e3e210bac964ec739a4b7c846d722f0bb3deaee1f52cb2cc0f119cf3"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
