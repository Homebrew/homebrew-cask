cask :v1 => 'voodoopad' do
  version :latest
  sha256 :no_check

  url 'https://plausible.coop/static/download/VoodooPad.zip'
  name 'VoodooPad'
  homepage 'https://plausible.coop/voodoopad/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'VoodooPad.app'
end
