cask "tuist" do
  version "4.43.2"
  sha256 "9681584c15937f4f4d5bf4b41adf7abbc3f425dcc609fb7375edb26abebf469f"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
