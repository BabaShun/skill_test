module AddSkillConcern
  extend ActiveSupport::Concern

  def create_relation(user, skill)
    user.skill_tags << skill
    skill.users << user
  end
end