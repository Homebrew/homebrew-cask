cask :v1 => 'tofu' do
  version :latest
  sha256 :no_check

  url 'http://amarsagoo.info/tofu/Tofu.dmg'
  homepage 'http://amarsagoo.info/tofu/'
  license :gratis

  app 'Tofu.app'
end
