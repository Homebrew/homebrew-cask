cask "tuist" do
  version "4.194.1"
  sha256 "ed6da8b73eb9b4c9a31d54eed520fd821d7194d5a98e3e36dc10cba79480b567"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
