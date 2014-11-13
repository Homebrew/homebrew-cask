cask :v1 => 'truecrypt' do
  version '7.2'
  sha256 '01acf85be9b23a1c718193c40f3ecaaf6551695e0dc67c28345e560cca56c94e'

  url "https://downloads.sourceforge.net/sourceforge/truecrypt/TrueCrypt-#{version}-Mac-OS-X.dmg"
  homepage 'http://truecrypt.org/'
  license :oss

  pkg "TrueCrypt #{version}.mpkg"
  uninstall :pkgutil => 'org.TrueCryptFoundation.TrueCrypt'

  caveats do
    files_in_usr_local
    <<-EOS.undent
    Warning: TrueCrypt IS NOT SECURE.  Development has been halted, see

      http://truecrypt.sourceforge.net/
    EOS
  end
end
