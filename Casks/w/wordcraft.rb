cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.15.1"
  sha256 arm:          "8ee59436328e24518386c6cf1407f7c6c081fcaca703ce5e5310938af7dab12f",
         intel:        "8ee59436328e24518386c6cf1407f7c6c081fcaca703ce5e5310938af7dab12f",
         arm64_linux:  "489bec9ac0c441bcfc30c14a7f5c713d971545e8bb5b30afd25d9b8164779aae",
         x86_64_linux: "e8f44fbbf059f12f5cd4f69d7812529729d85d36dd4fe74a6c37f6932632f2fa"

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
