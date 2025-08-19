make_gtkrc() {
    local dest="${1}"
    local name="${2}"
    local theme="${3}"
    local color="${4}"
    local size="${5}"
    local ctype="${6}"
    local window="${7}"

    [[ "${color}" == '-Light' ]] && local ELSE_LIGHT="${color}"
    [[ "${color}" == '-Dark' ]] && local ELSE_DARK="${color}"

    local GTKRC_DIR="${SRC_DIR}/main/gtk-2.0"
    local THEME_DIR="${1}/${2}${3}${4}${5}${6}"

    if [[ "${color}" != '-Dark' ]]; then
        case "$theme" in
            '')
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

        if [[ "$ctype" == '-Moon' ]]; then
            case "$theme" in
                '')
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

        if [[ "$ctype" == '-Moon' ]]; then
            case "$theme" in
                '')
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

    if [[ "$blackness" == 'true' ]]; then
        case "$ctype" in
            '')
                background_light='#fffaf3'
                background_dark='#09080c'
                background_darker='#111019'
                background_alt='#21202e'
                titlebar_light='#fffaf3'
                titlebar_dark='#09080c'
                ;;
            -Moon)
                background_light='#fffaf3'
                background_dark='#08080d'
                background_darker='#101019'
                background_alt='#211f33'
                titlebar_light='#fffaf3'
                titlebar_dark='#08080d'
                ;;
        esac
    else
        case "$ctype" in
            '')
                background_light='#faf4ed'
                background_dark='#191724'
                background_darker='#21202e'
                background_alt='#34304b'
                titlebar_light='#faf4ed'
                titlebar_dark='#191724'
                ;;
            -Moon)
                background_light='#faf4ed'
                background_dark='#232136'
                background_darker='#211f33'
                background_alt='#312f4c'
                titlebar_light='#faf4ed'
                titlebar_dark='#232136'
                ;;
        esac
    fi

    mkdir -p "${THEME_DIR}/gtk-2.0"

    cp -r "${GTKRC_DIR}/gtkrc${ELSE_DARK:-}-default" "${THEME_DIR}/gtk-2.0/gtkrc"
    sed -i "s/#faf4ed/${background_light}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
    sed -i "s/#191724/${background_dark}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
    sed -i "s/#34304b/${background_alt}/g" "${THEME_DIR}/gtk-2.0/gtkrc"

    if [[ "${color}" == '-Dark' ]]; then
        sed -i "s/#9ccfd8/${theme_color}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
        sed -i "s/#111019/${background_darker}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
        sed -i "s/#191724/${titlebar_dark}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
    else
        sed -i "s/#56949f/${theme_color}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
        sed -i "s/#faf4ed/${titlebar_light}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
    fi
}
