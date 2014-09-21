module VagrantPlugins

    module ProviderVirtualBox

        module Action

            class SnapshotDelete

                def initialize(app, env)
                    @app = app
                end

                def call(env)

                    env[:ui].info I18n.t("vagrant_snap.actions.vm.snapshot_delete.deleting")
                    env[:machine].provider.driver.snapshot_delete(env[:snap_name])

                    @app.call(env)

                end

            end

        end

    end

end
