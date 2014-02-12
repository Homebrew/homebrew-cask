class Uberpov < Cask
  url 'http://megapov.inetart.net/uberpov_mac/downloads/Uberpov_Mac.zip'
  homepage 'http://megapov.inetart.net/uberpov_mac/index.html'
  version 'latest'
  no_checksum
  link 'Uberpov_Mac/UberPOV.app'
  caveats do <<-EOS.undent

    The standard include path is: #{destination_path}/Uberpov_Mac/include/
    Before starting any renders, you may want to set this path in UberPOV's preferences under "Files & Paths" > "Set search Paths for additional include files".

    Sample scenes are at: #{destination_path}/Uberpov_Mac/scenes/

    EOS
  end
end
