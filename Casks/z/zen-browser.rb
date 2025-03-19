cask "zen-browser" do
  version "1.10b"
  sha256 "85c8497bb44c0c8db885aa5bfb38b90382a429615da91d3633ac9f983f6ab699"

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
