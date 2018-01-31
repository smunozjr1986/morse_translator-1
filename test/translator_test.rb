require "./lib/translator"
require 'minitest/autorun'
require 'minitest/pride'

class TranslatorTest <Minitest::Test

  def test_if_instance_exist
    translator = Translate.new

    assert_instance_of Translate, translator
  end

  def test_english_to_morse
    translator = Translate.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
  end

  def test_case_sensitive_with_numbers
    translator = Translate.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")

    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
  end

  # def test_from_file
  #   translator = Translate.new
  #   translator.from_file("input.txt")
  #
  #   assert_equal ".. .--- ..-. .- ..-....-..."
  # end

  def test_translate_morse_to_english
    translator = Translate.new

    assert_equal "hello world",
    translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
  end
end
