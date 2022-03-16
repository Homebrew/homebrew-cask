cask "vmware-horizon-client" do
  version "2111.1-8.4.1-19484634,CART23FQ1_MAC_2111_1"
  sha256 "5d80a385e924b3a2534651945efdf88470082248b7f1355ff2d914ac079f3364"

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

  depends_on macos: ">= :sierra"

  app "VMware Horizon Client.app"
end
