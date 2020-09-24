cask "unity-hub" do
  version "2.4.0"
  sha256 "0198fc9f2826bdec581c2e81e0fe028aad5f4b6f754b1617a8c99f250389e2a1"

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
