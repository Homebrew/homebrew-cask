cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.19.1"
  sha256 arm:          "df13cabf63bb2591045ebf6782c17440e7ecee9556550d6dd2affecd983825b2",
         intel:        "df13cabf63bb2591045ebf6782c17440e7ecee9556550d6dd2affecd983825b2",
         arm64_linux:  "ef5e893a9394d03136fe887c0563e795a1384289c75f3bf50095b2a0048d208c",
         x86_64_linux: "10176ffa8b8b4e0d298516c656b201959bb8280444f059d7b8838b6a691590de"

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
