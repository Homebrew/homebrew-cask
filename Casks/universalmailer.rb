cask 'universalmailer' do
  if MacOS.version <= :lion
    version '1.4'
    sha256 'ab4a63f29ddec27ca7cf9ca271777599a9c0484805c42f2636634d6a36d4b486'
  elsif MacOS.version == :mountain_lion
    version '1.5.4'
    sha256 '4799aaf034712db31875b10380dfdd1836c3c028d35640315b6c6720e8aabe63'
  elsif MacOS.version <= :yosemite
    version '2.1.6'
    sha256 '873f2606f1bf4168775ad48213638d2ede3dee4d8925c84049a42e31a38a9137'
  else
    version '3b19'
    sha256 'ad672b846f623c194e63d9c67c72209afd1e99d72f1af6edb34249ace00e105d'
  end

  url "https://universalmailer.github.io/UniversalMailer/zips/UniversalMailer-v#{version.dots_to_underscores}.zip"
  appcast 'https://universalmailer.github.io/UniversalMailer/download.html',
          checkpoint: 'ee2e7a88ad264cb61ca8c24674a61f129f130142086e13aaeb459f17a2b69724'
  name 'Universal Mailer'
  homepage 'https://universalmailer.github.io/UniversalMailer/'

  pkg 'UniversalMailer.pkg'

  uninstall pkgutil: 'it.noware.universalmailer.pkg',
            delete:  '/Library/Mail/Bundles/UniversalMailer.mailbundle'
end
