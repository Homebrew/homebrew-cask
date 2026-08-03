cask "zen@twilight" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: ".macos-universal.dmg", linux: "-#{arch}.AppImage"

  version "1.22t,20260803015518"
  sha256 :no_check

  on_macos do
    app "Twilight.app"
    binary "#{appdir}/Twilight.app/Contents/MacOS/zen", target: "zen-twilight"

    uninstall quit: "app.zen-browser.zen"

    zap trash: [
          "~/Library/Application Support/Zen",
          "~/Library/Caches/Mozilla/updates/Applications/Twilight",
          "~/Library/Caches/Mozilla/updates/Applications/Zen Twilight",
          "~/Library/Caches/Zen",
          "~/Library/Preferences/app.zen-browser.zen.plist",
          "~/Library/Preferences/org.mozilla.com.zen.browser.plist",
          "~/Library/Saved Application State/app.zen-browser.zen.savedState",
          "~/Library/Saved Application State/org.mozilla.com.zen.browser.savedState",
        ],
        rmdir: "~/Library/Caches/Mozilla"
  end
  on_linux do
    app_image "zen-#{arch}.AppImage", target: "Zen Twilight.AppImage"
  end

  url "https://github.com/zen-browser/desktop/releases/download/twilight-1/zen#{os}"
  name "Zen Twilight"
  desc "Gecko based web browser"
  homepage "https://zen-browser.app/"

  livecheck do
    url "https://updates.zen-browser.app/updates/browser/Darwin_aarch64-gcc3/twilight/update.xml"
    strategy :xml do |xml|
      xml.get_elements("//update").map { |item| "#{item.attributes["appVersion"]},#{item.attributes["buildID"]}" }
    end
  end

  auto_updates true
end
