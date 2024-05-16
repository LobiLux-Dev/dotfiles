#!/usr/bin/env fish

function toggle_mic_mute
    dunstctl close-all

    pactl set-source-mute @DEFAULT_SOURCE@ toggle

    set mic_muted (pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')

    switch $mic_muted
        case yes
            notify-send -h string:image-path:/usr/share/icons/breeze-dark/status/16/mic-off.svg Microphone Muted
        case no
            notify-send -h string:image-path:/usr/share/icons/breeze-dark/status/16/mic-on.svg Microphone Unmuted
    end
end

function toggle_volume_mute
    dunstctl close-all

    pactl set-sink-mute @DEFAULT_SINK@ toggle

    set volume_status (pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')

    switch $volume_status
        case yes
            notify-send -h string:image-path:/usr/share/icons/breeze-dark/status/16/audio-off.svg Volume Muted
        case no
            notify-send -h string:image-path:/usr/share/icons/breeze-dark/status/16/audio-on.svg Microphone Unmuted
    end
end

function adjust_volume
    dunstctl close-all

    set volume_level (pactl get-sink-volume @DEFAULT_SINK@ | grep 'Volume' | awk '{print $5}' | tr -d '%')

    set operation $argv[1]

    switch $operation
        case inc
            set new_level (math "$volume_level + 5")
        case dec
            set new_level (math "$volume_level - 5")
    end

    if test $new_level -gt 100
        set new_level 100
    else if test $new_level -lt 0
        set new_level 0
    end

    pactl set-sink-volume @DEFAULT_SINK@ $new_level%

    set volume_icon audio-volume-medium

    if test $new_level -le 30
        set volume_icon audio-volume-low
    else if test $new_level -gt 70
        set volume_icon audio-volume-high
    end

    notify-send -h int:value:$new_level -h string:image-path:/usr/share/icons/breeze-dark/status/16/$volume_icon.svg Volume $new_level%
end

function adjust_brightness
    dunstctl close-all

    set operation $argv[1]

    switch $operation
        case inc
            brightnessctl set +5%
        case dec
            brightnessctl set 5%-
    end

    set brightness_level (brightnessctl | grep 'Current brightness' | awk '{print $4}' | tr -d '(%)')

    set brightness_icon brightness-high

    if test $brightness_level -le 30
        set brightness_icon brightness-low
    end

    notify-send -h int:value:$brightness_level -h string:image-path:/usr/share/icons/breeze-dark/actions/24/$brightness_icon.svg Brightness $brightness_level%
end

switch $argv[1]
    case mic
        toggle_mic_mute
    case volume
        switch $argv[2]
            case mute
                toggle_volume_mute
            case inc or dec
                adjust_volume $argv[2]
        end
    case brightness
        switch $argv[2]
            case inc or dec
                adjust_brightness $argv[2]
        end
end
