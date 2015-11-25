cask :v1 => 'card' do
  version :latest
  sha256 :no_check

  url 'https://github.com/Code-Hex/Card/blob/master/Card/Card.dmg?raw=true'
  name 'Card'
  homepage 'https://github.com/Code-Hex/Card'
  license :gpl

  app 'Card.app'
end
