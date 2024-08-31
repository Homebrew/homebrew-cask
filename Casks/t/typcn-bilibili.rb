cask "typcn-bilibili" do
  version "2.56"
  sha256 "62784fa27396644337c5ee63d6e3ad32e3436aed7eb79009a306ef6100527452"

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg"
  name "Bilibili"
  desc "Unofficial bilibili client"
  homepage "https://github.com/typcn/bilibili-mac-client/"

  deprecate! date: "2024-08-30", because: :unmaintained

  auto_updates true

  app "Bilibili.app"

  zap trash: [
    "~/Library/Application Support/com.crashlytics/com.typcn.bilibili",
    "~/Library/Application Support/com.typcn.bilibili",
    "~/Library/WebKit/com.typcn.bilibili",
  ]

  caveats do
    requires_rosetta
  end
end
