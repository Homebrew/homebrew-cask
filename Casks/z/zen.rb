cask "zen" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: ".macos-universal", linux: "-#{arch}"
  livecheck_os = on_system_conditional macos: "Darwin", linux: "Linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.24.2b"
  sha256 arm:          "04ee33c2e906b52f90f73384aa50e80a92530ae4b3414fb26a0a982e257f172c",
         intel:        "04ee33c2e906b52f90f73384aa50e80a92530ae4b3414fb26a0a982e257f172c",
         arm64_linux:  "228d42846c7ec9eff24e7ec571bda26fb872ee44ed7baa4af929f7fda8e562e1",
         x86_64_linux: "2e73140a2adf6b0bb5669396339d2c0e7a119408a392a5a807d87810f1a99bf5"

  on_macos do
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

    zap trash: [
      "~/.cache/zen",
      "~/.config/zen",
      "~/.zen",
    ]
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
