cask "zen" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.21.6b"

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
    sha256 "a15523566dd1490bc46a7ff60ecc1d0560f764d6869b4e5ff2ccee32bf9562ca"

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
    sha256 arm64_linux:  "a7dea75684b89056720703e94e7fcccd5c48614a3c01315598bb824b6e43906e",
           x86_64_linux: "22b0e2de57d28e0a01e1e6e2516762f10699289f1b9259eb85f5d2db517d8fb3"

    app_image filename, target: "Zen.AppImage"
  end
end
