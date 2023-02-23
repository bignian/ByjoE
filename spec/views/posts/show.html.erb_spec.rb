require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    assign(:post, Post.create!(
      name: "Name",
      title: "Title"