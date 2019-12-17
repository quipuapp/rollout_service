module RolloutService
  module API
    class Groups < Grape::API

      get '/' do
        groups = Config.rollout.groups

        RestfulModels::Response.represent(data: groups)
      end
      
    end
  end
end
