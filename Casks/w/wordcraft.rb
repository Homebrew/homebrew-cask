cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.16.0"
  sha256 arm:          "407cb7ba1495437810bf066d799141e0ab4325406084556be1422368bd08b377",
         intel:        "407cb7ba1495437810bf066d799141e0ab4325406084556be1422368bd08b377",
         arm64_linux:  "bc03d28e6aa88413ac28e3a388ed790e543322bb2213abd2236461c1e33df77b",
         x86_64_linux: "980ac1d6918f1c1e0c240d859374f22b19e524d3af3372daef1344c5a097ae17"

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
