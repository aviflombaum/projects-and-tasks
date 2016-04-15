require 'rails_helper'

RSpec.describe Project, type: :model do
  subject{Project.new(:name => "Build a Treehouse")}

  context 'with tasks' do
    describe '#add_task' do
      it 'adds a task to a project' do
        task = subject.add_task(:description => "Buy Lumber")
        expect(subject.tasks).to include(task)
      end
    end
  end
end
