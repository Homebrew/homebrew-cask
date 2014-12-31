# raised by safe_system in utils.rb
class ErrorDuringExecution < RuntimeError
  def initialize(cmd, args=[])
    args = args.map { |a| a.to_s.gsub " ", "\\ " }.join(" ")
    super "Failure while executing: #{cmd} #{args}"
  end
end

# raised in CurlDownloadStrategy.fetch
class CurlDownloadStrategyError < RuntimeError; end
