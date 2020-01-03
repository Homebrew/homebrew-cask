cask 'trim-enabler' do
  version '4.3,20.1577971876'
  sha256 'aeebddf1fb296ab815a4565cd9970eaac2d1029490349ee85f2223eeb1ade1b8'

  # dl.devmate.com/org.cindori.TrimEnabler4 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/org.cindori.TrimEnabler4/#{version.after_comma.major}/#{version.after_comma.minor}/TrimEnabler-#{version.after_comma.major}.zip"
  appcast "https://updates.devmate.com/org.cindori.TrimEnabler#{version.major}.xml"
  name 'Trim Enabler'
  homepage 'https://cindori.org/trimenabler/'

  depends_on macos: '>= :yosemite'

  app 'Trim Enabler.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/org.cindori.TEHelper',
            launchctl: 'org.cindori.TEHelper'

  zap trash: [
               "~/Library/Application Support/CrashReporter/Trim Enabler_#{version.major}.plist",
               "~/Library/Application Support/org.cindori.TrimEnabler#{version.major}",
               '~/Library/Application Support/Trim Enabler',
               "~/Library/Caches/org.cindori.TrimEnabler#{version.major}",
               "~/Library/Caches/com.plausiblelabs.crashreporter.data/org.cindori.TrimEnabler#{version.major}",
               "~/Library/Cookies/org.cindori.TrimEnabler#{version.major}.binarycookies",
               "~/Library/Logs/DiagnosticReports/Trim Enabler_#{version.major}.crash",
               '~/Library/Preferences/org.cindori.TrimEnabler.plist',
               "~/Library/Preferences/org.cindori.TrimEnabler#{version.major}.plist",
               "~/Library/Saved Application State/org.cindori.TrimEnabler#{version.major}.savedState",
             ]
end
