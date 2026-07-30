cask "unity-hub@beta" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.20.0"
  sha256 arm:          "49bb701e48ac7aa02f352348fb6e0aae20f808730ee8f4c371b3c3494c6232d9",
         intel:        "f74aa268470f9cc2a97b5aae1ebd2ded05ecbe37689d982c3f01a45d6caa9999",
         x86_64_linux: "af1eda02fa1a036e478df0b68c2ef684d6734304b40f6b6e44e73dc42ad76d21"

  on_macos do
    depends_on macos: :monterey

    app "Unity Hub.app"

    uninstall quit: "com.unity3d.unityhub"

    zap trash: [
          "~/Library/Application Support/UnityHub",
          "~/Library/Preferences/com.unity3d.unityhub.helper.plist",
          "~/Library/Preferences/com.unity3d.unityhub.plist",
        ],
        rmdir: "/Applications/Unity/Hub"
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "UnityHubSetup-#{version}-#{arch}.AppImage", target: "Unity Hub.AppImage"

    zap trash: "~/.config/unityhub"
  end

  url "https://public-cdn.cloud.unity3d.com/hub/prod/#{version}/UnityHubSetup-#{version}-#{arch}.#{url_end}"
  name "Unity Hub"
  desc "Management tool for Unity"
  homepage "https://docs.unity.com/en-us/hub"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  conflicts_with cask: "unity-hub"
end
