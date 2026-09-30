cask "unity-hub" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "3.22.0"
  sha256 arm:          "8ca51a97afddc23a6f0e6c2aed65c7ccfa26f9bde8ada39dda89b787a49107f0",
         intel:        "22bc5015822adf6fceec0153f50710f942ea3e81eccad6ea71adabc1b300f186",
         arm64_linux:  "96233cf0fb744156b69f81d7fde2e498d38ea841e53f6aba17f10c6d013930bd",
         x86_64_linux: "b6204e097c4eb09875ca6d5c39fce7f7d4fd1040089170a0715a7bc616326560"

  on_macos do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/#{version}/UnityHubSetup-#{version}-#{arch}.dmg"

    livecheck do
      url "https://public-cdn.cloud.unity3d.com/hub/prod/latest-mac.yml"
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
      url "https://public-cdn.cloud.unity3d.com/hub/prod/latest-linux.yml"
      strategy :electron_builder
    end

    app_image "UnityHub-#{version}-#{arch}.AppImage", target: "Unity Hub.AppImage"

    zap trash: "~/.config/unityhub"
  end

  name "Unity Hub"
  desc "Management tool for Unity"
  homepage "https://docs.unity.com/en-us/hub"

  auto_updates true
  conflicts_with cask: "unity-hub@beta"
end
