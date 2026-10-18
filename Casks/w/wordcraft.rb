cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.8.0"
  sha256 arm:          "9c7c058e4bc0ea3dd4e7f350e934b5e5ff5798723937f382c77478a6978f89e3",
         intel:        "9c7c058e4bc0ea3dd4e7f350e934b5e5ff5798723937f382c77478a6978f89e3",
         arm64_linux:  "a2c695a064c8da13bd00e118258bac5cdfa9b7e6dc7d8f3dfdd87f561298e76a",
         x86_64_linux: "7df7b3a50172ba0ede85a2c4b83c360af92b1c3767c8b30c3963ebf05d36ab9c"

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
