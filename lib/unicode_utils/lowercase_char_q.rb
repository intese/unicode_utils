# encoding: utf-8

require "unicode_utils/read_codepoint_set"

module UnicodeUtils

  PROP_LOWERCASE_SET = Impl.read_codepoint_set("prop_set_lowercase")

  # True if the given character has the Unicode property Lowercase.
  def lowercase_char?(char)
    PROP_LOWERCASE_SET.include?(char.ord)
  end
  module_function :lowercase_char?

end