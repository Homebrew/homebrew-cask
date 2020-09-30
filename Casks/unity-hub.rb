cask "unity-hub" do
  version "2.4.1"
  sha256 "1981eba594a1b7693d610f7e388d02d83efcf597053e44b5a9c5b409c7364a83"

  url "https://public-cdn.cloud.unity3d.com/hub/prod/UnityHubSetup.dmg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/latest-mac.yml"
  name "Unity Hub"
  desc "Management tool for Unity"
  homepage "https://unity3d.com/get-unity/download"

  app "Unity Hub.app"

  uninstall quit:   "com.unity3d.unityhub",
            delete: "/Applications/Unity/Hub"

  zap trash: [
    "~/Library/Preferences/com.unity3d.unityhub.plist",
    "~/Library/Preferences/com.unity3d.unityhub.helper.plist",
  ]
end
