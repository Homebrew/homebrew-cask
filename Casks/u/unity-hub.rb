cask "unity-hub" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"

  version "3.22.6"
  sha256 arm:          "e04d0320daf5df3d460435320222d8f4981f1388ecb0b5b22482ad98a9bbbf85",
         intel:        "ec2b1cea97ba8c418cd87c9e216294224ac7cee393fa84c6d6b1d98d1f963b92",
         arm64_linux:  "c4de7622f69c7024838249b4fddaeda9b434cc682b434183208591e41aca214a",
         x86_64_linux: "1745621685ed34704466226ce40fc92e32e3f78d8cf2532d7b7bbe6a7b21f151"

  on_macos do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/#{version}/UnityHubSetup-#{version}-#{arch}.dmg"

    depends_on macos: :ventura

    app "Unity Hub.app"

    uninstall quit: "com.unity3d.unityhub"

    zap trash: [
          "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.unity3d.unityhub.sfl*",
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
