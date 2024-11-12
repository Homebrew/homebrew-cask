cask "vmware-horizon-client" do
  version "2406.1-8.13.1-11490701655,CART25FQ2_MAC_2406.1"
  sha256 "604108cd3cef06cb41db2583e47aa6b9a6448480788aa7de50b4cc9e9d2f3ee0"

  url "https://download3.omnissa.com/software/#{version.csv.second}/VMware-Horizon-Client-#{version.csv.first}.dmg",
      verified: "download3.omnissa.com/software/"
  name "VMware Horizon Client"
  desc "Virtual machine client"
  homepage "https://www.vmware.com/"

  livecheck do
    url "https://customerconnect.omnissa.com/channel/public/api/v1.0/products/getRelatedDLGList?locale=en_US&category=desktop_end_user_computing&product=vmware_horizon_clients&version=horizon_8&dlgType=PRODUCT_BINARY"
    regex(%r{/([^/]+)/VMware[._-]Horizon[._-]Client[._-]v?(\d+(?:[.-]\d+)+)\.dmg}i)
    strategy :json do |json, regex|
      mac_json_info = json["dlgEditionsLists"]&.select { |item| item["name"]&.match(/mac/i) }&.first
      api_item = mac_json_info["dlgList"]&.first
      next if api_item.blank?

      download_group = api_item["code"]
      product_id = api_item["productId"]
      pid = api_item["releasePackageId"]
      next if download_group.blank? || product_id.blank? || pid.blank?

      url = "https://customerconnect.omnissa.com/channel/public/api/v1.0/dlg/details?locale=en_US&downloadGroup=#{download_group}&productId=#{product_id}&rPId=#{pid}"
      download_item = Homebrew::Livecheck::Strategy.page_content(url)
      next if download_item[:content].blank?

      match = download_item[:content].match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
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
              "com.vmware.vmwetlmu",
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
