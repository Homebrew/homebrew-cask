cask 'tinyumbrella' do
  version :latest
  sha256 :no_check

  url 'https://blog.firmwareumbrella.com/download/343/'
  name 'TinyUmbrella'
  homepage 'https://blog.firmwareumbrella.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TinyUmbrella.app'
end
