test_cask 'with-uninstall-delete' do
  version '1.2.3'
  sha256 '8c62a2b791cf5f0da6066a0a4b6e85f62949cd60975da062df44adf887f4370b'

  url TestHelper.local_binary_url('MyFancyPkg.zip')
  homepage 'http://example.com/fancy-pkg'

  pkg 'Fancy.pkg'

  uninstall delete: [
                      '/permissible/absolute/path',
                      '~/permissible/path/with/tilde',
                      'impermissible/relative/path',
                      '/another/impermissible/../relative/path',
                    ]
end
