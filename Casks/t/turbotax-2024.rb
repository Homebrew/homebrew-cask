cask "turbotax-2024" do
  version "2024.000.0138,52D4593C71ECD1BDC23FA17ED271F5E3"
  sha256 "a5c95d6feb88644e649f20d1e05c41f8c3e58c1b0e16cf932d8aa85c13b99e9b"

  url "https://downloadpatch.esd.intuit.com/ESD/Files/CTG/comp/#{version.csv.second}/v1/Content/Mac_TurboTax_Download2024.dmg"
  name "TurboTax 2024"
  desc "Tax declaration for the fiscal year 2024"
  homepage "https://turbotax.intuit.com/personal-taxes/cd-download/"

  livecheck do
    url "https://downloadpatch.esd.intuit.com/requestadapter/ctg/comp/2024/turbotaxpersonal/mcusi0000pp00/mac/deliverytarget_live.xml"
    regex(%r{/ESD/Files/CTG/comp/([^/]+)/}i)
    strategy :xml do |xml, regex|
      latest_package_info =
        xml.get_elements("//DeliveryPackages/CoreDeliveryPackageInfo")
           .max_by { |item| item.elements["InternalName"]&.text }
      next unless latest_package_info

      version = latest_package_info.elements["InternalName"]&.text&.[](/v?(\d+(?:\.\d+)+)/i, 1)
      latest_xml_url = latest_package_info.elements["BaseUri"]&.text&.strip
      next if !version || !latest_xml_url

      latest_xml_page = Homebrew::Livecheck::Strategy.page_content(latest_xml_url)
      next if (latest_xml_content = latest_xml_page[:content]).blank?

      latest_xml = Homebrew::Livecheck::Strategy::Xml.parse_xml(latest_xml_content)
      latest_url = latest_xml.elements["//DeliveryPackageData/FileContent/ContentNetworkBaseUri"]&.text&.strip
      match = latest_url&.match(regex)
      next if match.blank?

      "#{version},#{match[1]}"
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
