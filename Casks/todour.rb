cask 'todour' do
  version '2.12'
  sha256 'df5452d5fc0f5c4d71ed6a3dd853b517ac0433c962daf300b599fea6f79b73c7'

  url "http://nerdur.com/Todour-#{version}.dmg"
  appcast 'https://github.com/SverrirValgeirsson/Todour/releases.atom',
          checkpoint: 'c530156342121c8cda479c5065fc7d4aae43199e7b1cb95d7241e9f705c27491'
  name 'Todour'
  homepage 'http://nerdur.com/todour-pl/'

  app 'Todour.app'
end
