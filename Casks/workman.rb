cask "workman" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/workman-layout/Workman/archive/master.zip",
      verified: "github.com/workman-layout/Workman/"
  name "Workman keyboard layout"
  desc "Alternative English keyboard layout"
  homepage "https://workmanlayout.org/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  keyboard_layout "Workman-master/mac/Workman.bundle"

  caveats do
    reboot
  end
end
