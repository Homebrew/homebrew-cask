module AuditMatchers
  extend RSpec::Matchers::DSL

  matcher :pass do
    match do |audit|
      !audit.errors? && !audit.warnings?
    end
  end

  matcher :fail do
    match(&:errors?)
  end

  matcher :warn do
    match do |audit|
      audit.warnings? && !audit.errors?
    end
  end

  matcher :fail_with do |error_msg|
    match do |audit|
      include_msg?(audit.errors, error_msg)
    end
  end

  matcher :warn_with do |warning_msg|
    match do |audit|
      include_msg?(audit.warnings, warning_msg)
    end
  end

  def include_msg?(messages, msg)
    if msg.is_a?(Regexp)
      Array(messages).any? { |m| m =~ msg }
    else
      Array(messages).include?(msg)
    end
  end
end
