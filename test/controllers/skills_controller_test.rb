require 'test_helper'

class SkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skill = skills(:one)
  end

  test "should get index.html.erb" do
    get skills_url
    assert_response :success
  end

  test "should get new" do
    get new_skill_url
    assert_response :success
  end

  test "should create skill" do
    assert_difference('Skill.count') do
      post skills_url, params: { skill: { desc: @skill.desc, home: @skill.home, image: @skill.image, name: @skill.name, type: @skill.type } }
    end

    assert_redirected_to skill_url(Skill.last)
  end

  test "should show skill" do
    get skill_url(@skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_skill_url(@skill)
    assert_response :success
  end

  test "should update skill" do
    patch skill_url(@skill), params: { skill: { desc: @skill.desc, home: @skill.home, image: @skill.image, name: @skill.name, type: @skill.type } }
    assert_redirected_to skill_url(@skill)
  end

  test "should destroy skill" do
    assert_difference('Skill.count', -1) do
      delete skill_url(@skill)
    end

    assert_redirected_to skills_url
  end
end
