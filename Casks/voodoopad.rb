cask :v1 => 'voodoopad' do
  version :latest
  sha256 :no_check

  url 'https://plausible.coop/static/download/VoodooPad.zip'
  homepage 'https://plausible.coop/voodoopad/'
  license :unknown

  app 'VoodooPad.app'
end
