class Truecrypt < Cask
  version '7.2'
  sha256 '01acf85be9b23a1c718193c40f3ecaaf6551695e0dc67c28345e560cca56c94e'

  url 'https://downloads.sourceforge.net/sourceforge/truecrypt/TrueCrypt-7.2-Mac-OS-X.dmg'
  homepage 'http://truecrypt.org/'

  install 'TrueCrypt 7.2.mpkg'
  caveats do
    files_in_usr_local
    <<-EOS.undent
    Warning: TrueCrypt IS NOT SECURE and the development was ended, see more:
      http://truecrypt.sourceforge.net/
    EOS
  end
  uninstall :pkgutil => 'org.TrueCryptFoundation.TrueCrypt'
end
