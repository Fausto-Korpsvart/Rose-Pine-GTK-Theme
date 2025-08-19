#! /usr/bin/env bash

for theme in '' '-Blue' '-Green' '-Grey' '-Orange' '-Pink' '-Purple' '-Red' '-Teal' '-Yellow'; do
    for type in '' '-Moon'; do
        case "$theme" in
            '')
                theme_color_dark='#9ccfd8'
                theme_color_light='#56949f'
                ;;
            -Blue)
                theme_color_dark='#9ccfd8'
                theme_color_light='#56949f'
                ;;
            -Green)
                theme_color_dark='#31748f'
                theme_color_light='#286983'
                ;;
            -Grey)
                theme_color_dark='#dfdad9'
                theme_color_light='#454064'
                ;;
            -Orange)
                theme_color_dark='#ff9e64'
                theme_color_light='#b15c00'
                ;;
            -Pink)
                theme_color_dark='#ebbcba'
                theme_color_light='#d7827e'
                ;;
            -Purple)
                theme_color_dark='#c4a7e7'
                theme_color_light='#907aa9'
                ;;
            -Red)
                theme_color_dark='#eb6f92'
                theme_color_light='#b4637a'
                ;;
            -Teal)
                theme_color_dark='#1abc9c'
                theme_color_light='#118c74'
                ;;
            -Yellow)
                theme_color_dark='#f6c177'
                theme_color_light='#ea9d34'
                ;;
        esac

        if [[ "$type" == '-Moon' ]]; then
            case "$theme" in
                '')
                    theme_color_dark='#9ccfd8'
                    theme_color_light='#56949f'
                    ;;
                -Blue)
                    theme_color_dark='#9ccfd8'
                    theme_color_light='#56949f'
                    ;;
                -Green)
                    theme_color_dark='#31748f'
                    theme_color_light='#286983'
                    ;;
                -Grey)
                    theme_color_dark='#dfdad9'
                    theme_color_light='#423e65'
                    ;;
                -Orange)
                    theme_color_dark='#ff9e64'
                    theme_color_light='#b15c00'
                    ;;
                -Pink)
                    theme_color_dark='#ebbcba'
                    theme_color_light='#d7827e'
                    ;;
                -Purple)
                    theme_color_dark='#c4a7e7'
                    theme_color_light='#907aa9'
                    ;;
                -Red)
                    theme_color_dark='#eb6f92'
                    theme_color_light='#b4637a'
                    ;;
                -Teal)
                    theme_color_dark='#1abc9c'
                    theme_color_light='#118c74'
                    ;;
                -Yellow)
                    theme_color_dark='#f6c177'
                    theme_color_light='#ea9d34'
                    ;;
            esac
        fi

        if [[ "$type" != '' ]]; then
            rm -rf "theme${theme}${type}"
            cp -rf "theme" "theme${theme}${type}"
            sed -i "s/#9ccfd8/${theme_color_dark}/g" "theme${theme}${type}"/*.svg
            sed -i "s/#56949f/${theme_color_light}/g" "theme${theme}${type}"/*.svg
        elif [[ "$theme" != '' ]]; then
            rm -rf "theme${theme}"
            cp -rf "theme" "theme${theme}"
            sed -i "s/#9ccfd8/${theme_color_dark}/g" "theme${theme}"/*.svg
            sed -i "s/#56949f/${theme_color_light}/g" "theme${theme}"/*.svg
        fi
    done
done

echo -e "DONE!"
