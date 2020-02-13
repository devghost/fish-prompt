function show_result -d "Shows duration of previous command"
    set -l duration (echo $CMD_DURATION | humanize_duration)
    segment_right 777777 282B2C " $duration "
end

function fish_right_prompt -d "Prints right prompt"
  show_result
  segment_close
end