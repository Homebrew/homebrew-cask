cask "tuist" do
  version "4.192.4"
  sha256 "939a7ed7afd34c6bc8d00b81acf7ed20d20ffd85579c5d13ed71f2f131e6dff9"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
