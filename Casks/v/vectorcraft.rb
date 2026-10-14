cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.11.0"
  sha256 arm:          "dc5eb8c02ecdff801876d4b511f2d2a9bd3af7700853ec8cbe81063221827d6b",
         intel:        "dc5eb8c02ecdff801876d4b511f2d2a9bd3af7700853ec8cbe81063221827d6b",
         arm64_linux:  "9d4577e61d6cc6728c1874ffa0f797b7311a9694134bad23282cdfd9dfbc889b",
         x86_64_linux: "0ab5126f9b2f9591bc27a10e20ea1b2f239384b1a16fec88288ed3de6dbf831c"

  on_macos do
    app "VectorCraft.app"

    zap trash: "~/Library/Preferences/ai.storyteller.vectorcraft.plist"
  end
  on_linux do
    app_image "vectorcraft-#{version}-linux-#{arch}.AppImage", target: "VectorCraft.AppImage"
  end

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "VectorCraft"
  desc "Vector editor"
  homepage "https://getartcraft.com/apps/vectorcraft"
end
