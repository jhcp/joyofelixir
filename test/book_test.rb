require_relative 'test_helper'

class TestBook < Minitest::Test
  include Capybara::DSL
  include Capybara::Minitest::Assertions

  def go_home
    visit "http://localhost:4000"
  end

  def go_toc
    visit "http://localhost:4000/toc"
  end

  def test_home_about_link
    go_home
    click_link "About Joy of Elixir"
    assert page.has_content?("The book is currently very much a work-in-progress")
  end

  def test_home_read_it_online_link
    go_home
    click_link "read it online"
    assert page.has_content?("Table of Contents")
  end

  def test_toc_navigation_i
    go_toc
    click_link "But who is this book for really?"
    assert page.has_content?("I. But who is this book for, really?")
  end

  def test_toc_navigation_ii
    go_toc
    click_link "Elixir? Isn't that something you drink?"
    assert page.has_content?("II. Elixir? Isn't that something you drink?")
  end

  def test_toc_navigation_1
    go_toc
    click_link "Appeasing the masses with code"
    assert page.has_content?("1. Appeasing the masses with code")
  end

  def test_toc_navigation_2
    go_toc
    click_link "Now, where did I put that value?"
    assert page.has_content?("2. Now, where did I put that value?")
  end

  def test_toc_navigation_3
    go_toc
    click_link "Lovely lists"
    assert page.has_content?("3. Lovely lists")
  end

  def test_toc_navigation_4
    go_toc
    click_link "Marvellous maps"
    assert page.has_content?("4. Marvellous maps")
  end

  def test_toc_navigation_5
    go_toc
    click_link "Funky functions"
    assert page.has_content?("5. Funky functions")
  end

  def test_toc_navigation_6
    go_toc
    click_link "Pattern matching"
    assert page.has_content?("6. Pattern matching")
  end

  def test_toc_navigation_7
    go_toc
    click_link "Intermission: Recap"
    assert page.has_content?("7. Intermission: Recap")
  end

  def test_toc_navigation_8
    go_toc
    click_link "Working with strings, input and output"
    assert page.has_content?("8. Working with strings, input and output")
  end

  def test_toc_navigation_9
    go_toc
    click_link "Working with lists"
    assert page.has_content?("9. Working with lists")
  end

  def test_toc_navigation_10
    go_toc
    click_link "Working with maps"
    assert page.has_content?("10. Working with maps")
  end

  def test_toc_setup_and_install
    go_toc
    click_link "Setup and install"
    assert page.has_content?("Appendix A: Setup and Install")
  end

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end
