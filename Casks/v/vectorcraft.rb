cask "vectorcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.4.0"
  sha256 arm:          "3aeba910c24934f31c6e1b408916e83c38956f201a4138c013d63dd9d6c54233",
         intel:        "3aeba910c24934f31c6e1b408916e83c38956f201a4138c013d63dd9d6c54233",
         arm64_linux:  "29db79269009e4a9ed1470967ec2a7572641fcdc846f1352fefc47ea0b21a3f4",
         x86_64_linux: "ff473f200b0103602d4e83e00bb565284d2ab03445a9ad2f76bf8ffdb302d850"

  on_macos do
    app "VectorCraft.app"

    zap trash: "~/Library/Preferences/ai.storyteller.vectorcraft.plist"
  end
  on_linux do
    app_image "vectorcraft-#{version}-linux-#{arch}.AppImage", target: "VectorCraft.AppImage"
  end

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-#{version}-#{url_end}"
  name "VectorCraft"
  desc "Vector editor"
  homepage "https://getartcraft.com/apps/vectorcraft"
end
