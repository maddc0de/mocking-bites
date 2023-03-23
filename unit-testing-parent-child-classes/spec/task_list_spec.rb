require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour

  describe "#all behaviour" do
    it "returns a list of tasks" do
      task_list = TaskList.new
      task_1 = double :task
      task_2 = double :task
      task_list.add(task_1)
      task_list.add(task_2)
      expect(task_list.all).to eq [task_1, task_2]
    end
  end

  describe "#all_complete? behaviour" do
    it "returns true if all tasks completed" do
      task_list = TaskList.new
      task_1 = double :task, complete?: true
      task_2 = double :task, complete?: true
      task_list.add(task_1)
      task_list.add(task_2)
      expect(task_list.all_complete?).to eq true
    end
  end
end
