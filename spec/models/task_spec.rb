require 'spec_helper'

describe Task do
  it { should validate_presence_of :description }

  it 'lists all of the done tasks' do
    test_task1 = Task.create({:description => 'wash car', :due_date => '2014-03-31', :done => true})
    test_task2 = Task.create({:description => 'learn python', :due_date => '2014-03-31', :done => false})
    test_task3 = Task.create({:description => 'walk the dog', :due_date => '2014-03-31', :done => true})
    Task.done_tasks.should eq [test_task1, test_task3]
  end

  it 'lists all of the done tasks' do
    test_task1 = Task.create({:description => 'wash car', :due_date => '2014-03-31', :done => true})
    test_task2 = Task.create({:description => 'learn python', :due_date => '2014-03-31', :done => false})
    test_task3 = Task.create({:description => 'walk the dog', :due_date => '2014-03-31', :done => true})
    Task.not_done_tasks.should eq [test_task2]
  end
end
