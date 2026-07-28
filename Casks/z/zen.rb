cask "zen" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: ".macos-universal.dmg", linux: "-#{arch}.AppImage"

  version "1.21.9b"

  on_macos do
    sha256 "29e0b6653d82ad890dc8232cd1ca03e2860bdfb68dcd9f79582282a6ccbd12fb"

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
    sha256 arm64_linux:  "7f080e01439cd34d08de873a2635b6b9c0a9188b5406ae704a9127235f0ff5a7",
           x86_64_linux: "927080c5a6f219a98b2f115fbcfb14fc9bed16c7f8b8df17a6994f2477160beb"

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
