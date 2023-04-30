cask "teamviewer" do
  sha256 :no_check

  on_high_sierra :or_older do
    version "15.2.2756"

    pkg "Install TeamViewer.pkg"
  end
  on_mojave do
    version "15.41.8"

    pkg "Install TeamViewer.app/Contents/Resources/Install TeamViewer.pkg"
  end
  on_catalina do
    version "15.41.8"

    # This Cask should be installed and uninstalled manually on Catalina.
    # See https://github.com/Homebrew/homebrew-cask/issues/76829
    installer manual: "Install TeamViewer.app/Contents/Resources/Install TeamViewer.pkg"

    caveats <<~EOS
      WARNING: #{token} has a bug in Catalina where it doesn't deal well with being uninstalled by other utilities.
      The recommended way to remove it is by running their uninstaller under:

         Preferences → Advanced
    EOS
  end
  on_big_sur :or_newer do
    version "15.41.8"

    pkg "Install TeamViewer.app/Contents/Resources/Install TeamViewer.pkg"
  end

  url "https://download.teamviewer.com/download/TeamViewer.dmg"
  name "TeamViewer"
  desc "Remote access and connectivity software focused on security"
  homepage "https://www.teamviewer.com/"

  livecheck do
    url "https://download.teamviewer.com/download/update/macupdates.xml?id=0&lang=en&version=#{version}&os=macos&osversion=10.15.1&type=1&channel=1"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "teamviewer-host"
  depends_on macos: ">= :el_capitan"

  postflight do
    # postinstall launches the app
    retries ||= 3
    ohai "The TeamViewer package postinstall script launches the TeamViewer app" if retries >= 3
    ohai "Attempting to close the TeamViewer app to avoid unwanted user intervention" if retries >= 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/TeamViewer.app"]

  rescue RuntimeError
    sleep 1
    retry unless (retries -= 1).zero?
    opoo "Unable to forcibly close TeamViewer"
  end

  # NOTE: ~/Library/Preferences/com.teamviewer is removed in uninstall
  # and not in zap according to the developer's documentation:
  # https://community.teamviewer.com/English/kb/articles/4165-uninstall-teamviewer-classic-on-macos
  uninstall delete:    [
              "#{staged_path}/#{token}",
              "/Applications/TeamViewer.app",
              "/Library/Preferences/com.teamviewer*",
              "~/Library/Preferences/com.teamviewer*",
            ],
            pkgutil:   [
              "com.teamviewer.AuthorizationPlugin",
              "com.teamviewer.remoteaudiodriver",
              "com.teamviewer.teamviewer.*",
            ],
            launchctl: [
              "com.teamviewer.desktop",
              "com.teamviewer.Helper",
              "com.teamviewer.service",
              "com.teamviewer.teamviewer",
              "com.teamviewer.teamviewer_desktop",
              "com.teamviewer.teamviewer_service",
            ],
            quit:      "com.teamviewer.TeamViewer"

  zap trash: [
    "~/Library/Application Support/TeamViewer",
    "~/Library/Caches/com.teamviewer.TeamViewer",
    "~/Library/Caches/TeamViewer",
    "~/Library/Cookies/com.teamviewer.TeamViewer.binarycookies",
    "~/Library/Logs/TeamViewer",
    "~/Library/Saved Application State/com.teamviewer.TeamViewer.savedState",
  ]
end
