cask "thetimemachinemechanic" do
  version "1.19,2021.09"
  sha256 "aa41043dd8bff576c27173859ed55766fad947d17f28938f10aa8fc764cfb16c"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/t2m2#{version.csv.first.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "The Time Machine Mechanic"
  name "T2M2"
  desc "Time Machine log viewer & status inspector"
  homepage "https://eclecticlight.co/consolation-t2m2-and-log-utilities/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    strategy :page_match do |page|
      match = page.match(%r{/(\d+)/(\d+)/t2m2(\d+)\.zip}i)
      next if match.blank?

      "#{match[3].split("", 2).join(".")},#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "t2m2#{version.csv.first.major}#{version.csv.first.minor}/TheTimeMachineMechanic.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.TheTimeMachineMechanic",
    "~/Library/Preferences/co.eclecticlight.TheTimeMachineMechanic.plist",
    "~/Library/Saved Application State/co.eclecticlight.TheTimeMachineMechanic.savedState",
  ]
end
