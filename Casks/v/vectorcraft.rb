cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.19.0"
  sha256 arm:          "60e03f845d305273f88fa31890a67763817c1b291c303ef0b5290184902fc77d",
         intel:        "60e03f845d305273f88fa31890a67763817c1b291c303ef0b5290184902fc77d",
         arm64_linux:  "5b83593ac1fface961ddac6a858706882dbe96af78514f91c87a6a2ef907e327",
         x86_64_linux: "1869554bafd428db3b368fa405b8ab488b25d324d380e772bc0b118bbacb34c5"

  on_macos do
    app "VectorCraft.app"

    zap trash: [
      "~/Library/Application Support/VectorCraft",
      "~/Library/Preferences/ai.storyteller.vectorcraft.plist",
    ]
  end
  on_linux do
    app_image "vectorcraft-#{version}-linux-#{arch}.AppImage", target: "VectorCraft.AppImage"
  end

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "VectorCraft"
  desc "Vector editor"
  homepage "https://getartcraft.com/apps/vectorcraft"
end
