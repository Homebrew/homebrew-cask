cask 'voodoopad' do
  version '5.1.6'
  sha256 '5cfb9d420169ab72dba5bb8137b9f0b930e1f8943671d8f5d6a3c3a6fb96ea21'

  url "https://plausible.coop/static/download/VoodooPad-#{version}.zip"
  appcast 'https://plausible.coop/voodoopad/release_notes',
          checkpoint: 'd8ee7913b9d061ce99ab45c7171aba17460ae22ca3528156da2fba50cdcf69d6'
  name 'VoodooPad'
  homepage 'https://plausible.coop/voodoopad/'

  app 'VoodooPad.app'
end
