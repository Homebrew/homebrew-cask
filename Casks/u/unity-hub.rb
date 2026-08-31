cask "unity-hub" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.21.0"
  sha256 arm:          "e4e6e913a9b24a670beff23f3838c2ca28aa826a57e4424b71d1cb2d5d12e5f0",
         intel:        "736d1659a640f9c9978a8489b4ed6de7ec5745aed72e5fb209efdaef8dfe3e59",
         x86_64_linux: "a21bbe1d53235ca3a6076d929aad01cb0e419a1f27e68ae9866675f3ed4ae3bb"

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
    url "https://public-cdn.cloud.unity3d.com/hub/prod/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  conflicts_with cask: "unity-hub@beta"
end
