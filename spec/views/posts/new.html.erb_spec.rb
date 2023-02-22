require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      name: "MyString",
      title: "MyString",
      content: "MyText"
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?