cask "tuist" do
  version "4.104.0"
  sha256 "fca8fdf9165087cc303163a2021be9f06597ec122c705b0dd1f46626ab1f31a3"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
