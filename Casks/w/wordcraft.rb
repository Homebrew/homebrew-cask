cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.14.0"
  sha256 arm:          "2c4026b17d027511a03afc4ac774c642c2b6276b6ff27e708c65fdf2894950ac",
         intel:        "2c4026b17d027511a03afc4ac774c642c2b6276b6ff27e708c65fdf2894950ac",
         arm64_linux:  "eea41e91f2a2301469c68b4f58d1d0931846364cbab5e0b9b24ad896a7aed25f",
         x86_64_linux: "e7a2fee05ce862fe9147b6eb0ab6cda9e26caba7297168462800221e6663b25b"

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
