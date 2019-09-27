cask 'wd-drive-utilities' do
  version '2.1.1.100'
  sha256 '1abbdf3f89c9bbb0b28e72ffa92f03c3355b4dad783cf68d16a8928abd41cb13'

  url "https://downloads.wdc.com/wdapp/WD_Utilities_Standalone_Installer_Mac_#{version.tr('.', '_')}.zip"
  name 'Western Digital Drive Utilities'
  homepage 'https://support.wdc.com/downloads.aspx?lang=en#WD_softwaremac'

  installer script: {
                      executable: "#{staged_path}/WD Drive Utilities Installer.app/Contents/MacOS/WD Drive Utilities Installer",
                      args:       ['-install', '-silent'],
                      sudo:       true,
                    }

  uninstall launchctl: 'com.wdc.WDPrivilegedHelper',
            delete:    [
                         '/Library/LaunchDaemons/com.wdc.WDPrivilegedHelper.plist',
                         '/var/run/com.wdc.WDPrivilegedHelper.socket',
                       ],

            script:    {
                         executable: "#{staged_path}/WD Drive Utilities Installer.app/Contents/MacOS/WD Drive Utilities Installer",
                         args:       ['-uninstall', '-silent'],
                         sudo:       true,
                       }

  zap trash: [
               '~/Library/Caches/com.wdc.branded.driveutility',
               '~/Library/Caches/com.westerndigital.WDDriveUtilityInstaller',
             ]
end
