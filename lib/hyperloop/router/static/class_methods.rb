module Hyperloop
  class Router
    module Static
      module ClassMethods
        def render_router(&block)
          define_method(:render) do
            React::Router::StaticRouter() do
              instance_eval(&block)
            end
          end
        end
      end
    end
  end
end