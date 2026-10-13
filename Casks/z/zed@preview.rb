cask "zed@preview" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  filename_start = on_system_conditional macos: "Zed", linux: "zed-linux"
  filename_ext = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "1.24.2"
  sha256 arm:          "9c04cfe2298e1eb8d9749f68c22e341a31a60f434b2fc01069165bc17718519b",
         intel:        "b203174a6a544d5ef95bfc43564515e6244a0e680306b5c359a8922828608136",
         arm64_linux:  "a14d551975db2c75249bf68d13f3e5433fb95ea1d69833b1e53194d6e99da408",
         x86_64_linux: "b759aa4a8e8b5f352b9a3a2b990fdeca40fa112426042fea629354f14db8350e"

  on_macos do
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
