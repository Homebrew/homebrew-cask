cask "vesktop" do
  arch arm: on_system_conditional(linux: "-arm64")
  os macos: "-universal.dmg", linux: ".AppImage"

  version "1.6.8"
  sha256 arm:          "d24048786eb75923c9fd53bc8ff9a37e5977334a4806842e7b37e81740e7aa54",
         intel:        "d24048786eb75923c9fd53bc8ff9a37e5977334a4806842e7b37e81740e7aa54",
         arm64_linux:  "e60bd9e2290240fb12f284a9bff4dfce80d9399e7f64c929239a45a18d343797",
         x86_64_linux: "1757426d937a6987ae4306e74fac2fe6d3c4ebd4a8895ce3ad6c6ee7ce610d84"

  on_macos do
    depends_on macos: :ventura

    app "vesktop.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.vencord.vesktop.sfl*",
      "~/Library/Application Support/vesktop",
      "~/Library/Caches/dev.vencord.vesktop",
      "~/Library/Caches/dev.vencord.vesktop.Shipit",
      "~/Library/HTTPStorages/dev.vencord.vesktop",
      "~/Library/Preferences/dev.vencord.vesktop.plist",
      "~/Library/Saved Application State/dev.vencord.vesktop.savedState",
    ]
  end
  on_linux do
    app_image "Vesktop-#{version}#{arch}.AppImage", target: "Vesktop.AppImage"

    zap trash: "~/.config/vesktop"
  end

  url "https://github.com/Vencord/Vesktop/releases/download/v#{version}/Vesktop-#{version}#{arch}#{os}"
  name "Vesktop"
  desc "Custom Discord App"
  homepage "https://github.com/Vencord/Vesktop"

  livecheck do
    url "https://github.com/Vencord/Vesktop/releases/latest/download/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
end
