cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.6.1"
  sha256 arm:          "6cfbc5b0c1270894f4df7eed15f6d880d01f4733f856cee55d3793bd738786ae",
         intel:        "6cfbc5b0c1270894f4df7eed15f6d880d01f4733f856cee55d3793bd738786ae",
         arm64_linux:  "78edd2b884fee4cfcfe8a072c4f1608759882e524f73c74c92dbc21612db860e",
         x86_64_linux: "36ed3844c4e58391cf1341d133bf6b569b5221f8e707e5e271db3c38df6dc3c3"

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
