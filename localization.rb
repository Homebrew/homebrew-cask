cask 'localization' do
  version '0.2'
  sha256 :no_check

  url 'https://github.com/athiercelin/localizations/releases/download/0.2/Localizations.zip'
  name 'Localizations'
  homepage 'https://github.com/athiercelin/localizations'
  license :mit

  app 'Localizations.app'
end
