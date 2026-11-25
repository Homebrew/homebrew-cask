cask "zed@preview" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  filename_start = on_system_conditional macos: "Zed", linux: "zed-linux"
  filename_ext = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "1.31.0"
  sha256 arm:          "3aae026ac05ff783ee1185e176fe68d05170598205ba6b5b65389dc709141c12",
         intel:        "03dedc62a1fd9d240b502ea8b37186722d110da9e5d02b9df5b2a3c5a4fc34c9",
         arm64_linux:  "e0361d79e50bdd2dd0165ae589949bfedad637ed872d2bd982a463617990e2a2",
         x86_64_linux: "ef2ddb9661216c767ebac050aefd0ce6ac2b2e4e23820dcb7e183a1666011174"

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
