cask "workman" do
  version :latest
  sha256 :no_check

  url "https://github.com/workman-layout/Workman/archive/master.zip",
      verified: "github.com/workman-layout/Workman/"
  name "Workman keyboard layout"
  desc "Alternative English keyboard layout"
  homepage "https://workmanlayout.org/"

  artifact "Workman-master/mac/Workman.bundle", target: "/Library/Keyboard Layouts/Workman.bundle"

  caveats do
    reboot
  end
end
