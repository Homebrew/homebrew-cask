cask "ti-smartview-ce-for-the-ti-84-plus-family" do
  version "5.6.0.2092,0D7B013A0B0846408659344F4C28BBA8"
  sha256 "15ba387d524161a21b8e5ef1060b495a563e2a5594e64737c0f102851f786088"

  url "https://education.ti.com/download/en/ed-tech/BE8220257AA241148986628D6EE332E5/#{version.csv.second}/TI-SmartView-CE-84-#{version.csv.first}.dmg"
  name "TI SmartView CE Emulator Software for the TI-84 Plus Family"
  desc "Software to emulate the TI 84 Plus family of calculators"
  homepage "https://education.ti.com/en/software/details/en/BE8220257AA241148986628D6EE332E5/ti-smartview-ce-for-ti-84-plus-family"

  livecheck do
    url "https://education.ti.com/en/software/details/en/BE8220257AA241148986628D6EE332E5/ti-smartview-ce-for-ti-84-plus-family"
    strategy :page_match do |page|
      page.scan(%r{href=.*?/(\h+)/TI-SmartView-CE-84[._-]v?(\d+(?:\.\d+)+)\.dmg}i).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  pkg "TI-SmartView-CE-84-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.ti.et.smartview.TISmartViewCE84"

  zap trash: [
    "~/Library/Logs/Texas Instruments/TI-SmartView CE for the TI-84 Plus Family",
    "~/Library/Saved Application State/com.ti.et.smartview.TISmartviewCE84.app.savedState",
  ]
end
