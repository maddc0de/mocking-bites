require 'task_formatter'

RSpec.describe TaskFormatter do
  context "when task is completed" do
    it "returns a formatted task with [x]" do
      task = double :task, contents: "walk the doggo"
      task_formatter = TaskFormatter.new(task)
      allow(task).to receive(:complete).and_return(true)
      expect(task_formatter.format).to eq "[x] " + task.contents
    end
  end

  context "when task is not completed" do
    it "returns a formatted task with [ ]" do
      task = double :task, contents: "walk the doggo"
      task_formatter = TaskFormatter.new(task)
      allow(task).to receive(:complete).and_return(false)
      expect(task_formatter.format).to eq "[ ] " + task.contents
    end
  end
end