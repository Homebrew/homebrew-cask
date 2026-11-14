cask "unity-hub@beta" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "4.0.0"
  sha256 arm:          "253ba613bb06e9e24a1f97d1ac194255ad4cf72207d2194f40b958bfd49f64cf",
         intel:        "5ea5ad8f716f69e8d8fd448ea6d66b67c0edd1ff97897aae41c89d12bf22c5e6",
         arm64_linux:  "72818a416861e06fe611e75577836f91e021039385ad3160c3f275b60c772132",
         x86_64_linux: "5a8dae0fe08e07ae39147a601fb1995d642b979d31e606c2f0fb1c00e58ad3e5"

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
