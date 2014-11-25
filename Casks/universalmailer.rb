class Universalmailer < Cask
  version '2.1.5'
  sha256 '93055459aacd9c31b609ee00ef175a6c17e0c33657c9fef1db486f73b51dc437'

  url 'http://universalmailer.github.io/UniversalMailer/zips/UniversalMailer-v2_1_5.zip'
  homepage 'http://universalmailer.github.io/UniversalMailer/'
  license :oss

  pkg 'UniversalMailer.pkg'

  uninstall :pkgutil => 'it.noware.universalmailer.pkg'
  uninstall :delete  => '/Library/Mail/Bundles/UniversalMailer.mailbundle'
end
