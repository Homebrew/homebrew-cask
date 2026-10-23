cask "unity-hub" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"

  version "3.22.4"
  sha256 arm:          "9a76c03b8a02e5c61be79b877972a73b093de4eb31b8eb511932744af6f0fc9b",
         intel:        "4187aaf957e289c8c83466150e0452b3d6388e251b017a94c6876131256665b0",
         arm64_linux:  "83abcb2965c54ce5b69dbd0d6062bcac7c62e6da94166abab86eb348a6433ecf",
         x86_64_linux: "de94f91e213138c5594f55b3810bb9d1cdf2f038730ab67b461e54122bbe0bc0"

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
