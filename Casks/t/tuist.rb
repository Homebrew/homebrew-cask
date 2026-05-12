cask "tuist" do
  version "4.193.3"
  sha256 "72a2614c961f0ce05ad6ffc669224447c325cc716e9fea44a527bd8d2cd10b94"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
