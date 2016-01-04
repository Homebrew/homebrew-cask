test_cask 'with-zap-early-script' do
  version '1.2.3'
  sha256 '8c62a2b791cf5f0da6066a0a4b6e85f62949cd60975da062df44adf887f4370b'

  url TestHelper.local_binary_url('MyFancyPkg.zip')
  homepage 'http://example.com/fancy-pkg'

  pkg 'MyFancyPkg/Fancy.pkg'

  zap :early_script => { :executable => 'MyFancyPkg/FancyUninstaller.tool', :args => %w[--please] }
end
