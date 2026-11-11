cask "zed" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  filename_start = on_system_conditional macos: "Zed", linux: "zed-linux"
  filename_ext = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "1.28.1"
  sha256 arm:          "0ca1a4f1e89e3825f49af26fa31afcf0cc3e50da1f4ba9889f0735f5f0beffe4",
         intel:        "e6e1a385f7289d667f730f11c948161ca462fe2679488b0d72848173638d6749",
         arm64_linux:  "fc75d18f98fe07c62c079e8745fd723cd4654860b5db170772855bc1b8d05b48",
         x86_64_linux: "9c3fc4cbe533e72c8d0e864a62be2b88d69cc44b9f52cd25d4c21d054dda3742"

  on_macos do
    depends_on macos: :monterey

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

  auto_updates true

  generate_completions_from_executable "#{HOMEBREW_PREFIX}/bin/zed", "--completions",
                                       shells: [:bash, :zsh, :fish, :pwsh]
end
