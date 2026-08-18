cask "zen@twilight" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: ".macos-universal", linux: "-#{arch}"
  livecheck_os = on_system_conditional macos: "Darwin", linux: "Linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.22t,20260817110440"
  sha256 :no_check

  on_macos do
    app "Twilight.app"
    command_wrapper "zen-twilight", executable: "#{appdir}/Twilight.app/Contents/MacOS/zen"

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

  url "https://github.com/zen-browser/desktop/releases/download/twilight-1/zen#{os}.#{url_end}"
  name "Zen Twilight"
  desc "Gecko based web browser"
  homepage "https://zen-browser.app/"

  livecheck do
    url "https://updates.zen-browser.app/updates/browser/#{livecheck_os}_#{arch}-gcc3/twilight/update.xml"
    strategy :xml do |xml|
      xml.get_elements("//update").map { |item| "#{item.attributes["appVersion"]},#{item.attributes["buildID"]}" }
    end
  end

  auto_updates true
end
