cask "wsjtx" do
  version "2.5.3"
  sha256 "595a90359a16551a4ed36aaaffb4d3efc5fce03754a1e3093812813ad783a2be"

  url "https://physics.princeton.edu/pulsar/k1jt/wsjtx-#{version}-Darwin.dmg"
  name "WSJT-X"
  desc "Ham radio app implementing communication protocols for weak-signal conditions"
  homepage "https://physics.princeton.edu/pulsar/k1jt/wsjtx.html"

  livecheck do
    url :homepage
    regex(/href=.*?wsjtx-(\d+(?:\.\d+)+)-Darwin\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "wsjtx.app"
  artifact "com.wsjtx.sysctl.plist", target: "/Library/LaunchDaemons/com.wsjtx.sysctl.plist"

  postflight do
    set_ownership("/Library/LaunchDaemons/com.wsjtx.sysctl.plist", user: "root", group: "wheel")
  end

  zap trash: [
    "~/Library/Application Support/WSJT-X",
    "~/Library/Preferences/WSJT-X.ini",
    "~/Library/Saved Application State/org.k1jt.wsjtx.savedState",
  ]

  caveats do
    reboot
  end
end
