cask "zen" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: ".macos-universal.dmg", linux: "-#{arch}.AppImage"

  version "1.21.12b"

  on_macos do
    sha256 "dba6a9674d3199ac9b1ea8753c5f08486fe91de36ff113f7339f34423ffe5ea0"

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
    sha256 arm64_linux:  "390e64fc54a0ee4783052dc4cd099bc8c3835c99af60a98e0c08292c7725c6bd",
           x86_64_linux: "401a83b89f3d889a2c230b5c350b733a453410401bffbd09f16e421013a5d5f3"

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
