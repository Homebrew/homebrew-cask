cask "unity-hub@beta" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "3.22.0-beta.2"
  sha256 arm:          "5c773be3c966813cd46f2bba20363f2560da03f0180a4ae1ed05d13818f3d504",
         intel:        "38372acf92d1f4fb05e058c33bc9da709768a14e036c639ebf7780c5293c11db",
         arm64_linux:  "17fa80a4b59871e961956ff02e2b782523b2afc5a4e4e26ecc08bb213d80c3d3",
         x86_64_linux: "e9fb127d53d0c402d1cad26a3a8fbccb38889957e64b0a4da15328c6369580bc"

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
