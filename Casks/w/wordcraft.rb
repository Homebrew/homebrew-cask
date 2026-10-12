cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.5.0"
  sha256 arm:          "855812f19a1a27b6dc0bbb5c7ac71c3a60b84f5301b4b970be8ba3c5dfdfece5",
         intel:        "855812f19a1a27b6dc0bbb5c7ac71c3a60b84f5301b4b970be8ba3c5dfdfece5",
         arm64_linux:  "e8b50b89cd119e436c423cef2cfeff385b35e81b5849689204c27eb6d9815bb3",
         x86_64_linux: "9477ea92dd9edf2ab974bde32595845b2737b27b24c7a40659cb5dce27b27551"

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
