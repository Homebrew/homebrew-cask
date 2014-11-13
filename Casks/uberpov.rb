cask :v1 => 'uberpov' do
  version '3.7-Beta3'
  sha256 '5e3e8ba5b257ad4e058c2f7735776e271f32c02e9cc02f71b1ece6b8c950c8d0'

  url 'http://megapov.inetart.net/uberpov_mac/downloads/Uberpov_Mac_r3.zip'
  homepage 'http://megapov.inetart.net/uberpov_mac/index.html'
  license :unknown

  app 'Uberpov_Mac/UberPOV.app'
  caveats do
    <<-EOS.undent
      The standard UberPOV include path is:

        #{staged_path}/Uberpov_Mac/include/

      Before starting any renders, you may want to set the include path in
      UberPOV's preferences under

        "Files & Paths" > "Set search Paths for additional include files".

      Sample scenes will be installed at:

        #{staged_path}/Uberpov_Mac/scenes/
    EOS
  end
end
