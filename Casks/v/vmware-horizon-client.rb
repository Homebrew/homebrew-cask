cask "vmware-horizon-client" do
  version "2312.2-8.12.2-23764102,CART25FQ1_MAC_2312.2"
  sha256 "a1370fbda317f98c147b3a63bcaade2120ae40d20f220b419b76949b279bba65"

  url "https://download3.omnissa.com/software/#{version.csv.second}/VMware-Horizon-Client-#{version.csv.first}.dmg",
      verified: "download3.omnissa.com/software/"
  name "VMware Horizon Client"
  desc "Virtual machine client"
  homepage "https://www.vmware.com/"

  # TODO: Once upstream completes migration to the "Broadcom Support Portal"
  # workout an updated livecheck strategy
  livecheck do
    url "https://maintenance.vmware.com/horizon-client-download.html"
    regex(%r{/([^/]+)/VMware[._-]Horizon[._-]Client[._-]v?(\d+(?:[.-]\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "VMware Horizon Client.pkg"

  uninstall launchctl: [
              "com.vmware.deem.MacUIEvents",
              "com.vmware.deemd",
              "com.vmware.horizon.CDSHelper",
              "com.vmware.vmwetlm",
            ],
            quit:      "com.vmware.horizon",
            pkgutil:   [
              "com.vmware.horizon",
              "com.vmware.VMware.Deem",
              "com.vmware.VMware.Deem.InstallerHelper",
              "com.vmware.VMware.EndpointTelemetryService",
            ],
            delete:    [
              "/Applications/VMware Horizon Client.app",
              "/Library/Application Support/VMware",
              "/Library/LaunchAgents/com.vmware.deem.MacUIEvents.plist",
              "/Library/LaunchDaemons/com.vmware.deemd.plist",
              "/Library/LaunchDaemons/com.vmware.horizon.CDSHelper.plist",
              "/Library/LaunchDaemons/com.vmware.vmwetlm.plist",
              "/Library/Logs/VMware View Client Services.log",
              "/Library/Logs/VMware",
              "/Library/Preferences/com.vmware.horizon.plist",
              "/Library/PrivilegedHelperTools/com.vmware.horizon.CDSHelper",
            ]

  zap trash: [
    "/usr/share/file/magic/vmware",
    "~/.vmware",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vmware.horizon.sfl*",
    "~/Library/Application Support/VMware Horizon View Client",
    "~/Library/Caches/com.vmware.horizon",
    "~/Library/Logs/VMware Horizon Client",
    "~/Library/Logs/VMware",
    "~/Library/Preferences/com.vmware.horizon.keyboard.plist",
    "~/Library/Preferences/com.vmware.horizon.plist",
    "~/Library/Saved Application State/com.vmware.horizon.savedState",
    "~/Library/WebKit/com.vmware.horizon",
  ]
end
