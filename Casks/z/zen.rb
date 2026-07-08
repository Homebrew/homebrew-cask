cask "zen" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.21.5b"

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
    sha256 "e6ab356ede41d6973f2f3c165edf974dd04d94b497aad0132f80d1aa25d4a566"

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
    sha256 arm64_linux:  "2356dbe9eb0f06173fb4e1039630794dcf4751ba5533e7fa7ed30de439446899",
           x86_64_linux: "95a1e64f16189614cbf45de88532b0ef4ac21022a0d795fb69b1cef5654c3a96"

    app_image filename, target: "Zen.AppImage"
  end
end
