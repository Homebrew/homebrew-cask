cask "zoho-mail" do
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  livecheck_ext = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.10.3"
  sha256 arm:          "9d986ad7ea4f87c716496f2bce70be060c29816240ff86cb8f72891fc0258680",
         intel:        "359cbe7e6df497e20cc9eeb041da38b827d63178dd2ab9263de81b1f3ce4b185",
         x86_64_linux: "6943847634a44a05b1df0519a98149799fa1d2b4e810678fdb6893603f24e85e"

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
