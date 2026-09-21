cask "vesktop" do
  arch arm: on_system_conditional(linux: "-arm64")
  os macos: "-universal.dmg", linux: ".AppImage"

  version "1.6.7"
  sha256 arm:          "2fbb3e3ec04774b3e7e74bcdb74b88b5d2be65ac728d1036ac17f0583ddc3aeb",
         intel:        "2fbb3e3ec04774b3e7e74bcdb74b88b5d2be65ac728d1036ac17f0583ddc3aeb",
         arm64_linux:  "260144352ce10291ee7ecd0b8aa060f3e36a0d8a9c8f6b509db244ee6c36a2ae",
         x86_64_linux: "855632b68bbaa724d76e9f3d9deab0410111f5d95b79da3cf024ceb54f4e6d81"

  on_macos do
    depends_on macos: :monterey

    app "vesktop.app"

    zap trash: [
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
