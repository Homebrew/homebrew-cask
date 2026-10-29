cask "zen" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: ".macos-universal", linux: "-#{arch}"
  livecheck_os = on_system_conditional macos: "Darwin", linux: "Linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.24b"
  sha256 arm:          "22915ea7e4f0c97a817b85b6ceba9b878317b8e1059390fcfe70dabaac8db86b",
         intel:        "22915ea7e4f0c97a817b85b6ceba9b878317b8e1059390fcfe70dabaac8db86b",
         arm64_linux:  "ea90b76b0ba1d33fff30042df96578871cf300aa28be45a6d6d0d6436ef3cde9",
         x86_64_linux: "c5eb05e36c5ffdc2d8c20b44e4703f25e0f286118e59ba903f82d2121b4a7e27"

  on_macos do
    conflicts_with cask: "zen-privacy"

    app "Zen.app"
    command_wrapper "zen", executable: "#{appdir}/Zen.app/Contents/MacOS/zen"

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
    app_image "zen-#{arch}.AppImage", target: "Zen.AppImage"
  end

  url "https://github.com/zen-browser/desktop/releases/download/#{version}/zen#{os}.#{url_end}"
  name "Zen Browser"
  desc "Gecko based web browser"
  homepage "https://zen-browser.app/"

  livecheck do
    url "https://updates.zen-browser.app/updates/browser/#{livecheck_os}_#{arch}-gcc3/release/update.xml"
    strategy :xml do |xml|
      xml.get_elements("//update").map { |item| item.attributes["appVersion"] }
    end
  end

  auto_updates true
end
