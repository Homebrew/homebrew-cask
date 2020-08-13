cask "upic" do
  version "0.19.6"
  sha256 "b3f2b22e20b7d813a0d97ff3768004660e105d9e94f8690526e0eaced4a1bbe4"

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
