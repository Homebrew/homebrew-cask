cask "zen" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: ".macos-universal.dmg", linux: "-#{arch}.AppImage"

  version "1.21.10b"

  on_macos do
    sha256 "324e164cf9774e0463f88c523dcb95871732b37936810a7ed1fee364cfe8c236"

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
    sha256 arm64_linux:  "b7718457bc891ac36d37e57033617ab3c50659250244f14e4f29fcb0b5623ece",
           x86_64_linux: "4fa68e4b004bf9fe2ac4ab4446761c062ad3c56655e8a5abddcad582a1e57283"

    app_image "zen-#{arch}.AppImage", target: "Zen.AppImage"
  end

  url "https://github.com/zen-browser/desktop/releases/download/#{version}/zen#{os}"
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
end
