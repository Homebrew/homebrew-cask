cask "zed@preview" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  filename_start = on_system_conditional macos: "Zed", linux: "zed-linux"
  filename_ext = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "1.23.1"
  sha256 arm:          "70e04ba2ed2301f38237d9fdee213eaf6550c17a4c5acb3e0353e4628d12eab6",
         intel:        "42de840ed6846a3491c266b12b54691d5eeb932e29643283eaab54ec0f8f3406",
         arm64_linux:  "d40045d40df14ef4df4da38adaf4bc4f77e4fb2fa8ce5595e5031e79b9ddc74c",
         x86_64_linux: "442a8d7f56ced9fc8df326c81134d2606b7a65837084f562b4a2883ed292d06c"

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
