cask "zed" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  filename_start = on_system_conditional macos: "Zed", linux: "zed-linux"
  filename_ext = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "1.22.0"
  sha256 arm:          "b5a5a6984f31fef1387268a076b0919544a28850c5cf7cd7f6bf69e601197fdd",
         intel:        "e50c441122a3f16e4fd808a05c8b857dbc1f6440a26f9129cde042d9510e732b",
         arm64_linux:  "8b3c5d6e506056a9456ed33072081fd64db84ce47cdf34d4936442cc4f08394a",
         x86_64_linux: "5ce3991b34a8fad0a23625f5821cda601c7150a6cc69683c097b8d1b083abc50"

  on_macos do
    auto_updates true

    app "Zed.app"
    binary "#{appdir}/Zed.app/Contents/MacOS/cli", target: "zed"

    uninstall quit: "dev.zed.Zed"

    zap trash: [
      "~/.config/zed",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.zed.zed.sfl*",
      "~/Library/Application Support/Zed",
      "~/Library/Caches/dev.zed.Zed",
      "~/Library/Caches/Zed",
      "~/Library/HTTPStorages/dev.zed.Zed",
      "~/Library/Logs/Zed",
      "~/Library/Preferences/dev.zed.Zed.plist",
      "~/Library/Saved Application State/dev.zed.Zed.savedState",
    ]
  end
  on_linux do
    binary "zed.app/bin/zed"
    artifact "zed.app/share/applications/dev.zed.Zed.desktop",
             target: "~/.local/share/applications/dev.zed.Zed.desktop"

    preflight_steps do
      inreplace "zed.app/share/applications/dev.zed.Zed.desktop", "Exec=zed",
                "Exec={{HOMEBREW_PREFIX}}/bin/zed"
      inreplace "zed.app/share/applications/dev.zed.Zed.desktop", "Icon=zed",
                "Icon={{staged_path}}/zed.app/share/icons/hicolor/512x512/apps/zed.png"
    end

    zap trash: [
      "~/.cache/zed",
      "~/.config/zed",
      "~/.local/share/applications/dev.zed.Zed.desktop",
      "~/.local/share/zed",
    ]
  end

  url "https://github.com/zed-industries/zed/releases/download/v#{version}/#{filename_start}-#{arch}.#{filename_ext}"
  name "Zed"
  desc "Multiplayer code editor"
  homepage "https://zed.dev/"

  livecheck do
    url "https://cloud.zed.dev/releases/stable/latest/asset?asset=zed&os=#{os}&arch=#{arch}"
    strategy :json do |json|
      json["version"]
    end
  end

  generate_completions_from_executable "#{HOMEBREW_PREFIX}/bin/zed", "--completions",
                                       shells: [:bash, :zsh, :fish, :pwsh]
end
