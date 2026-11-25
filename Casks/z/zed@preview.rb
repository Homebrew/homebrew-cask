cask "zed@preview" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  filename_start = on_system_conditional macos: "Zed", linux: "zed-linux"
  filename_ext = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "1.30.2"
  sha256 arm:          "ad3265f58e8b4eb98b75bb4e38781369995d1a631e1f7641eb1f61c29783fdd8",
         intel:        "0d3480d68c43151e2a37469f56830760eaa664a6fa433bcebf90ea854eb0b51d",
         arm64_linux:  "85ccdb7f3142bab721183126926bec208520eb10923f3b65b0f8a6eadff84bf1",
         x86_64_linux: "1588e170fbbc945d7062be7e6863c26c282c80139d5ed17e84519dfda47d5160"

  on_macos do
    depends_on macos: :monterey

    app "Zed Preview.app"
    binary "#{appdir}/Zed Preview.app/Contents/MacOS/cli", target: "zed-preview"

    uninstall quit: "dev.zed.Zed-Preview"

    zap trash: [
      "~/.config/zed",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.zed.zed-preview.sfl*",
      "~/Library/Application Support/Zed",
      "~/Library/Caches/dev.zed.Zed-Preview",
      "~/Library/Caches/Zed",
      "~/Library/HTTPStorages/dev.zed.Zed-Preview",
      "~/Library/Logs/Zed",
      "~/Library/Preferences/dev.zed.Zed-Preview.plist",
      "~/Library/Saved Application State/dev.zed.Zed-Preview.savedState",
    ]
  end
  on_linux do
    binary "zed-preview.app/bin/zed", target: "zed-preview"
    artifact "zed-preview.app/share/applications/dev.zed.Zed-Preview.desktop",
             target: "~/.local/share/applications/dev.zed.Zed-Preview.desktop"

    preflight_steps do
      inreplace "zed-preview.app/share/applications/dev.zed.Zed-Preview.desktop", "Exec=zed",
                "Exec={{HOMEBREW_PREFIX}}/bin/zed-preview"
      inreplace "zed-preview.app/share/applications/dev.zed.Zed-Preview.desktop", "Icon=zed",
                "Icon={{staged_path}}/zed-preview.app/share/icons/hicolor/512x512/apps/zed.png"
    end

    zap trash: [
      "~/.cache/zed",
      "~/.config/zed",
      "~/.local/share/zed",
    ]
  end

  url "https://zed.dev/api/releases/preview/#{version}/#{filename_start}-#{arch}.#{filename_ext}"
  name "Zed Preview"
  desc "Multiplayer code editor"
  homepage "https://zed.dev/"

  livecheck do
    url "https://cloud.zed.dev/releases/preview/latest/asset?asset=zed&os=#{os}&arch=#{arch}"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  generate_completions_from_executable "#{HOMEBREW_PREFIX}/bin/zed-preview", "--completions",
                                       shells: [:bash, :zsh, :fish, :pwsh]
end
