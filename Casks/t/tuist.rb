cask "tuist" do
  version "4.200.2"
  sha256 "760b0547c1d4d413c4d0c96393d524f6d4ae65cf8c234f249ca29b0e15500857"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
