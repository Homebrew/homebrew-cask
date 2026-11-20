cask "unity-hub@beta" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "4.0.1"
  sha256 arm:          "38604d555a6cb8faf01a1cc80d647bfb381a57387611923d83f5b3b2b519f293",
         intel:        "b32bf4eb421d48a8c31d4f156185c92fbd0d32784aa4e9911e1c83854f5ac2e3",
         arm64_linux:  "db2ab594222a0c8c3762d8148abb9dd5b68e0ff58fbd254eccbc3bb36ee543cb",
         x86_64_linux: "4f7a591a0a6bb6c905fc69bde41b5c0e8ccc6dc16b790627c87ffe5623cd6eb0"

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
