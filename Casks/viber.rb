cask :v1 => 'viber' do
  version :latest
  sha256 :no_check

  url 'http://download.viber.com/desktop/mac/Viber.dmg'
  homepage 'http://viber.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Viber.app'
end
