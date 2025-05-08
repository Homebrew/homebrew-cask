cask "zen-browser" do
  version "1.12.3b"
  sha256 "2d85375888827aa09eccb9844b9a8f1d60f6d1d910941bf35d28bcd1115680f5"

  url "https://github.com/zen-browser/desktop/releases/download/#{version}/zen.macos-universal.dmg",
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
  depends_on macos: ">= :catalina"

  app "Zen.app"
  binary "#{appdir}/Zen.app/Contents/MacOS/zen"

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
