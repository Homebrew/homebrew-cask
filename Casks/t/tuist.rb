cask "tuist" do
  version "4.155.1"
  sha256 "ef7f6e2f8a20f7495c84c0bab9dbe057b998f6bb567d6e4807241dfad4cfac65"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
