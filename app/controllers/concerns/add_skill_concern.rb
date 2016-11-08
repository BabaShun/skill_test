module AddSkillConcern
  extend ActiveSupport::Concern

  def create_relation(user, skill)
    user.skill_tags << skill
    begin
      skill.users.find(user)
    rescue
      skill.users << user
    end
  end

end