cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.10.0"
  sha256 arm:          "342e37473db29cd671a10a340cc7484af86516fd63731a545fd93cef207fe86a",
         intel:        "342e37473db29cd671a10a340cc7484af86516fd63731a545fd93cef207fe86a",
         arm64_linux:  "2f6dd878019b569425f32921a4d642110172610b8f065c345c2bf0b81093be5b",
         x86_64_linux: "2eb8eaaf6be989a46f5a125286a99f5c2f6efa5c8bb23ba50a4423bbea107a20"

  on_macos do
    app "WordCraft.app"

    zap trash: "~/Library/Application Support/WordCraft"
  end
  on_linux do
    app_image "wordcraft-#{version}-linux-#{arch}.AppImage", target: "WordCraft.AppImage"

    zap trash: "~/.config/wordcraft"
  end

  url "https://github.com/storytold/wordcraft/releases/download/v#{version}/wordcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "WordCraft"
  desc "Word processor"
  homepage "https://github.com/storytold/wordcraft"
end
