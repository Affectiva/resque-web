require 'test_helper'

module ResqueWeb
  class QueuesControllerTest < ActionController::TestCase
    setup do
      @routes = Engine.routes
    end
    let(:queue_name) { 'example_queue' }

    it "deletes queues" do
      Resque.push(queue_name, :class => 'ExampleJob')
      Resque.queues.include?(queue_name).must_equal true

      delete :destroy, :id => queue_name
      assert_redirected_to queues_path

      Resque.queues.include?(queue_name).wont_equal true
    end
  end
end
