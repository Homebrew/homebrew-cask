cask "unity-hub" do
  arch arm: "arm64", intel: "x64"

  version "3.19.4"
  sha256 arm:   "8314a09f37a8ca1ac089c1561df20797c7dc871074a82d7cef69dbed4b42e59d",
         intel: "d1ea4d52888813c66a3477f1378b5239aa60e854c0730ff26bfba0df424fa630"

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
