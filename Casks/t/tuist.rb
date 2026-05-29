cask "tuist" do
  version "4.195.11"
  sha256 "56893e7f14781fd5e230c459ee80a22b7f401e4e5ae0aa041ccf2d852dcbd0f4"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
