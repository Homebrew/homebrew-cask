cask 'universalmailer' do
  version '2.1.6'
  sha256 '873f2606f1bf4168775ad48213638d2ede3dee4d8925c84049a42e31a38a9137'

  url "https://universalmailer.github.io/UniversalMailer/zips/UniversalMailer-v#{version.dots_to_underscores}.zip"
  name 'Universal Mailer'
  homepage 'https://universalmailer.github.io/UniversalMailer/'

  pkg 'UniversalMailer.pkg'

  uninstall pkgutil: 'it.noware.universalmailer.pkg',
            delete:  '/Library/Mail/Bundles/UniversalMailer.mailbundle'
end
