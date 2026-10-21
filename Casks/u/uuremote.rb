cask "uuremote" do
  version "4.44.0"
  sha256 "dc3b1c20a1312d6a78aef4bc9664bab58fc0eb93d7642bdadb5cc6d3f6622585"

  url "https://a56.gdl.netease.com/uuyc_#{version}_nochannel.pkg"
  name "UU Remote"
  name "网易UU远程"
  desc "NetEase UU remote desktop access and control tool"
  homepage "https://uuyc.163.com/"

  livecheck do
    url "https://api.nrd.nie.163.com/api/v1/release/dl/4?channel=gwqd"
    regex(/uuyc[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
    strategy :header_match
  end

  depends_on :macos

  pkg "uuyc_#{version}_nochannel.pkg"

  postflight_steps do
    # The postinstall script automatically opens the app. Therefore, we must
    # suppress this behavior to make the cask installation non-interactive.
    terminate_process(
      "/Applications/UURemote.app",
      match:           :full,
      attempts:        3,
      must_succeed:    false,
      notices:         [
        "The UU Remote package postinstall script launches the app",
        "Attempting to close UU Remote to avoid unwanted user intervention",
      ],
      failure_message: "Unable to forcibly close UU Remote",
    )
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
            ]

  zap trash: [
    "/Users/Shared/UURemote",
    "~/Library/Application Support/com.netease.uuremote",
    "~/Library/Application Support/UURemote",
    "~/Library/Caches/com.netease.uuremote",
    "~/Library/Caches/com.netease.uuremote.server",
    "~/Library/HTTPStorages/com.netease.uuremote",
    "~/Library/HTTPStorages/com.netease.uuremote.server",
    "~/Library/Preferences/com.netease.uuremote.plist",
    "~/Library/Preferences/com.netease.uuremote.server.plist",
    "~/Library/sensorsanalytics-com.netease.uuremote.server-first_day.plist",
    "~/Library/WebKit/com.netease.uuremote",
  ]
end
