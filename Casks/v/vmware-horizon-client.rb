cask "vmware-horizon-client" do
  version "2309.1-8.11.1-22783279,CART24FQ4_MAC_2309.1"
  sha256 "f05ab6515b9e366ffe521134d58aca1206391c0483b43e47b99ba337f6518600"

  url "https://download3.vmware.com/software/#{version.csv.second}/VMware-Horizon-Client-#{version.csv.first}.dmg"
  name "VMware Horizon Client"
  desc "Virtual machine client"
  homepage "https://www.vmware.com/"

  livecheck do
    url "https://customerconnect.vmware.com/channel/public/api/v1.0/products/getRelatedDLGList?locale=en_US&category=desktop_end_user_computing&product=vmware_horizon_clients&version=horizon_8&dlgType=PRODUCT_BINARY"
    regex(%r{/([^/]+)/VMware[._-]Horizon[._-]Client[._-]v?(\d+(?:[.-]\d+)+)\.dmg}i)
    strategy :json do |json|
      mac_json_info = json["dlgEditionsLists"]&.select { |item| item["name"].match(/mac/i) }&.first
      api_item = mac_json_info["dlgList"]&.first
      next if api_item.blank?

      download_group = api_item["code"]
      product_id = api_item["productId"]
      pid = api_item["releasePackageId"]
      next if download_group.blank? || product_id.blank? || pid.blank?

      url = "https://customerconnect.vmware.com/channel/public/api/v1.0/dlg/details?locale=en_US&downloadGroup=#{download_group}&productId=#{product_id}&rPId=#{pid}"
      download_item = Homebrew::Livecheck::Strategy.page_content(url)
      next if download_item[:content].blank?

      match = download_item[:content].match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

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
