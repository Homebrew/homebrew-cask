class StuffitContainer < TestCask
  url TestHelper.local_binary('sheldonmac.sit')
  homepage 'http://www.tobias-jung.de/seekingprofont/'
  version '1.2.3'
  sha256 '892b6d49a98c546381d41dec9b0bbc04267ac008d72b99755968d357099993b7'
  depends_on :formula => 'unar'
  link 'sheldonmac/v1.0'
end
