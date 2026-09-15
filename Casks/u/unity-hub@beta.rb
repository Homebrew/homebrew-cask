cask "unity-hub@beta" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.21.3"
  sha256 arm:          "15c1c3b03f036845d727047364358ca821c88ee4108b666db5368417053a154e",
         intel:        "23d466b14ecebee5276956b06036715e194319b4d28b980785d5961634594c72",
         x86_64_linux: "470d6e914c5f317fcc2989cb8b32e034b10d64c335ed9f556da9d8a3ef251cae"

  on_macos do
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
  on_linux do
    depends_on arch: :x86_64

    app_image "UnityHubSetup-#{version}-#{arch}.AppImage", target: "Unity Hub.AppImage"

    zap trash: "~/.config/unityhub"
  end

  url "https://public-cdn.cloud.unity3d.com/hub/prod/#{version}/UnityHubSetup-#{version}-#{arch}.#{url_end}"
  name "Unity Hub"
  desc "Management tool for Unity"
  homepage "https://docs.unity.com/en-us/hub"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  conflicts_with cask: "unity-hub"
end
