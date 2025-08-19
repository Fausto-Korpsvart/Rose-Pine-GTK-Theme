#! /usr/bin/env bash

for theme in '' '-Blue' '-Green' '-Grey' '-Orange' '-Pink' '-Purple' '-Red' '-Teal' '-Yellow'; do
    for color in '' '-Dark'; do
        for type in '' '-Moon'; do
            if [[ "$color" == '' ]]; then
                case "$theme" in
                    '')
                        theme_color='#56949f'
                        ;;
                    -Blue)
                        theme_color='#56949f'
                        ;;
                    -Green)
                        theme_color='#286983'
                        ;;
                    -Grey)
                        theme_color='#454064'
                        ;;
                    -Orange)
                        theme_color='#b15c00'
                        ;;
                    -Pink)
                        theme_color='#d7827e'
                        ;;
                    -Purple)
                        theme_color='#907aa9'
                        ;;
                    -Red)
                        theme_color='#b4637a'
                        ;;
                    -Teal)
                        theme_color='#118c74'
                        ;;
                    -Yellow)
                        theme_color='#ea9d34'
                        ;;
                esac

                if [[ "$type" == '-Moon' ]]; then
                    background_color='#faf4ed'
                    case "$theme" in
                        '')
                            theme_color='#56949f'
                            ;;
                        -Blue)
                            theme_color='#56949f'
                            ;;
                        -Green)
                            theme_color='#286983'
                            ;;
                        -Grey)
                            theme_color='#423e65'
                            ;;
                        -Orange)
                            theme_color='#b15c00'
                            ;;
                        -Pink)
                            theme_color='#d7827e'
                            ;;
                        -Purple)
                            theme_color='#907aa9'
                            ;;
                        -Red)
                            theme_color='#b4637a'
                            ;;
                        -Teal)
                            theme_color='#118c74'
                            ;;
                        -Yellow)
                            theme_color='#ea9d34'
                            ;;
                    esac
                fi
            else
                case "$theme" in
                    '')
                        theme_color='#9ccfd8'
                        ;;
                    -Blue)
                        theme_color='#9ccfd8'
                        ;;
                    -Green)
                        theme_color='#31748f'
                        ;;
                    -Grey)
                        theme_color='#dfdad9'
                        ;;
                    -Orange)
                        theme_color='#ff9e64'
                        ;;
                    -Pink)
                        theme_color='#ebbcba'
                        ;;
                    -Purple)
                        theme_color='#c4a7e7'
                        ;;
                    -Red)
                        theme_color='#eb6f92'
                        ;;
                    -Teal)
                        theme_color='#1abc9c'
                        ;;
                    -Yellow)
                        theme_color='#f6c177'
                        ;;
                esac

                if [[ "$type" == '-Moon' ]]; then
                    background_color='#002b36'
                    case "$theme" in
                        '')
                            theme_color='#9ccfd8'
                            ;;
                        -Blue)
                            theme_color='#9ccfd8'
                            ;;
                        -Green)
                            theme_color='#31748f'
                            ;;
                        -Grey)
                            theme_color='#dfdad9'
                            ;;
                        -Orange)
                            theme_color='#ff9e64'
                            ;;
                        -Pink)
                            theme_color='#ebbcba'
                            ;;
                        -Purple)
                            theme_color='#c4a7e7'
                            ;;
                        -Red)
                            theme_color='#eb6f92'
                            ;;
                        -Teal)
                            theme_color='#1abc9c'
                            ;;
                        -Yellow)
                            theme_color='#f6c177'
                            ;;
                    esac
                fi
            fi

            if [[ "$type" != '' ]]; then
                cp -r "assets${color}.svg" "assets${theme}${color}${type}.svg"
                if [[ "$color" == '' ]]; then
                    sed -i "s/#56949f/${theme_color}/g" "assets${theme}${color}${type}.svg"
                else
                    sed -i "s/#9ccfd8/${theme_color}/g" "assets${theme}${color}${type}.svg"
                fi
            elif [[ "$theme" != '' ]]; then
                cp -r "assets${color}.svg" "assets${theme}${color}.svg"
                if [[ "$color" == '' ]]; then
                    sed -i "s/#56949f/${theme_color}/g" "assets${theme}${color}.svg"
                else
                    sed -i "s/#9ccfd8/${theme_color}/g" "assets${theme}${color}.svg"
                fi
            fi

        done
    done
done

echo -e "DONE!"
