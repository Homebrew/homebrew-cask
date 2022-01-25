cask "unity-hub" do
  version "3.0.1"
  sha256 :no_check

  url "https://public-cdn.cloud.unity3d.com/hub/prod/UnityHubSetup.dmg"
  name "Unity Hub"
  desc "Management tool for Unity"
  homepage "https://unity3d.com/get-unity/download"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Unity Hub.app"

  uninstall quit: "com.unity3d.unityhub"

  zap trash: [
    "~/Library/Preferences/com.unity3d.unityhub.plist",
    "~/Library/Preferences/com.unity3d.unityhub.helper.plist",
  ],
      rmdir: "/Applications/Unity/Hub"
end
