cask "tuist" do
  version "4.90.0"
  sha256 "9c4e45ccceaee603985f0b3b1934341ee18d18bb9d5a6213352ff3ed7a3dfa86"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
