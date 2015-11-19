cask :v1 => 'tiny' do
  version :latest
  sha256 :no_check

  url 'http://www.delightfuldev.com/tiny/Tiny.zip'
  appcast 'http://www.delightfuldev.com/tiny/update.xml',
          :sha256 => '3c630fc76fda5c9e1704b1d1a84c43a0a6c96905acb70a4e1c6b71fef9806165'
  name 'Tiny'
  homepage 'http://www.delightfuldev.com/tiny/'
  license :gratis

  app 'Tiny.app'

  depends_on :macos => '>= 10.10'
end
