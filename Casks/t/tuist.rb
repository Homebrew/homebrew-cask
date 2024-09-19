cask "tuist" do
  version "4.27.0"
  sha256 "b96761836fabd2fd1793a77fde1a9109d3c71e47189d97f63438f2122c17131d"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
