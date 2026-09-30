cask "zoho-mail" do
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  livecheck_ext = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.10.4"
  sha256 arm:          "c8eb16a274fb090b6f8efefcb076441173c168c4e79b011a2b8f1375b66ac49d",
         intel:        "0e42386f42eed1958d7691055da6c02eecf08e6c05c7c21b00953ae04bde5a67",
         x86_64_linux: "74d730480e4559a7a1ec0be4099bc3b9c62bb1cddad7acd1a0b309c1048a5135"

  on_macos do
    arch arm: "arm64-"

    url "https://downloads.zohocdn.com/zmail-desktop/mac/zoho-mail-desktop-lite-installer-#{arch}v#{version}.dmg"

    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    depends_on macos: :monterey

    app "Zoho Mail - Desktop.app"

    uninstall quit: "com.zoho.mail.desktop"

    zap trash: [
      "~/Library/Application Support/Zoho Mail - Desktop",
      "~/Library/Logs/Zoho Mail - Desktop",
      "~/Library/Preferences/com.zoho.mail.desktop.plist",
      "~/Library/Saved Application State/com.zoho.mail.desktop.savedState",
    ]
  end
  on_linux do
    url "https://downloads.zohocdn.com/zmail-desktop/linux/zoho-mail-desktop-lite-x64-v#{version}.AppImage"

    depends_on arch: :x86_64

    app_image "zoho-mail-desktop-lite-x64-v#{version}.AppImage", target: "Zoho Mail.AppImage"
  end

  name "Zoho Mail"
  desc "Email client"
  homepage "https://www.zoho.com/mail/desktop/"

  livecheck do
    url "https://downloads.zohocdn.com/zmail-desktop/artifacts.json"
    regex(/v?(\d+(?:\.\d+)+)\.#{livecheck_ext}$/i)
    strategy :json do |json, regex|
      json[os]&.values&.filter_map { |item| item[livecheck_arch]&.[](regex, 1) }
    end
  end
end
