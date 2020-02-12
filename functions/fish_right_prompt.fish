function show_result -d "Shows the result of the previous command, or the duration if successful"
  set -l status_copy $status

  # if test "$CMD_DURATION" -gt 20
    set -l duration (echo $CMD_DURATION | humanize_duration)

    if test ! -z "$duration"
        set -l indicator

        #if test $status_copy -ne 0
        #    set indicator " $status_copy "
        #end

        segment_right white 282B2C " $duration "
        # segment_close
    end
  #else if test $status_copy -ne 0
  #  segment_right white f00 " $status_copy "
  #  # segment_close
  #else
  #  segment_right eee 282B2C (date +%H:%M)" "
  #  # segment_close
  #end
end

function fish_right_prompt -d "Prints right prompt"
  show_result

  segment_close
end