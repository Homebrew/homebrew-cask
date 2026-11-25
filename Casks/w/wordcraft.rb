cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.1"
  sha256 arm:          "89f6e0a910f8ad5a815d8024c79324d205b56fcd2e05deed010e9016f5813dec",
         intel:        "89f6e0a910f8ad5a815d8024c79324d205b56fcd2e05deed010e9016f5813dec",
         arm64_linux:  "11e9a11c0dc924c2a261207d8cf45ee232930bf0692533a2e984237f681e073c",
         x86_64_linux: "bbc5c15b06d4403cfd5a59475bdf9264a49c2bcf1f92d123311b50a9dce3c888"

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
