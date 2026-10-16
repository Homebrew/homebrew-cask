cask "zen" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: ".macos-universal", linux: "-#{arch}"
  livecheck_os = on_system_conditional macos: "Darwin", linux: "Linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.23.3b"
  sha256 arm:          "051fa36cc7a4c74d001915369c483d1f2ea884680fce6ade4e5dfc4eb72218e0",
         intel:        "051fa36cc7a4c74d001915369c483d1f2ea884680fce6ade4e5dfc4eb72218e0",
         arm64_linux:  "d5b5a623ad9429eba602a8c84fbe5b5a2fadf3a304f4e5133c9d58eef1911c37",
         x86_64_linux: "8f6b7a55ae8fd013147f40f592d12188dd26f19f4a4748e01b51e9747bd44bac"

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
