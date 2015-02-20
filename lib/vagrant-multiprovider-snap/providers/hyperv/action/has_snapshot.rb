module VagrantPlugins

    module HyperV

        module Action

            class HasSnapshot

                def initialize(app, env)
                    @app = app
                end

                def call(env)

		    if env[:snap_name].nil?
                        env[:result] = env[:machine].provider.driver.has_snapshot?
		    else
			env[:result] = env[:machine].provider.driver.has_snapshot?(env[:snap_name])
		    end

                    @app.call(env)

                end

            end

        end

    end

end
