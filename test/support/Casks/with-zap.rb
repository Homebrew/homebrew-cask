class WithZap < TestCask
  version '1.2.3'
  sha256 '8c62a2b791cf5f0da6066a0a4b6e85f62949cd60975da062df44adf887f4370b'

  url TestHelper.local_binary_url('MyFancyPkg.zip')
  homepage 'http://example.com/fancy-pkg'

  pkg 'MyFancyPkg/Fancy.pkg'
  uninstall :quit => 'my.fancy.package.app.from.uninstall'
  zap :script => {
                  :executable => 'MyFancyPkg/FancyUninstaller.tool',
                  :args => %w[--please]
                  },
      :quit => 'my.fancy.package.app',
      :delete => '~/Library/Preferences/my.fancy.app.plist'
end
