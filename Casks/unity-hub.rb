cask "unity-hub" do
  version "2.4.2"
  sha256 "6bd6df1a9a224e2424940a744ee457e9f5e9e2a618dd0d57ab39deb50dc16a7f"

  url "https://public-cdn.cloud.unity3d.com/hub/prod/UnityHubSetup.dmg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/latest-mac.yml"
  name "Unity Hub"
  desc "Management tool for Unity"
  homepage "https://unity3d.com/get-unity/download"

  app "Unity Hub.app"

  uninstall quit:  "com.unity3d.unityhub",
            rmdir: "/Applications/Unity/Hub"

  zap trash: [
    "~/Library/Preferences/com.unity3d.unityhub.plist",
    "~/Library/Preferences/com.unity3d.unityhub.helper.plist",
  ]
end
