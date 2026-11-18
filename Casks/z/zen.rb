cask "zen" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: ".macos-universal", linux: "-#{arch}"
  livecheck_os = on_system_conditional macos: "Darwin", linux: "Linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.24.3b"
  sha256 arm:          "86f6a01e786095d7661c68357396a00cd3e169d6ae5e176245077bb701af8b65",
         intel:        "86f6a01e786095d7661c68357396a00cd3e169d6ae5e176245077bb701af8b65",
         arm64_linux:  "a04917abc108762dbce78dce0afb46d09428c45f7264aa770ee7418297895225",
         x86_64_linux: "4fdbf6a99911b240062366c0ecb0b4c683346a9041fe317069d767053563fa15"

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
  conflicts_with cask: "irbis-zen"
end
