cask "unity-hub" do
  arch arm: "arm64", intel: "x64"

  version "3.19.5"
  sha256 arm:   "da6773add1f638d8bd00615a47661408d1de4a3c94e7efb5a37f1e7131e63272",
         intel: "d86dc505d27560dfe3b5f6da060093034c0ecf934e6d7e85de3223947ef82702"

  url "https://public-cdn.cloud.unity3d.com/hub/prod/#{version}/UnityHubSetup-#{version}-#{arch}.dmg"
  name "Unity Hub"
  desc "Management tool for Unity"
  homepage "https://unity3d.com/get-unity/download"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Unity Hub.app"

  uninstall quit: "com.unity3d.unityhub"

  zap trash: [
        "~/Library/Application Support/UnityHub",
        "~/Library/Preferences/com.unity3d.unityhub.helper.plist",
        "~/Library/Preferences/com.unity3d.unityhub.plist",
      ],
      rmdir: "/Applications/Unity/Hub"
end
