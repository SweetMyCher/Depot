require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products
  test "product is not valid without a unique title" do
    # если у товара нет уникального названия, то он недопустим
    product = Product.new(title: products(:ruby).title,
                          description: "yyy",
                          price: 1,
                          image_url: "fred.gif")
    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:title]
    # уже было использовано
  end
end
