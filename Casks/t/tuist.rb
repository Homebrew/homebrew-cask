cask "tuist" do
  version "4.2.0"
  sha256 "4f1ec5e85d96ef97fdece85dbb6ec78368d066a8c8a0c81f183c89521357e405"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
