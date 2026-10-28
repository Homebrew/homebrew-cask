cask "unity-hub" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"

  version "3.22.5"
  sha256 arm:          "c767b8c3df4a9361d8a2aeb2cd7ef1730956bcb63a89c83140858be314c6dbf0",
         intel:        "6cee2985388e83a89239115a5694e9683589d0ba456dc6a5f48be58124cd1dd8",
         arm64_linux:  "63bc5cc504a47d973faa102b3808846bb5724b81102b010ba547ab5b700611db",
         x86_64_linux: "81a0f0f56b2c25d4eb668da6e03f983b6f4d6950375172d5707f413a2e5ca94f"

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
