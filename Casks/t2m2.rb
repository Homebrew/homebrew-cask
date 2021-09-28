cask "t2m2" do
  version "1.19,2021.09"
  sha256 "aa41043dd8bff576c27173859ed55766fad947d17f28938f10aa8fc764cfb16c"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.major}/#{version.after_comma.minor}/t2m2#{version.before_comma.no_dots}.zip"
  name "t2m2"
  name "The Time Machine Mechanic"
  desc "Time Machine log viewer & status inspector"
  homepage "https://eclecticlight.co/consolation-t2m2-and-log-utilities/"

  app "TheTimeMachineMechanic.app"
end
