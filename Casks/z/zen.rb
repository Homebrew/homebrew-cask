cask "zen" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.21.4b"

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
    sha256 "40a708776e8f251859a4fa73ed485f862eb5e1b97be356bfe014b414504fdb4a"

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
    sha256 arm64_linux:  "c330ea0436fe973eb02908ad1485dd36015947423e285be122580b66e9efac5f",
           x86_64_linux: "ea1763434255eff81d79f91f08a415b526a1d66663d1fa6cded40e0c87da4c05"

    app_image filename, target: "Zen.AppImage"
  end
end
