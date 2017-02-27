require_relative 'project'
RSpec.describe Project do
  describe 'tests' do
    before do
      @project = Project.new('Name', 'Description')
      @name = @project.name
      @description = @project.description
    end
    it 'has a getter and setter for name attribute' do
      @name = "Project Name"
      expect(@name).to eq("Project Name")
    end
    it 'has a getter and setter for the description attribute' do
      @description = "Description"
      expect(@description).to eq("Description")
    end

    it 'has a method elevator_pitch to explain name and description' do
      @name = 'Name'
      @description = "Description"
      expect(@project.elevator_pitch).to eq("Name, Description")
    end
  end
end
