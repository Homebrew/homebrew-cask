cask "zesarux" do
  version "12.1"
  sha256 "d841c237c59caf597dfc71f42ce9326bec3f419fc32f426b0350cd3b02a57e67"

  url "https://github.com/chernandezba/zesarux/releases/download/ZEsarUX-#{version}/ZEsarUX_macos-#{version}.dmg"
  name "ZEsarUX"
  desc "ZX machines emulator"
  homepage "https://github.com/chernandezba/zesarux"

  livecheck do
    url :url
    regex(/ZEsarUX[._-]v?([\dX]+(?:\.\d+)*)/i)
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "ZEsarUX.app"

  zap trash: [
    "~/.zesaruxrc",
    "~/Library/Saved Application State/com.cesarhernandez.zesarux.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
