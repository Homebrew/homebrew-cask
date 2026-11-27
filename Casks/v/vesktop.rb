cask "vesktop" do
  arch arm: on_system_conditional(linux: "-arm64")
  os macos: "-universal.dmg", linux: ".AppImage"

  version "1.7.2"
  sha256 arm:          "a98c4f5f9d5ad5387558c27355ad684e9c4a221ec0e8068a62f782b11a3f0a06",
         intel:        "a98c4f5f9d5ad5387558c27355ad684e9c4a221ec0e8068a62f782b11a3f0a06",
         arm64_linux:  "5387652b90742cb444a24d88fd1fc440298b5c6c14fbaffa0ca32f9968b3ba68",
         x86_64_linux: "7a5bbe126e858c325f4f24356714db1a98cb79240505665ab3ea454bd8f9ff42"

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
