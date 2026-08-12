cask "unity-hub@beta" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.21.0-beta.1"
  sha256 arm:          "fffeedaa4f66b0d6b60b3678da121da5a1d5dc79eb9cb095bb2f9e2ffbb09ba3",
         intel:        "f3342917ba8a07dd4a16091bd727ac3c612b9c6aa05219a3a2ccf01cdd92ff37",
         x86_64_linux: "6b7fecace6d67d730ee72c87bcd51fc40dad0ef3cd5c2dd7bf220983584fc160"

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
