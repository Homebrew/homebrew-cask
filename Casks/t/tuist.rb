cask "tuist" do
  version "4.200.1"
  sha256 "e0463f9d8ee0b51084bfd663c7e543b3a7840571d9920300c615d0c80cc39607"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
