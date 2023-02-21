require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      name: "MyString",
      title: "MyString",
      content: "MyText"
    ))
  e