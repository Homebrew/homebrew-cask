cask "tuist" do
  version "4.45.1"
  sha256 "53bc95f0dcf94d8b10ea9257f3696b9a0f89660aaaacec5e6f8946fc90cb96c0"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
