cask :v1test => 'stuffit-container' do
  version '1.2.3'
  sha256 '892b6d49a98c546381d41dec9b0bbc04267ac008d72b99755968d357099993b7'

  url TestHelper.local_binary_url('sheldonmac.sit')
  homepage 'http://www.tobias-jung.de/seekingprofont/'

  depends_on :formula => 'unar'
  artifact 'sheldonmac/v1.0'
end
