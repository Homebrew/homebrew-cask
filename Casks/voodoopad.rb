cask :v1 => 'voodoopad' do
  version :latest
  sha256 :no_check

  url 'https://plausible.coop/static/download/VoodooPad.zip'
  homepage 'https://plausible.coop/voodoopad/'
  license :unknown    # todo: improve this machine-generated value

  app 'VoodooPad.app'
end
