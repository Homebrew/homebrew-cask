cask "vox" do
  version "3.3.19,3399.11:1608574055"
  sha256 "515b76c58132f1eb2383340e6605cefa00e2ad68977de3e89a5dac733ae768da"

  url "https://dl.devmate.com/com.coppertino.Vox/#{version.after_comma.before_colon}/#{version.after_colon}/Vox-#{version.after_comma.before_colon}.zip",
      verified: "devmate.com/com.coppertino.Vox/"
  name "VOX"
  desc "Music player for high resoluion (Hi-Res) music through the external sources"
  homepage "https://vox.rocks/mac-music-player"

  livecheck do
    url "https://updates.devmate.com/com.coppertino.Vox.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}:#{item.url[%r{/(\d+)/[^/]+\.zip}i, 1]}"
    end
  end

  auto_updates true

  app "VOX.app"

  uninstall launchctl: "com.coppertino.VoxHelper"

  zap trash: [
    "~/Library/Application Scripts/com.coppertino.VOXAgent",
    "~/Library/Application Scripts/com.coppertino.Vox",
    "~/Library/Application Support/com.coppertino.Vox",
    "~/Library/Caches/com.coppertino.Vox-Helper",
    "~/Library/Containers/com.coppertino.VOXAgent",
    "~/Library/Containers/com.coppertino.Vox",
    "~/Library/Preferences/com.coppertino.Vox-Helper.plist",
    "~/Library/Preferences/com.coppertino.Vox.plist",
    "~/Library/Preferences/com.coppertino.VoxPrefs.plist",
    "~/Library/Saved Application State/com.coppertino.Vox.savedState",
  ]
end
