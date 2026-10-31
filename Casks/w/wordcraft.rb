cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.13.2"
  sha256 arm:          "6b142b8f00542449a32581f832e2938c7cd7628be0b969fc582f571f7dee26d0",
         intel:        "6b142b8f00542449a32581f832e2938c7cd7628be0b969fc582f571f7dee26d0",
         arm64_linux:  "9d82a4164c853a0d04c2947dd6683a9d92cb4a3b7a392fba571e320f0f3c773f",
         x86_64_linux: "f25d4ec7be7af33fcf45002d9b750ec735117c44da3042e043ae79357d444533"

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
