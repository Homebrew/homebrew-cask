cask "tuist" do
  version "3.42.2"
  sha256 "a61915ce6f88d3834c57e8d5ffa8707075041b9e3e911bac9803c256002c941a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
