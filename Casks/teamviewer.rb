cask "teamviewer" do
  on_high_sierra :or_older do
    version "15.2.2756"

    livecheck do
      url "https://download.teamviewer.com/download/update/macupdates.xml?id=0&lang=en&version=#{version}&os=macos&osversion=10.11.1&type=1&channel=1"
      strategy :sparkle
    end
  end
  on_mojave :or_newer do
    version "15.39.5"

    livecheck do
      url "https://download.teamviewer.com/download/update/macupdates.xml?id=0&lang=en&version=#{version}&os=macos&osversion=10.15.1&type=1&channel=1"
      strategy :sparkle
    end
  end

  sha256 :no_check

  url "https://download.teamviewer.com/download/TeamViewer.dmg"
  name "TeamViewer"
  desc "Remote access and connectivity software focused on security"
  homepage "https://www.teamviewer.com/"

  auto_updates true
  conflicts_with cask: "teamviewer-host"
  depends_on macos: ">= :el_capitan"

  on_high_sierra :or_older do
    pkg "Install TeamViewer.pkg"
  end
  on_mojave do
    pkg "Install TeamViewer.app/Contents/Resources/Install TeamViewer.pkg"
  end
  on_catalina do
    # This Cask should be installed and uninstalled manually on Catalina.
    # See https://github.com/Homebrew/homebrew-cask/issues/76829
    installer manual: "Install TeamViewer.app/Contents/Resources/Install TeamViewer.pkg"
  end
  on_big_sur :or_newer do
    pkg "Install TeamViewer.app/Contents/Resources/Install TeamViewer.pkg"
  end
  on_mojave :or_older do
    uninstall delete:    [
                "/Applications/TeamViewer.app",
                "/Library/Preferences/com.teamviewer.teamviewer.preferences.plist",
              ],
              pkgutil:   [
                "com.teamviewer.remoteaudiodriver",
                "com.teamviewer.teamviewer.*",
                "com.teamviewer.AuthorizationPlugin",
              ],
              launchctl: [
                "com.teamviewer.desktop",
                "com.teamviewer.Helper",
                "com.teamviewer.service",
                "com.teamviewer.teamviewer_desktop",
                "com.teamviewer.teamviewer_service",
                "com.teamviewer.teamviewer",
              ],
              quit:      "com.teamviewer.TeamViewer"

    zap trash: [
      "~/Library/Application Support/TeamViewer",
      "~/Library/Caches/com.teamviewer.TeamViewer",
      "~/Library/Caches/TeamViewer",
      "~/Library/Cookies/com.teamviewer.TeamViewer.binarycookies",
      "~/Library/Logs/TeamViewer",
      "~/Library/Preferences/com.teamviewer.TeamViewer.plist",
      "~/Library/Preferences/com.teamviewer.teamviewer.preferences.Machine.plist",
      "~/Library/Preferences/com.teamviewer.teamviewer.preferences.plist",
      "~/Library/Saved Application State/com.teamviewer.TeamViewer.savedState",
    ]
  end
  on_catalina do
    # This Cask should be installed and uninstalled manually on Catalina.
    # See https://github.com/Homebrew/homebrew-cask/issues/76829
    uninstall delete: "#{staged_path}/#{token}"

    caveats <<~EOS
      WARNING: #{token} has a bug in Catalina where it doesn't deal well with being uninstalled by other utilities.
      The recommended way to remove it is by running their uninstaller under:

         Preferences → Advanced
    EOS
  end
  on_big_sur :or_newer do
    uninstall delete:    [
                "/Applications/TeamViewer.app",
                "/Library/Preferences/com.teamviewer.teamviewer.preferences.plist",
              ],
              pkgutil:   [
                "com.teamviewer.remoteaudiodriver",
                "com.teamviewer.teamviewer.*",
                "com.teamviewer.AuthorizationPlugin",
              ],
              launchctl: [
                "com.teamviewer.desktop",
                "com.teamviewer.Helper",
                "com.teamviewer.service",
                "com.teamviewer.teamviewer_desktop",
                "com.teamviewer.teamviewer_service",
                "com.teamviewer.teamviewer",
              ],
              quit:      "com.teamviewer.TeamViewer"

    zap trash: [
      "~/Library/Application Support/TeamViewer",
      "~/Library/Caches/com.teamviewer.TeamViewer",
      "~/Library/Caches/TeamViewer",
      "~/Library/Cookies/com.teamviewer.TeamViewer.binarycookies",
      "~/Library/Logs/TeamViewer",
      "~/Library/Preferences/com.teamviewer.TeamViewer.plist",
      "~/Library/Preferences/com.teamviewer.teamviewer.preferences.Machine.plist",
      "~/Library/Preferences/com.teamviewer.teamviewer.preferences.plist",
      "~/Library/Saved Application State/com.teamviewer.TeamViewer.savedState",
    ]
  end
end
