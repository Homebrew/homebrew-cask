cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.15.0"
  sha256 arm:          "e07c3f58383ed1e3455b0b81e95f4d124b6bd395365074280686918d04478815",
         intel:        "e07c3f58383ed1e3455b0b81e95f4d124b6bd395365074280686918d04478815",
         arm64_linux:  "35098ecabbd4591d86ffa74ceb618e82d976fe47a8eb8177dcd3940088a36eb3",
         x86_64_linux: "f7a955d2c51b036bfe5a033f4a4ec4ff0c2b11ec8dfcbb252087b9ad3aa2ecad"

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
