cask :v1 => 'universalmailer' do
  version '2.1.5'
  sha256 '93055459aacd9c31b609ee00ef175a6c17e0c33657c9fef1db486f73b51dc437'

  url "https://universalmailer.github.io/UniversalMailer/zips/UniversalMailer-v#{version.gsub('.','_')}.zip"
  name 'Universal Mailer'
  homepage 'https://universalmailer.github.io/UniversalMailer/'
  license :mit

  pkg 'UniversalMailer.pkg'

  uninstall :pkgutil => 'it.noware.universalmailer.pkg',
            :delete  => '/Library/Mail/Bundles/UniversalMailer.mailbundle'
end
