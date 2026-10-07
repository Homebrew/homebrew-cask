cask "zed@preview" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  filename_start = on_system_conditional macos: "Zed", linux: "zed-linux"
  filename_ext = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "1.24.1"
  sha256 arm:          "0d5944e47e6c8b498c53f268d2141ff9cb9263a6323ea67d6119d5556b9f6c0a",
         intel:        "3aa5bca14bc609daa1638892b8cfbeb64bc59dcfad62d3880f1810694d85867a",
         arm64_linux:  "0ffc7650b0f3f7a316adb48c90b4488f529062b81572025461d8cafee61150fc",
         x86_64_linux: "f551231e810ab55dccc9fd17f2e5bcccb9669910b6889416051c40583949727a"

  on_macos do
    auto_updates true

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

  generate_completions_from_executable "#{HOMEBREW_PREFIX}/bin/zed-preview", "--completions",
                                       shells: [:bash, :zsh, :fish, :pwsh]
end
