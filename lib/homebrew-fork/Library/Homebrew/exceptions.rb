# raised by safe_system in utils.rb
class ErrorDuringExecution < RuntimeError
  def initialize(cmd, args=[])
    args = args.map { |a| a.to_s.gsub " ", "\\ " }.join(" ")
    super "Failure while executing: #{cmd} #{args}"
  end
end

# raised in CurlDownloadStrategy.fetch
class CurlDownloadStrategyError < RuntimeError; end

# raised by Pathname#verify_checksum when "expected" is nil or empty
class ChecksumMissingError < ArgumentError; end

# raised by Pathname#verify_checksum when verification fails
class ChecksumMismatchError < RuntimeError
  attr_reader :expected, :hash_type

  def initialize fn, expected, actual
    @expected = expected
    @hash_type = expected.hash_type.to_s.upcase

    super <<-EOS.undent
      #{@hash_type} mismatch
      Expected: #{expected}
      Actual: #{actual}
      Archive: #{fn}
      To retry an incomplete download, remove the file above.
      EOS
  end
end
