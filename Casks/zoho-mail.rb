cask "zoho-mail" do
  arch = Hardware::CPU.intel? ? "" : "arm64-"

  version "1.4.1"

  if Hardware::CPU.intel?
    sha256 "8301dd5071e1091917aaa45bf7f16944b2c22cbf3435f28282cb0be57f115076"
  else
    sha256 "607c5c4614a37493d7dd5a2e06adf627a7f8e548acc81b2f60b637b78fecfbd5"
  end

  url "https://downloads.zohocdn.com/zmail-desktop/mac/zoho-mail-desktop-installer-#{arch}v#{version}.dmg",
      verified: "downloads.zohocdn.com/zmail-desktop/mac/"
  name "Zoho Mail"
  desc "Email client"
  homepage "https://www.zoho.com/mail/desktop/"

  livecheck do
    url "https://downloads.zohocdn.com/zmail-desktop/artifacts.json"
    regex(/zoho[._-]mail[._-]desktop[._-]installer[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Zoho Mail - Desktop.app"
end
