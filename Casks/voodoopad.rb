cask 'voodoopad' do
  version '5.1.6'
  sha256 '5cfb9d420169ab72dba5bb8137b9f0b930e1f8943671d8f5d6a3c3a6fb96ea21'

  url "https://plausible.coop/static/download/VoodooPad-#{version}.zip"
  appcast 'https://plausible.coop/voodoopad/release_notes',
          checkpoint: 'e4993ba176c67aae1c4c053bee52bdd533fc133ab0b7456b733dff1c74c4d4ca'
  name 'VoodooPad'
  homepage 'https://plausible.coop/voodoopad/'

  app 'VoodooPad.app'
end
