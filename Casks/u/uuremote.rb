cask "uuremote" do
  version "4.8.1"
  sha256 :no_check

  url "https://a56.gdl.netease.com/uuyc_#{version}.pkg"
      verified: "a56.gdl.netease.com/"
  name "UU Remote"
  name "网易UU远程"
  desc "NetEase UU remote desktop access and control tool"
  homepage "https://uuyc.163.com/"

  livecheck do
    url :url
    regex(/uuyc[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
    strategy :header_match
  end

  pkg "uuyc_#{version}.pkg"

  postflight do
    # The postinstall script automatically opens the app. Therefore, we must
    # suppress this behavior to make the cask installation non-interactive.
    retries ||= 3
    ohai "The UU Remote package postinstall script launches the app" if retries >= 3
    ohai "Attempting to close UU Remote to avoid unwanted user intervention" if retries >= 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/UURemote.app"]
  rescue RuntimeError
    sleep 1
    retry unless (retries -= 1).zero?
    opoo "Unable to forcibly close UU Remote"
  end

  uninstall launchctl: [
              "com.netease.uuremote.agent",
              "com.netease.uuremote.daemon",
            ],
            quit:      "com.netease.uuremote",
            pkgutil:   "com.netease.uuremote",
            delete:    [
              "/Applications/UURemote.app",
              "/Library/Caches/UURemote",
              "/Library/LaunchAgents/com.netease.uuremote.agent.plist",
              "/Library/LaunchDaemons/com.netease.uuremote.daemon.plist",
              "/Users/Shared/UURemote",
            ]

  zap trash: [
    "~/Library/Application Support/com.netease.uuremote",
    "~/Library/Caches/com.netease.uuremote",
    "~/Library/Caches/com.netease.uuremote.server",
    "~/Library/HTTPStorages/com.netease.uuremote",
    "~/Library/HTTPStorages/com.netease.uuremote.server",
    "~/Library/Preferences/com.netease.uuremote.plist",
    "~/Library/Preferences/com.netease.uuremote.server.plist",
  ]
end
