cask "vmware-horizon-client" do
  version "2306-8.10.0-21964677,CART24FQ2_MAC_2306"
  sha256 "0f3589c56fc74f709c6ccb7ddaad64918cd3ca37ebbcac4c699d93fa99705b7b"

  url "https://download3.vmware.com/software/#{version.csv.second}/VMware-Horizon-Client-#{version.csv.first}.dmg"
  name "VMware Horizon Client"
  desc "Virtual machine client"
  homepage "https://www.vmware.com/"

  livecheck do
    url "https://customerconnect.vmware.com/channel/public/api/v1.0/products/getRelatedDLGList?locale=en_US&category=desktop_end_user_computing&product=vmware_horizon_clients&version=horizon_8&dlgType=PRODUCT_BINARY"
    regex(%r{/([^/]+)/VMware-Horizon-Client-v?(\d+(?:[.-]\d+)+)\.dmg}i)
    strategy :page_match do |page|
      mac_json_info = JSON.parse(page)["dlgEditionsLists"].select { |item| item["name"].match(/mac/i) }&.first
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

  uninstall delete:    "/Applications/VMware Horizon Client.app",
            pkgutil:   [
              "com.vmware.horizon",
              "com.vmware.VMware.Deem",
              "com.vmware.VMware.Deem.InstallerHelper",
              "com.vmware.VMware.EndpointTelemetryService",
            ],
            launchctl: [
              "com.vmware.deem.MacUIEvents",
              "com.vmware.deemd",
              "com.vmware.horizon.CDSHelper",
              "com.vmware.vmwetlm",
            ],
            quit:      "com.vmware.horizon"

  zap trash: [
    "/Library/Preferences/com.vmware.horizon.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vmware.horizon.sfl2",
    "~/Library/Application Support/VMware Horizon View Client",
    "~/Library/Caches/com.vmware.horizon",
    "~/Library/Logs/VMware Horizon Client",
    "~/Library/Preferences/com.vmware.horizon.keyboard.plist",
    "~/Library/Preferences/com.vmware.horizon.plist",
    "~/Library/Saved Application State/com.vmware.horizon.savedState",
    "~/Library/WebKit/com.vmware.horizon",
  ]
end
