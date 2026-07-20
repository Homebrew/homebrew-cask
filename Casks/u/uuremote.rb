cask "uuremote" do
  version "4.33.0"
  sha256 "492ab1c360fb30f471dca71d2468be93d6a76a72b7d256d911f2095f72acefdd"

  url "https://a56.gdl.netease.com/uuyc_#{version}.pkg",
      verified: "a56.gdl.netease.com/"
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

  pkg "uuyc_#{version}.pkg"

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
    "~/Library/Caches/com.netease.uuremote",
    "~/Library/Caches/com.netease.uuremote.server",
    "~/Library/HTTPStorages/com.netease.uuremote",
    "~/Library/HTTPStorages/com.netease.uuremote.server",
    "~/Library/Preferences/com.netease.uuremote.plist",
    "~/Library/Preferences/com.netease.uuremote.server.plist",
  ]
end
