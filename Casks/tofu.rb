cask :v1 => 'tofu' do
  version :latest
  sha256 :no_check

  url 'http://amarsagoo.info/tofu/Tofu.dmg'
  homepage 'http://amarsagoo.info/tofu/'
  license :unknown    # todo: improve this machine-generated value

  app 'Tofu.app'
end
