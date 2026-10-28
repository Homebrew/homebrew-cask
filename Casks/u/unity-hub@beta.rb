cask "unity-hub@beta" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "4.0.0-beta.4"
  sha256 arm:          "499f1f1ba2c4e89bdcafa268e1342c1772bb2965c33e601f9675ceec24345cfe",
         intel:        "1a95f9f54c334af016c1c33fed9a70fd065174f33652efd929cc99b7c757fdac",
         arm64_linux:  "984df5196d859cacc942aa5b2ac079ee9ddfaef4781c10fc36e171f3f56b396d",
         x86_64_linux: "bdc15e2f296a0eed5b1d468ab1ccd8f26812fc4e40539564e7acabd80bc544bd"

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
