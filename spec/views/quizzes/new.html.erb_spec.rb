require 'rails_helper'

RSpec.describe "quizzes/new", :type => :view do
  before(:each) do
    assign(:quiz, Quiz.new(
      :user => nil
    ))
  end

  it "renders new quiz form" do
    render

    assert_select "form[action=?][method=?]", quizzes_path, "post" do

      assert_select "input#quiz_user_id[name=?]", "quiz[user_id]"
    end
  end
end
