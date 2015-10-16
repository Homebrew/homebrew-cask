cask :v1 => 'viber' do
  version :latest
  sha256 :no_check

  url 'http://download.viber.com/desktop/mac/Viber.dmg'
  name 'Viber'
  homepage 'http://viber.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Viber.app'
end
