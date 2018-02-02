require 'test_helper'

class LocalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save article without title" do
   article = Local.new
  assert_not article.save, "Saved the article without a title"
end

end
