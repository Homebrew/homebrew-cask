cask 'trim-enabler' do
  version '4'
  sha256 :no_check # required as upstream package is updated in-place

  # dl.devmate.com/org.cindori.TrimEnabler was verified as official when first introduced to the cask
  url "https://dl.devmate.com/org.cindori.TrimEnabler#{version}/TrimEnabler.zip"
  name 'Trim Enabler'
  homepage 'https://cindori.org/trimenabler/'

  depends_on macos: '>= :yosemite'

  app 'Trim Enabler.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/org.cindori.TEHelper',
            launchctl: 'org.cindori.TEHelper'

  zap trash: [
               "~/Library/Application Support/CrashReporter/Trim Enabler_#{version}.plist",
               "~/Library/Application Support/org.cindori.TrimEnabler#{version}",
               '~/Library/Application Support/Trim Enabler',
               "~/Library/Caches/org.cindori.TrimEnabler#{version}",
               "~/Library/Caches/com.plausiblelabs.crashreporter.data/org.cindori.TrimEnabler#{version}",
               "~/Library/Cookies/org.cindori.TrimEnabler#{version}.binarycookies",
               "~/Library/Logs/DiagnosticReports/Trim Enabler_#{version}.crash",
               '~/Library/Preferences/org.cindori.TrimEnabler.plist',
               "~/Library/Preferences/org.cindori.TrimEnabler#{version}.plist",
               "~/Library/Saved Application State/org.cindori.TrimEnabler#{version}.savedState",
             ]
end
