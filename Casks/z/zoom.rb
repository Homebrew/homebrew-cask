cask "zoom" do
  arch arm: "arm64/"
  livecheck_folder = on_arch_conditional arm: "?archType=arm64"
  url_file = on_system_conditional macos: "#{arch}zoomusInstallerFull.pkg",
                                   linux: "zoom_x86_64.tar.xz"

  sha256 arm:          "49cf70af674176f3708b9d3b519f585424c442ccf744fd9659327967971c8279",
         intel:        "62f6b0a647084b4da6faec3a685dfcee12b9024c6a9b51b25c5133338a97a902",
         x86_64_linux: "17ec33965dace13662a563e4f2ab78281e33f39778ab4fa9fef4da90a5934140"

  on_macos do
    version "7.1.5.84650"

    livecheck do
      url "https://www.zoom.us/client/latest/zoomusInstallerFull.pkg#{livecheck_folder}"
      strategy :header_match
    end

    auto_updates true
    conflicts_with cask: "zoom-for-it-admins"

    pkg "zoomusInstallerFull.pkg"

    postflight_steps do
      # Description: Ensure console variant of postinstall is non-interactive.
      # This is because `open "$APP_PATH"&` is called from the postinstall
      # script of the package and we don't want any user intervention there.
      terminate_process(
        "/Applications/zoom.us.app",
        match:           :full,
        attempts:        3,
        must_succeed:    false,
        notices:         [
          "The Zoom package postinstall script launches the Zoom app",
          "Attempting to close zoom.us.app to avoid unwanted user intervention",
        ],
        failure_message: "Unable to forcibly close zoom.us.app",
      )
    end

    uninstall launchctl: [
                "us.zoom.updater",
                "us.zoom.updater.login.check",
                "us.zoom.ZoomDaemon",
              ],
              signal:    ["KILL", "us.zoom.xos"],
              pkgutil:   "us.zoom.pkg.videomeeting",
              delete:    [
                "/Applications/zoom.us.app",
                "/Library/Internet Plug-Ins/ZoomUsPlugIn.plugin",
                "/Library/Logs/DiagnosticReports/zoom.us*",
                "/Library/PrivilegedHelperTools/us.zoom.ZoomDaemon",
              ]

    zap trash: [
      "~/.zoomus",
      "~/Desktop/Zoom",
      "~/Documents/Zoom",
      "~/Library/Application Scripts/*.ZoomClient3rd",
      "~/Library/Application Support/CloudDocs/session/containers/iCloud.us.zoom.videomeetings",
      "~/Library/Application Support/CloudDocs/session/containers/iCloud.us.zoom.videomeetings.plist",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/us.zoom*.sfl*",
      "~/Library/Application Support/CrashReporter/zoom.us*",
      "~/Library/Application Support/zoom.us",
      "~/Library/Application Support/ZoomUpdater",
      "~/Library/Caches/us.zoom.xos",
      "~/Library/Cookies/us.zoom.xos.binarycookies",
      "~/Library/Group Containers/*.ZoomClient3rd",
      "~/Library/HTTPStorages/us.zoom.xos",
      "~/Library/HTTPStorages/us.zoom.xos.binarycookies",
      "~/Library/Internet Plug-Ins/ZoomUsPlugIn.plugin",
      "~/Library/Logs/zoom.us",
      "~/Library/Logs/zoominstall.log",
      "~/Library/Logs/ZoomPhone",
      "~/Library/Preferences/us.zoom.*.plist",
      "~/Library/Preferences/ZoomChat.plist",
      "~/Library/Saved Application State/us.zoom.xos.savedState",
      "~/Library/WebKit/us.zoom.xos",
    ]
  end
  on_linux do
    version "7.1.5.4332"

    livecheck do
      url "https://www.zoom.us/client/latest/zoom_x86_64.tar.xz"
      regex(%r{/prod/(\d+(?:\.\d+)+)/}i)
      strategy :header_match do |headers, regex|
        match = headers["location"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end

    depends_on arch: :x86_64

    # `ZoomLauncher` is the entry point the upstream `.deb` symlinks to
    # `/usr/bin/zoom`; it sets up the environment before launching `zoom`.
    binary "zoom/ZoomLauncher", target: "zoom"

    zap trash: [
      "~/.config/zoom",
      "~/.config/zoom.conf",
      "~/.config/zoomus.conf",
      "~/.zoom",
    ]
  end

  url "https://cdn.zoom.us/prod/#{version}/#{url_file}"
  name "Zoom"
  desc "Video communication and virtual meeting platform"
  homepage "https://www.zoom.us/"
end
