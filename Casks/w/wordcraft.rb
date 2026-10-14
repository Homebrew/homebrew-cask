cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.7.0"
  sha256 arm:          "682eedce8ed59e370f0e86451ce46d359361bfbb1e87bc4a1a2ef044016410ea",
         intel:        "682eedce8ed59e370f0e86451ce46d359361bfbb1e87bc4a1a2ef044016410ea",
         arm64_linux:  "872c8fc671c60c5d86eb5ff36ea91cf61ec8ce0f0adca344b13d1f10c145ff0c",
         x86_64_linux: "7dc86ff3025f185be39bf19822af24f2c504ddead3f52ed99c3d6960bce58d4d"

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
