cask "unity-hub@beta" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "4.0.0-beta.5"
  sha256 arm:          "2a3dc4fbb3b57e2d010c507171e564f4f08d9b97d53d6104c03e298f520c9909",
         intel:        "6864185bc0164b900f5abac4d10e8d8245b95410dc3ad18fda7952ccf9e46e82",
         arm64_linux:  "8cf906cafb95766eb2ef13915587ae2d8eca81c8f0dbf5be6a8e5c971d538552",
         x86_64_linux: "250556c6ee666b900393400735e54547a1c4137a32ff9b49e9e423b62bfba0fb"

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
