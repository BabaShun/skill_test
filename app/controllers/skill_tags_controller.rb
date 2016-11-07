class SkillTagsController < ApplicationController
  before_action :set_skill_tag, only: [:show, :edit, :update, :destroy, :add_relation]
  include AddSkillConcern

  def index
    @skill_tags = SkillTag.all
  end

  def show
  end

  def new
    @skill_tag = SkillTag.new
  end

  def edit
  end

  def create
    @skill_tag = SkillTag.new(skill_tag_params)

    respond_to do |format|
      if @skill_tag.save
        format.html { redirect_to @skill_tag, notice: 'Skill tag was successfully created.' }
        format.json { render :show, status: :created, location: @skill_tag }
      else
        format.html { render :new }
        format.json { render json: @skill_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @skill_tag.update(skill_tag_params)
        format.html { redirect_to @skill_tag, notice: 'Skill tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill_tag }
      else
        format.html { render :edit }
        format.json { render json: @skill_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @skill_tag.destroy
    respond_to do |format|
      format.html { redirect_to skill_tags_url, notice: 'Skill tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_relation
    create_relation(current_user, @skill_tag)
    redirect_to @skill_tag
  end

  private
    def set_skill_tag
      @skill_tag = SkillTag.find(params[:id])
    end

    def skill_tag_params
      params.require(:skill_tag).permit(:name)
    end
end
