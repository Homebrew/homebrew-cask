cask "tuist" do
  version "4.195.16"
  sha256 "a7dc59a3a639f80f993a9ce3280fdd9f9225ef3d20c1b41d983fbb9065ae1ceb"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
