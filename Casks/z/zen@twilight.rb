cask "zen@twilight" do
  version "1.18t,20251208124121"
  sha256 :no_check

  url "https://github.com/zen-browser/desktop/releases/download/twilight/zen.macos-universal.dmg",
      verified: "github.com/zen-browser/desktop/"
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

  app "Twilight.app"

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
