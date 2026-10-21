cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.9.0"
  sha256 arm:          "500e90d726eeb2aa45af7bb015c2d132172516853f9674bcdec732af6f0bc1b8",
         intel:        "500e90d726eeb2aa45af7bb015c2d132172516853f9674bcdec732af6f0bc1b8",
         arm64_linux:  "cd63f14d799b2963f92083789e948173dc8c4215271f23f0837d9577e5eb6d18",
         x86_64_linux: "5022a32d1ff62d4641010c19fdc16b8655168686537af9d30615a03d34c6afb0"

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
