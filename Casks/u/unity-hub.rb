cask "unity-hub" do
  arch arm: "arm64", intel: "x64"

  version "3.15.4"
  sha256 :no_check

  url "https://public-cdn.cloud.unity3d.com/hub/prod/UnityHubSetup-#{arch}.dmg"
  name "Unity Hub"
  desc "Management tool for Unity"
  homepage "https://unity3d.com/get-unity/download"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Unity Hub.app"

  uninstall quit: "com.unity3d.unityhub"

  zap trash: [
        "~/Library/Application Support/UnityHub",
        "~/Library/Preferences/com.unity3d.unityhub.helper.plist",
        "~/Library/Preferences/com.unity3d.unityhub.plist",
      ],
      rmdir: "/Applications/Unity/Hub"
end
