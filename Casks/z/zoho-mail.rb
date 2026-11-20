cask "zoho-mail" do
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  livecheck_ext = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.10.6"
  sha256 arm:          "511316093fbe016a979b6cac139ed137fab70aa83d3420127dbfd9eca9515d70",
         intel:        "e6c9aa29375678f34a59b454238ff043c68dff44e2bdf9ddbc0a19b7fd59008a",
         x86_64_linux: "386d56987c42f563f0af83be8832ee9e934167f50bba70516d8739d072ae0cbe"

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
