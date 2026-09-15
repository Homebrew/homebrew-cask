cask "unity-hub@beta" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.22.0-beta.1"
  sha256 arm:          "32bc6701b124972f70bb267cf2da5812f120f9ea847c17651f6955254fd5c3cc",
         intel:        "05595e4181dc87c3e4043f9a60329454b769a0b3aabe91552076e3a0c6dca95d",
         x86_64_linux: "81574dc381c0e787ff7f3431f97491d6c0deabce3737761b291a7756a3a92742"

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
