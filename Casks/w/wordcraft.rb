cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.3.0"
  sha256 arm:          "d16c8906d30e4d4a46ac51abf7c599382a1d3d2e3c5b918219464448b9358d5e",
         intel:        "d16c8906d30e4d4a46ac51abf7c599382a1d3d2e3c5b918219464448b9358d5e",
         arm64_linux:  "615a0615474a4f62f9f4e61fb2f617ff45b7760d60ceb5cc79c6ed735d772e3d",
         x86_64_linux: "f25698266107f3d93800069990b6951096c7463690260dc01a87f09839d710ed"

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
