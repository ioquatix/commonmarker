# frozen_string_literal: true

require 'test_helper'

class TestBasics < Minitest::Test
  def setup
    @doc = Markly.parse('Hi *there*')
  end

  def test_to_html
    assert_equal "<p>Hi <em>there</em></p>\n", @doc.to_html
  end

  def test_markdown_to_html
    html = Markly.render_html('Hi *there*')
    assert_equal "<p>Hi <em>there</em></p>\n", html
  end
end
