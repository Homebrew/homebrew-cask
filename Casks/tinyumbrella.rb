cask :v1 => 'tinyumbrella' do
  version :latest
  sha256 :no_check

  url 'https://blog.firmwareumbrella.com/download/343/'
  name 'TinyUmbrella'
  homepage 'http://blog.firmwareumbrella.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TinyUmbrella.app'
end
