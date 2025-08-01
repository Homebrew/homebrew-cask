cask "tuist" do
  version "4.57.0"
  sha256 "f89fbfd53458124745b5bf19a99b2cd5be83cd1e19f81ebf37667e715d7543d5"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
