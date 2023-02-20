
require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  let(:post) {
    Post.create!(
      name: "MyString",
      title: "MyString",
      content: "MyText"
    )
  }

  before(:each) do
    assign(:post, post)
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(post), "post" do

      assert_select "input[name=?]", "post[name]"

      assert_select "input[name=?]", "post[title]"

      assert_select "textarea[name=?]", "post[content]"
    end
  end
end