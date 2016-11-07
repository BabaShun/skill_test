require 'test_helper'

class SkillTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skill_tag = skill_tags(:one)
  end

  test "should get index" do
    get skill_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_skill_tag_url
    assert_response :success
  end

  test "should create skill_tag" do
    assert_difference('SkillTag.count') do
      post skill_tags_url, params: { skill_tag: { name: @skill_tag.name } }
    end

    assert_redirected_to skill_tag_url(SkillTag.last)
  end

  test "should show skill_tag" do
    get skill_tag_url(@skill_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_skill_tag_url(@skill_tag)
    assert_response :success
  end

  test "should update skill_tag" do
    patch skill_tag_url(@skill_tag), params: { skill_tag: { name: @skill_tag.name } }
    assert_redirected_to skill_tag_url(@skill_tag)
  end

  test "should destroy skill_tag" do
    assert_difference('SkillTag.count', -1) do
      delete skill_tag_url(@skill_tag)
    end

    assert_redirected_to skill_tags_url
  end
end
