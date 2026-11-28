cask "vicinae" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "0.30.1"
  sha256 arm:          "b69b84ae1a31d6bf7b5364a08cd09ebd44687d97de45391c7f9d30d09b3e0528",
         arm64_linux:  "1b2290d4c4f5c1ef51358a19d2322c17f489f3dfcf790367a0f1634261abaeea",
         x86_64_linux: "9f573dd04389693a1b70653dd4cc3886a1623fc159d50e207486162e6ae91ab2"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :sonoma

    app "Vicinae.app"
    binary "#{appdir}/Vicinae.app/Contents/MacOS/vicinae-cli", target: "vicinae"

    zap trash: [
      "~/.cache/vicinae",
      "~/.config/vicinae",
      "~/.local/share/vicinae",
      "~/.local/state/vicinae",
      "~/Library/Application Support/*/*/NativeMessagingHosts/com.vicinae.vicinae.json",
      "~/Library/Application Support/*/NativeMessagingHosts/com.vicinae.vicinae.json",
      "~/Library/Application Support/CrashReporter/Vicinae_*.plist",
      "~/Library/Caches/com.vicinaehq.Vicinae",
      "~/Library/Caches/vicinae",
      "~/Library/HTTPStorages/com.vicinaehq.Vicinae",
    ]
  end
  on_linux do
    binary "squashfs-root/usr/bin/vicinae"
    artifact "squashfs-root/usr/share/applications/vicinae.desktop",
             target: "~/.local/share/applications/vicinae.desktop"
    artifact "squashfs-root/usr/share/applications/vicinae-url-handler.desktop",
             target: "~/.local/share/applications/vicinae-url-handler.desktop"
    artifact "squashfs-root/usr/lib/systemd/user/vicinae.service",
             target: "~/.local/share/systemd/user/vicinae.service"

    # Run directly, the AppImage leaks its environment into every app Vicinae launches.
    # Upstream also advises against it; the official installer extracts the AppImage instead.
    preflight_steps do
      set_permissions "Vicinae-#{arch}.AppImage", "+x"
      run "Vicinae-#{arch}.AppImage", args:  ["--appimage-extract"],
                                      base:  :staged_path,
                                      chdir: "{{staged_path}}"
      remove "Vicinae-#{arch}.AppImage"
      inreplace "squashfs-root/usr/share/applications/vicinae.desktop", /^Exec=vicinae/,
                "Exec={{HOMEBREW_PREFIX}}/bin/vicinae"
      inreplace "squashfs-root/usr/share/applications/vicinae.desktop", /^Icon=vicinae/,
                "Icon={{staged_path}}/squashfs-root/usr/share/icons/hicolor/512x512/apps/vicinae.png"
      inreplace "squashfs-root/usr/share/applications/vicinae-url-handler.desktop", /^Exec=vicinae/,
                "Exec={{HOMEBREW_PREFIX}}/bin/vicinae"
      inreplace "squashfs-root/usr/share/applications/vicinae-url-handler.desktop", /^Icon=vicinae/,
                "Icon={{staged_path}}/squashfs-root/usr/share/icons/hicolor/512x512/apps/vicinae.png"
      inreplace "squashfs-root/usr/lib/systemd/user/vicinae.service", /^ExecStart=vicinae/,
                "ExecStart={{HOMEBREW_PREFIX}}/bin/vicinae"
    end

    zap trash: [
      "~/.cache/vicinae",
      "~/.config/*/*/NativeMessagingHosts/com.vicinae.vicinae.json",
      "~/.config/*/NativeMessagingHosts/com.vicinae.vicinae.json",
      "~/.config/mozilla/native-messaging-hosts/com.vicinae.vicinae.json",
      "~/.config/vicinae",
      "~/.librewolf/native-messaging-hosts/com.vicinae.vicinae.json",
      "~/.local/share/vicinae",
      "~/.local/state/vicinae",
      "~/.mozilla/native-messaging-hosts/com.vicinae.vicinae.json",
      "~/.zen/native-messaging-hosts/com.vicinae.vicinae.json",
    ]
  end

  url "https://github.com/vicinaehq/vicinae/releases/download/v#{version}/Vicinae#{url_end}"
  name "Vicinae"
  desc "Application launcher and command palette"
  homepage "https://vicinae.com/"
end
