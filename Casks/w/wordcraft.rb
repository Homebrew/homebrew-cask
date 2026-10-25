cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.11.0"
  sha256 arm:          "0e2030b27157a42be151a28bae03a11589c08404d166d55d6d0bdded65b0d22b",
         intel:        "0e2030b27157a42be151a28bae03a11589c08404d166d55d6d0bdded65b0d22b",
         arm64_linux:  "d5af2e9f69730896283ba6c68beb760369364547101e5cf659e2c9c74fbba9c6",
         x86_64_linux: "d92d5d37752b95f08904cc8328f3a73c2979361337ff260d23518f4024cd5c64"

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
