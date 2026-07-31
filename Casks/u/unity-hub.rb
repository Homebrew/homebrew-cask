cask "unity-hub" do
  arch arm: "arm64", intel: "x64"

  version "3.20.0"
  sha256 arm:   "49bb701e48ac7aa02f352348fb6e0aae20f808730ee8f4c371b3c3494c6232d9",
         intel: "f74aa268470f9cc2a97b5aae1ebd2ded05ecbe37689d982c3f01a45d6caa9999"

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
