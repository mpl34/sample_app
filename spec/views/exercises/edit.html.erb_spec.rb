require 'spec_helper'

describe "exercises/edit" do
  before(:each) do
    @exercise = assign(:exercise, stub_model(Exercise,
      :name => "MyString",
      :sets => 1,
      :reps => 1,
      :time => 1,
      :rest => 1,
      :side => "MyString",
      :description => "MyString",
      :text => "MyString",
      :area => "MyString",
      :equipment => "MyString",
      :type => "",
      :string => "MyString",
      :best_for => "MyText",
      :eb_link => "MyString",
      :eb_article => "MyString",
      :abstract => "MyText",
      :video_link => "MyString",
      :image1 => "MyString",
      :string => "MyString",
      :image2 => "MyString",
      :image3 => "MyString",
      :image4 => "MyString",
      :created_by => 1
    ))
  end

  it "renders the edit exercise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", exercise_path(@exercise), "post" do
      assert_select "input#exercise_name[name=?]", "exercise[name]"
      assert_select "input#exercise_sets[name=?]", "exercise[sets]"
      assert_select "input#exercise_reps[name=?]", "exercise[reps]"
      assert_select "input#exercise_time[name=?]", "exercise[time]"
      assert_select "input#exercise_rest[name=?]", "exercise[rest]"
      assert_select "input#exercise_side[name=?]", "exercise[side]"
      assert_select "input#exercise_description[name=?]", "exercise[description]"
      assert_select "input#exercise_text[name=?]", "exercise[text]"
      assert_select "input#exercise_area[name=?]", "exercise[area]"
      assert_select "input#exercise_equipment[name=?]", "exercise[equipment]"
      assert_select "input#exercise_type[name=?]", "exercise[type]"
      assert_select "input#exercise_string[name=?]", "exercise[string]"
      assert_select "textarea#exercise_best_for[name=?]", "exercise[best_for]"
      assert_select "input#exercise_eb_link[name=?]", "exercise[eb_link]"
      assert_select "input#exercise_eb_article[name=?]", "exercise[eb_article]"
      assert_select "textarea#exercise_abstract[name=?]", "exercise[abstract]"
      assert_select "input#exercise_video_link[name=?]", "exercise[video_link]"
      assert_select "input#exercise_image1[name=?]", "exercise[image1]"
      assert_select "input#exercise_string[name=?]", "exercise[string]"
      assert_select "input#exercise_image2[name=?]", "exercise[image2]"
      assert_select "input#exercise_image3[name=?]", "exercise[image3]"
      assert_select "input#exercise_image4[name=?]", "exercise[image4]"
      assert_select "input#exercise_created_by[name=?]", "exercise[created_by]"
    end
  end
end
