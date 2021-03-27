cask "trim-enabler" do
  version "4.3.5,25.1605105283"
  sha256 "4161afe04f62a3ef6203423452b1e0a606b07c4b32ef4675907781f0ecb6d165"

  url "https://dl.devmate.com/org.cindori.TrimEnabler4/#{version.after_comma.major}/#{version.after_comma.minor}/TrimEnabler-#{version.after_comma.major}.zip",
      verified: "dl.devmate.com/org.cindori.TrimEnabler4/"
  appcast "https://updates.devmate.com/org.cindori.TrimEnabler#{version.major}.xml"
  name "Trim Enabler"
  homepage "https://cindori.org/trimenabler/"

  depends_on macos: ">= :yosemite"

  app "Trim Enabler.app"

  uninstall delete:    "/Library/PrivilegedHelperTools/org.cindori.TEHelper",
            launchctl: "org.cindori.TEHelper"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Trim Enabler_#{version.major}.plist",
    "~/Library/Application Support/org.cindori.TrimEnabler#{version.major}",
    "~/Library/Application Support/Trim Enabler",
    "~/Library/Caches/org.cindori.TrimEnabler#{version.major}",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/org.cindori.TrimEnabler#{version.major}",
    "~/Library/Cookies/org.cindori.TrimEnabler#{version.major}.binarycookies",
    "~/Library/Logs/DiagnosticReports/Trim Enabler_#{version.major}.crash",
    "~/Library/Preferences/org.cindori.TrimEnabler.plist",
    "~/Library/Preferences/org.cindori.TrimEnabler#{version.major}.plist",
    "~/Library/Saved Application State/org.cindori.TrimEnabler#{version.major}.savedState",
  ]
end
