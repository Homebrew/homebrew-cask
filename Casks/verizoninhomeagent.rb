cask 'verizoninhomeagent' do
  version :latest
  sha256 :no_check

  url 'https://care.verizon.net/isupport_motive/iHAPkgsMac/VerizonInHomeAgentInstaller.dmg'
  name 'VerizonInHomeAgent'
  homepage 'https://care.verizon.net/iha/IHAPC.aspx'
  license :gratis

  installer manual: 'VerizonInHomeAgentInstaller.app'

  uninstall quit:   [
                      'VDSI.VerizonUpdateCenter',
                      'com.Verizon.IHA',
                      'com.Verizon.VZIHAMacInstaller',
                      'com.Verizon.Verizon-IHAUpdater',
                    ],
            delete: [
                      '/Applications/Verizon-IHAUpdater.app',
                      '/Applications/VerizonInHomeAgent.app',
                      '/Applications/VerizonUpdateCenter.app',
                      '~/Desktop/VerizonInHomeAgent.app',
                    ]

  zap       delete: [
                      '~/Library/Caches/VDSI.VerizonUpdateCenter',
                      '~/Library/Caches/com.Verizon.IHA',
                      '~/Library/Caches/com.Verizon.VZIHAMacInstaller',
                      '~/Library/Caches/com.Verizon.Verizon-IHAUpdater',
                      '~/Library/Preferences/com.Verizon.IHA.plist',
                      '~/Library/Saved Application State/com.Verizon.IHA.savedState',
                      '~/Library/Saved Application State/com.Verizon.VZIHAMacInstaller.savedState',
                    ]
end
