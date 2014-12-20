cask :v1 => 'wireover' do
  version :latest
  sha256 :no_check

  url 'https://router.wireover.com/app/WireOver.dmg'
  homepage 'http://www.wireover.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'WireOver.app'
end
