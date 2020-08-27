cask "upic" do
  version "0.20.0"
  sha256 "3bbd69d7ac8c4b6f45be37e8fef19137506b45cc8354a89db27f6d7fdcddc28c"

  url "https://github.com/gee1k/uPic/releases/download/v#{version}/uPic.zip"
  appcast "https://github.com/gee1k/uPic/releases.atom"
  name "uPic"
  homepage "https://github.com/gee1k/uPic"

  depends_on macos: ">= :sierra"

  app "uPic.app"

  zap trash: [
    "~/Library/Preferences/com.svend.uPic.plist",
    "~/Library/Caches/com.svend.uPic",
  ]
end
