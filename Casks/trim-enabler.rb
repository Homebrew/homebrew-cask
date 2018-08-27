cask 'trim-enabler' do
  version '4.1.2,1507416957'
  sha256 '227fbbe724bcfdac4fb8c60f3fb271efd0092ba07d27adcb1c894cd02ec21cb0'

  # dl.devmate.com/org.cindori.TrimEnabler4 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/org.cindori.TrimEnabler4/#{version.minor_patch.no_dots}/#{version.after_comma}/TrimEnabler-#{version.minor_patch.no_dots}.zip"
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
