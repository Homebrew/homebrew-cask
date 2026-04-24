cask "tuist" do
  version "4.186.2"
  sha256 "0988091244ee40022237e00b6bb589932ff545fd737ad15208412a0dd7c8f7a7"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
