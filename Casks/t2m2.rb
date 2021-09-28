cask "t2m2" do
  version "1.19,2021.09"
  sha256 "aa41043dd8bff576c27173859ed55766fad947d17f28938f10aa8fc764cfb16c"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.major}/#{version.after_comma.minor}/t2m2#{version.before_comma.no_dots}.zip"
  name "t2m2"
  name "The Time Machine Mechanic"
  desc "Time Machine log viewer & status inspector"
  homepage "https://eclecticlight.co/consolation-t2m2-and-log-utilities/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    strategy :page_match do |page|
      match = page.match(%r{/(\d+)/(\d+)/t2m2(\d+)\.zip}i)
      "#{match[3].split("", 2).join(".")},#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "TheTimeMachineMechanic.app"
end
