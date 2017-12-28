require "erb"
require "irb"

class EmojiFormatter
  include ERB::Util

  RSpec::Core::Formatters.register self,
    :dump_failures,
    :dump_pending,
    :dump_summary,
    :close,
    :example_passed,
    :example_failed,
    :example_pending,
    :example_started,
    :example_group_finished

  TEMPLATE = File.read(File.dirname(__FILE__) + "/template.html.erb").freeze

  def initialize(output)
    @passed = []
    @failed = []
    @pending = []
  end

  def example_started(notification)

  end

  def example_group_finished(notification)

  end

  def example_passed(notification)
    @passed << notification
  end

  def example_failed(notification)
    @failed << notification
  end

  def example_pending(notification)
    @pending << notification
  end

  def dump_pending(notification)

  end

  def dump_failures(notification)

  end

  def dump_summary(notification)
    @summary = notification
  end

  def close(notification)
    puts render!
  end

  private

  def render!
    ERB.new(TEMPLATE).result(binding)
  end

  def pluralize(count, string)
    "#{count} #{string}#{'s' unless count.to_f == 1}"
  end
end
