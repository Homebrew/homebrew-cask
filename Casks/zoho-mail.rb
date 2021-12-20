cask "zoho-mail" do
  arch = Hardware::CPU.intel? ? "" : "arm64-"

  version "1.3.2"

  if Hardware::CPU.intel?
    sha256 "e523500871505808527a251b4c0f447a3d82c4f1df37df69932c4a5b9eda9f19"
  else
    sha256 "3f5a3613e06e6fca2a317087e24ec24c2eb0c070f312c78416bd36de63a4f08f"
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
