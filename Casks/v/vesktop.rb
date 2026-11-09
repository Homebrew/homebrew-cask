cask "vesktop" do
  arch arm: on_system_conditional(linux: "-arm64")
  os macos: "-universal.dmg", linux: ".AppImage"

  version "1.6.9"
  sha256 arm:          "de8247fd1a10e13f497d2980ae97b2b48411c25af4612aa1accbb78d13721010",
         intel:        "de8247fd1a10e13f497d2980ae97b2b48411c25af4612aa1accbb78d13721010",
         arm64_linux:  "503a08d608cb4e9b43495665302c8f8f71d4cd098dec79ed9b21f9de8d1f053a",
         x86_64_linux: "df8daa467297a3831bd8a45dce01c77b37b0042fb616fa89401b75b65d211fef"

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
