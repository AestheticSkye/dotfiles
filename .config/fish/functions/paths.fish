function paths
    switch $argv[1]
        case add
            if test -d $argv[2]
                fish_add_path $argv[2]
                echo $argv[2] added to path
                return 0
            else
                echo "Directory not found: $argv[2]"
                return 1
            end
        case list
            echo $fish_user_paths | tr " " "\n" | nl
            return 0
        case remove
            set dir $fish_user_paths[$argv[2]]
            if set --erase --universal fish_user_paths[$argv[2]]
                echo $dir removed from path
                return 0
            else
                echo "Directory not found in path: $argv[2]"
                return 1
            end
        case '*'
            echo Unknown subcommand
            return 1
    end
end
