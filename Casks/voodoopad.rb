cask :v1 => 'voodoopad' do
  version :latest
  sha256 :no_check

  url 'https://plausible.coop/static/download/VoodooPad.zip'
  name 'VoodooPad'
  homepage 'https://plausible.coop/voodoopad/'
  license :commercial

  app 'VoodooPad.app'
end
