cask "turbotax-2024" do
  version "2024.000.0134,EEC27609A06C50D941A28836AE5217A4"
  sha256 "766ad9323834f063dbc133c9e0e4d0793332ea651f224b29b9926cf8768a31d8"

  url "https://downloadpatch.esd.intuit.com/ESD/Files/CTG/comp/#{version.csv.second}/v1/Content/Mac_TurboTax_Download2024.dmg"
  name "TurboTax 2024"
  desc "Tax declaration for the fiscal year 2024"
  homepage "https://turbotax.intuit.com/personal-taxes/cd-download/"

  livecheck do
    url "https://downloadpatch.esd.intuit.com/requestadapter/ctg/comp/2024/turbotaxpersonal/mcusi0000pp00/mac/deliverytarget_live.xml"
    regex(%r{.*?/ESD/Files/CTG/comp/([^/]+)/.*}i)
    strategy :xml do |xml, regex|
      latest_version = xml.get_elements("//DeliveryPackages/CoreDeliveryPackageInfo/InternalName")
                          .map { |item| item.text&.strip }.max
      latest_package_info = xml.elements["//InternalName[text()='#{latest_version}']"]&.parent
      latest_xml_url = latest_package_info.elements["BaseUri"]&.text
      internal_version = latest_package_info.elements["InternalName"]&.text&.match(/(\d+(?:\.\d+)*)/i)
      latest_content = Homebrew::Livecheck::Strategy.page_content(latest_xml_url)
      next if latest_content.blank?

      latest_xml = Homebrew::Livecheck::Strategy::Xml.parse_xml(latest_content[:content])
      latest_url = latest_xml.elements["//DeliveryPackageData/FileContent/ContentNetworkBaseUri"]&.text&.strip
      match = latest_url&.match(regex)
      next if match.blank?

      "#{internal_version},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "TurboTax 2024.app"

  zap trash: [
    "~/Library/Application Support/TurboTax 2024",
    "~/Library/Caches/com.intuit.turbotax.2024",
    "~/Library/Caches/KSCrash/TurboTax",
    "~/Library/Caches/TurboTax 2024",
    "~/Library/HTTPStorages/com.intuit.turbotax.2024",
    "~/Library/HTTPStorages/com.intuit.turbotax.2024.binarycookies",
    "~/Library/Preferences/com.intuit.turbotax.2024.plist",
    "~/Library/WebKit/com.intuit.turbotax.2024",
  ]

  caveats do
    requires_rosetta
  end
end
