cask "unity-hub@beta" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "3.22.2"
  sha256 arm:          "5a2212142c0ee33d4493e710c0aa913853ac9f5120714f279e0dbd624d843eaf",
         intel:        "9bdbd574adb646efde6edfa7381f59c30ce02e56029cdc58ce2b27ccc72caa78",
         arm64_linux:  "724627542aa387e1f22ddbbb271d011cf0046808e17b7d7a15f36b110e188154",
         x86_64_linux: "e23ff0adc137dbc522ad45d62f8865e0766d4278066797725c85057d0dea95ea"

  on_macos do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/#{version}/UnityHubSetup-#{version}-#{arch}.dmg"

    livecheck do
      url "https://public-cdn.cloud.unity3d.com/hub/prod/beta-mac.yml"
      strategy :electron_builder
    end

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

    livecheck do
      url "https://public-cdn.cloud.unity3d.com/hub/prod/beta-linux.yml"
      strategy :electron_builder
    end

    app_image "UnityHub-#{version}-#{arch}.AppImage", target: "Unity Hub.AppImage"

    zap trash: "~/.config/unityhub"
  end

  name "Unity Hub"
  desc "Management tool for Unity"
  homepage "https://docs.unity.com/en-us/hub"

  auto_updates true
  conflicts_with cask: "unity-hub"
end
