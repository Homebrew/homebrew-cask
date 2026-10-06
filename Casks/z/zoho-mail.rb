cask "zoho-mail" do
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  livecheck_ext = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.10.5"
  sha256 arm:          "3d5213c419a3ecaeee6a02d626533fe83eea8f34547d50baddc89a6346f44ea6",
         intel:        "bb984ecf94a89228021d48143185523e7d888015188a9bdf60cb5f07965c673a",
         x86_64_linux: "f1f6d761de502e4bdd1e3fac3da1573d1b6ad24c3707b19eb3f7df302513826b"

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
