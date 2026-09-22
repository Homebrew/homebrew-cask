cask "tuist" do
  version "4.209.0"
  sha256 "d390e058348729acfc79e30bcc467aef2aabe3881edbd2c8d43fa7f4d62ea1d7"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :git
  end

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
