cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.0"
  sha256 arm:          "6f7dbf03a0b55bbb0e0cd2757d73cc417c9a6afb30bcb4ff56009c1ca039e74a",
         intel:        "6f7dbf03a0b55bbb0e0cd2757d73cc417c9a6afb30bcb4ff56009c1ca039e74a",
         arm64_linux:  "27b392e21ffaffa3c3c12d37f345b8fd69801ece311fa69604a49e0786ca7095",
         x86_64_linux: "872dbcd6b3e55a06e770d2f457a872f09e8e50be7a1627b187dd8a2760569b37"

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
