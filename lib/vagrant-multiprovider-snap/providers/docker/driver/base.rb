module VagrantPlugins

    module DockerProvider

        class Driver

            def snapshot_take(name)
                execute("commit", @uuid, "take", name || "vagrant-snap-#{Time.now.to_i}")
            end

            def snapshot_delete(name)
                #execute("snapshot", @uuid, "delete", name)
            end

            def snapshot_rollback(bootmode, name)
                # don't try to power off if we're already off
#                unless [:poweroff, :aborted].include?(read_state)
#                    halt
#                    sleep 2 # race condition on locked VMs otherwise?
#                end
#                execute("snapshot",  @uuid, "restore", name || snapshot_list.last)
#                start(bootmode)
            end

            def snapshot_list
#                info = execute("showvminfo", @uuid, "--machinereadable")
#                snapshots = []
#                info.split("\n").each do |line|
#                    if line =~ /^SnapshotName[^=]*="(.+?)"$/
#                        snapshots << $1.to_s
#                    end
#                end
#                snapshots
            end

            def has_snapshot?(name=nil)
#                if name.nil?
#                    return true unless snapshot_list.empty?
#                else
#                    return true if snapshot_list.include? "#{name}"
#                end
                true
            end


        end

    end

end
