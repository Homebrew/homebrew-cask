cask "tuist" do
  version "4.208.0"
  sha256 "e9e720972a82da9423c8b197b812bc08ed1607b0acc75c66eb25350843a3ee9b"

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
