cask "workman" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/workman-layout/Workman/archive/refs/heads/master.tar.gz",
      verified: "github.com/workman-layout/Workman/"
  name "Workman keyboard layout"
  desc "Alternative English keyboard layout"
  homepage "https://workmanlayout.org/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  deprecate! date: "2024-06-21", because: :unmaintained

  keyboard_layout "Workman-master/mac/Workman.bundle"

  # No zap stanza required

  caveats do
    reboot
  end
end
