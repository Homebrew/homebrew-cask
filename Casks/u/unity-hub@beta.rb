cask "unity-hub@beta" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "4.0.2"
  sha256 arm:          "60d4379bf01e62e1c65886c4edc9d554254bd9a0b85c5523e937651b557ea622",
         intel:        "3ca2b1d4744decf7bff034778783a1a7e398eeecd3345f2505fe87c5ac308ae0",
         arm64_linux:  "a3cf275ce0e2d2eae626963e3f9f9d1dfbe6dce52dfab38aa9e9e367bef81ea9",
         x86_64_linux: "43cef3c9473af7cfba6787fee0c6fb22d8674b3fcbd45cf9ad2631aecbc344c7"

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
          "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.unity3d.unityhub.sfl*",
          "~/Library/Application Support/UnityHub",
          "~/Library/Preferences/com.unity3d.unityhub.helper.plist",
          "~/Library/Preferences/com.unity3d.unityhub.plist",
        ],
        rmdir: "/Applications/Unity/Hub"
  end
  on_linux do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/#{version}/UnityHub-#{version}-#{arch}.AppImage"

    livecheck do
      url "https://hub.unity3d.com/linux/repos/deb/dists/unstable/main/binary-amd64/Packages"
      regex(/^Package:\s*unityhub\n(?:.+\n)*?Version:\s*v?(\d+(?:\.\d+)+(?:~[\w.]+)?)$/i)
      strategy :page_match do |page, regex|
        page.scan(regex).map { |match| match[0].tr("~", "-") }
      end
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
