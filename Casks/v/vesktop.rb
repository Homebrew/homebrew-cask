cask "vesktop" do
  arch arm: on_system_conditional(linux: "-arm64")
  os macos: "-universal.dmg", linux: ".AppImage"

  version "1.7.0"
  sha256 arm:          "8d669765c890642fa52d565ce5c8161cc5f1519fe0e68a3384a0bd327bee2236",
         intel:        "8d669765c890642fa52d565ce5c8161cc5f1519fe0e68a3384a0bd327bee2236",
         arm64_linux:  "f7f8c0ad99a7303dbf613549886bad1aa88e7f380449b816792d210267f5b691",
         x86_64_linux: "b996c66da9fdefbe0f16ef13c4ad6c9c94576f82252bdc33130b5703895fef74"

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
