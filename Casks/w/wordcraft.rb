cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.12.0"
  sha256 arm:          "2444eb9ca2755f4655c55e97d9de63876f338a1588ab35e912ac76f38cea7709",
         intel:        "2444eb9ca2755f4655c55e97d9de63876f338a1588ab35e912ac76f38cea7709",
         arm64_linux:  "4b01993f624eddfc90fab8a75ca93b9d3c22427597f0338044d11ba7efb61cc5",
         x86_64_linux: "d0730024db6c969e79ebaa9cc9abcdfbb198ea9b29c9bd0a2a04f9834e7656cb"

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
