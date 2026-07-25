cask "zen" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.21.8b"

  filename = on_system_conditional macos: "zen.macos-universal.dmg", linux: "zen-#{arch}.AppImage"

  url "https://github.com/zen-browser/desktop/releases/download/#{version}/#{filename}",
      verified: "github.com/zen-browser/desktop/"
  name "Zen Browser"
  desc "Gecko based web browser"
  homepage "https://zen-browser.app/"

  livecheck do
    url "https://updates.zen-browser.app/updates/browser/Darwin_aarch64-gcc3/release/update.xml"
    strategy :xml do |xml|
      xml.get_elements("//update").map { |item| item.attributes["appVersion"] }
    end
  end

  auto_updates true

  on_macos do
    sha256 "4d54c527b1e18762a7d76b0ecf0ce959a29329fe0a68f737d97e644e13341e07"

    conflicts_with cask: "zen-privacy"

    app "Zen.app"
    binary "#{appdir}/Zen.app/Contents/MacOS/zen"

    uninstall quit: "app.zen-browser.zen"

    zap trash: [
          "~/Library/Application Support/Zen",
          "~/Library/Caches/Mozilla/updates/Applications/Zen Browser",
          "~/Library/Caches/Mozilla/updates/Applications/Zen",
          "~/Library/Caches/Zen",
          "~/Library/Preferences/app.zen-browser.zen.plist",
          "~/Library/Preferences/org.mozilla.com.zen.browser.plist",
          "~/Library/Saved Application State/app.zen-browser.zen.savedState",
          "~/Library/Saved Application State/org.mozilla.com.zen.browser.savedState",
        ],
        rmdir: "~/Library/Caches/Mozilla"
  end

  on_linux do
    sha256 arm64_linux:  "fa6a061e8bbf981b8d5688c42bfa0ef5e443d0addf4928fad4f6980467098185",
           x86_64_linux: "965f7a2c8936f9484ca5a8c310c62e57c03b8e55c1db5018d175ee18d9cf467f"

    app_image filename, target: "Zen.AppImage"
  end
end
