function __fisher_config_color_reset -a path
    if test ! -f "$path"
        set -U fish_color_normal normal
        set -U fish_color_command 005fd7 purple
        set -U fish_color_param 00afff cyan
        set -U fish_color_redirection 005fd7
        set -U fish_color_comment 600
        set -U fish_color_error red --bold
        set -U fish_color_escape cyan
        set -U fish_color_operator cyan
        set -U fish_color_end green
        set -U fish_color_quote brown
        set -U fish_color_autosuggestion 555 yellow
        set -U fish_color_user green
        set -U fish_color_valid_path --underline
        set -U fish_color_cwd green
        set -U fish_color_cwd_root red
        set -U fish_color_match cyan
        set -U fish_color_search_match --background=purple
        set -U fish_color_selection --background=purple
        set -U fish_pager_color_prefix cyan
        set -U fish_pager_color_completion normal
        set -U fish_pager_color_description 555 yellow
        set -U fish_pager_color_progress cyan
        set -U fish_color_history_current cyan
        set -U fish_color_host normal

        return
    end

    set -l IFS \n

    read -laz fish_colors < $path

    set fish_colors[25] ""

    set -U fish_color_normal            (echo "$fish_colors[1]"  | tr " " \n)
    set -U fish_color_command           (echo "$fish_colors[2]"  | tr " " \n)
    set -U fish_color_param             (echo "$fish_colors[3]"  | tr " " \n)
    set -U fish_color_redirection       (echo "$fish_colors[4]"  | tr " " \n)
    set -U fish_color_comment           (echo "$fish_colors[5]"  | tr " " \n)
    set -U fish_color_error             (echo "$fish_colors[6]"  | tr " " \n)
    set -U fish_color_escape            (echo "$fish_colors[7]"  | tr " " \n)
    set -U fish_color_operator          (echo "$fish_colors[8]"  | tr " " \n)
    set -U fish_color_end               (echo "$fish_colors[9]"  | tr " " \n)
    set -U fish_color_quote             (echo "$fish_colors[10]"  | tr " " \n)
    set -U fish_color_autosuggestion    (echo "$fish_colors[11]"  | tr " " \n)
    set -U fish_color_user              (echo "$fish_colors[12]"  | tr " " \n)
    set -U fish_color_valid_path        (echo "$fish_colors[13]"  | tr " " \n)
    set -U fish_color_cwd               (echo "$fish_colors[14]"  | tr " " \n)
    set -U fish_color_cwd_root          (echo "$fish_colors[15]"  | tr " " \n)
    set -U fish_color_match             (echo "$fish_colors[16]"  | tr " " \n)
    set -U fish_color_search_match      (echo "$fish_colors[17]"  | tr " " \n)
    set -U fish_color_selection         (echo "$fish_colors[18]"  | tr " " \n)
    set -U fish_pager_color_prefix      (echo "$fish_colors[19]"  | tr " " \n)
    set -U fish_pager_color_completion  (echo "$fish_colors[20]"  | tr " " \n)
    set -U fish_pager_color_description (echo "$fish_colors[21]"  | tr " " \n)
    set -U fish_pager_color_progress    (echo "$fish_colors[22]"  | tr " " \n)
    set -U fish_color_history_current   (echo "$fish_colors[23]"  | tr " " \n)
    set -U fish_color_host              (echo "$fish_colors[24]"  | tr " " \n)

    rm -f $path
end
