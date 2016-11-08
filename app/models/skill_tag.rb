class SkillTag
  include Neo4j::ActiveNode
  property :name, type: String
  has_many :both, :users, type: 'users'

  def self.find_or_create(skill_name)
    skill_tag = SkillTag.find_by(name: skill_name)
    if skill_tag&.name
      skill_tag
    else
      SkillTag.create(name: skill_name)
    end
  end

end
