cask 'universalmailer' do
  if MacOS.version <= :yosemite
    version '2.1.6'
    sha256 '873f2606f1bf4168775ad48213638d2ede3dee4d8925c84049a42e31a38a9137'
  else
    version '3b19'
    sha256 'ad672b846f623c194e63d9c67c72209afd1e99d72f1af6edb34249ace00e105d'
  end

  url "https://universalmailer.github.io/UniversalMailer/zips/UniversalMailer-v#{version.dots_to_underscores}.zip"
  appcast 'https://universalmailer.github.io/UniversalMailer/download.html'
  name 'Universal Mailer'
  homepage 'https://universalmailer.github.io/UniversalMailer/'

  pkg 'UniversalMailer.pkg'

  uninstall pkgutil: 'it.noware.universalmailer.pkg',
            delete:  '/Library/Mail/Bundles/UniversalMailer.mailbundle'
end
