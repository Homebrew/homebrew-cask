cask "upic" do
  version "0.20.1"
  sha256 "6015aaac535600015ccc940dbb77a514476af15b1ae3e9a8249d0ce6b06039c0"

  url "https://github.com/gee1k/uPic/releases/download/v#{version}/uPic.zip"
  appcast "https://github.com/gee1k/uPic/releases.atom"
  name "uPic"
  desc "Native and simple picture and file upload tool"
  homepage "https://github.com/gee1k/uPic"

  depends_on macos: ">= :sierra"

  app "uPic.app"

  zap trash: [
    "~/Library/Preferences/com.svend.uPic.plist",
    "~/Library/Caches/com.svend.uPic",
  ]
end
