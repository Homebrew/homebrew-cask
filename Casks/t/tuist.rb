cask "tuist" do
  version "4.130.3"
  sha256 "1f382585da979ad6fb5476a0bd9f52cd7a4fdf2b4b9365f761df370253226ca3"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
