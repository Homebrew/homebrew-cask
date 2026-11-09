cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.17.0"
  sha256 arm:          "be5d89a23905c3a91df4d58f00f827ac06aa8c50cbeb41e6e7d9f7dfb864a58a",
         intel:        "be5d89a23905c3a91df4d58f00f827ac06aa8c50cbeb41e6e7d9f7dfb864a58a",
         arm64_linux:  "3b044e86d84180a05a488b42249311a9d1ed835190c13c4af11ceaf5879cedfc",
         x86_64_linux: "606b3ae330c767cfa192803dba8eb7b9d29c66cdf29d0cabde083f17f06ad16b"

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
