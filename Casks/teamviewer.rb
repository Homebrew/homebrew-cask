cask "teamviewer" do
  on_high_sierra :or_older do
    version "15.2.2756"
    sha256 "fe7daf80f9aee056f97d11183941470fa1c5823101a0951990340b6264a2651a"

    livecheck do
      url "https://download.teamviewer.com/download/update/macupdates.xml?id=0&lang=en&version=#{version}&os=macos&osversion=10.11.1&type=1&channel=1"
      regex(%r{url=.*update/v?(\d+(?:\.\d+)+)/Teamviewer\.pkg}i)
      strategy :page_match
    end

    pkg "TeamViewer.pkg"
  end
  on_mojave do
    version "15.42.4"
    sha256 "3357bc366cd0295dd100b790d6af6216d349d34451ea18ba08692a51eadd6cf7"

    livecheck do
      url "https://download.teamviewer.com/download/update/macupdates.xml?id=0&lang=en&version=#{version}&os=macos&osversion=10.14.1&type=1&channel=1"
      strategy :sparkle
    end

    pkg "TeamViewer.pkg"
  end
  on_catalina do
    version "15.42.4"
    sha256 "3357bc366cd0295dd100b790d6af6216d349d34451ea18ba08692a51eadd6cf7"

    livecheck do
      url "https://download.teamviewer.com/download/update/macupdates.xml?id=0&lang=en&version=#{version}&os=macos&osversion=10.15.1&type=1&channel=1"
      strategy :sparkle
    end

    # This Cask should be installed and uninstalled manually on Catalina.
    # See https://github.com/Homebrew/homebrew-cask/issues/76829
    installer manual: "TeamViewer.pkg"

    caveats <<~EOS
      WARNING: #{token} has a bug in Catalina where it doesn't deal well with being uninstalled by other utilities.
      The recommended way to remove it is by running their uninstaller under:

         Preferences → Advanced
    EOS
  end
  on_big_sur :or_newer do
    version "15.42.9"
    sha256 "2996b68c0caf1daf7792d160e5ad90881a2d35f11d164de7d901ac986ccc38dc"

    livecheck do
      url "https://download.teamviewer.com/download/update/macupdates.xml?id=0&lang=en&version=#{version}&os=macos&osversion=11.7&type=1&channel=1"
      strategy :sparkle
    end

    pkg "TeamViewer.pkg"
  end

  url "https://dl.teamviewer.com/download/version_15x/update/#{version}/TeamViewer.pkg"
  name "TeamViewer"
  desc "Remote access and connectivity software focused on security"
  homepage "https://www.teamviewer.com/"

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

  uninstall delete:    [
              "/Applications/TeamViewer.app",
              "/Library/Preferences/com.teamviewer*",
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
    "~/Library/Preferences/com.teamviewer*",
    "~/Library/Saved Application State/com.teamviewer.TeamViewer.savedState",
  ]
end
