cask "unity-hub" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"

  version "3.22.1"
  sha256 arm:          "8824ec00274a3e6b3c470fdf7dd83c6b09638e077d15fb23d4c5dde7f5f3a2fd",
         intel:        "12cdd8da95cef57f8ea6e5a2f90caf418a980bc9a30511efcb1bf0d95f18e927",
         arm64_linux:  "b412aa25992474ac89ca4e49c4db0ef9893bea2f9994193992edb07e7b5ec4ba",
         x86_64_linux: "8fd6a000daaf19abbd82e50b51ca3e8b1fb8f6cb9b62af909cbf860bfbf77ee4"

  on_macos do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/#{version}/UnityHubSetup-#{version}-#{arch}.dmg"

    depends_on macos: :ventura

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
    url "https://public-cdn.cloud.unity3d.com/hub/prod/#{version}/UnityHub-#{version}-#{arch}.AppImage"

    app_image "UnityHub-#{version}-#{arch}.AppImage", target: "Unity Hub.AppImage"

    zap trash: "~/.config/unityhub"
  end

  name "Unity Hub"
  desc "Management tool for Unity"
  homepage "https://docs.unity.com/en-us/hub"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/latest-#{os}.yml"
    strategy :electron_builder
  end

  auto_updates true
  conflicts_with cask: "unity-hub@beta"
end
