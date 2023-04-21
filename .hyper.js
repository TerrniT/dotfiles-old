"use strict";
module.exports = {
  config: {
    // choose either `'stable'` for receiving highly polished,
    // or `'canary'` for less polished but more frequent updates
    updateChannel: 'stable',
    // default font size in pixels for all tabs
    fontSize: 17,
    // font family with optional fallbacks
    //fontFamily: '"Hasklug Nerd Font", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    fontFamily: "Iosevka Nerd Font",
    // default font weight: 'normal' or 'bold'
    fontWeight: 'medium',
    // font weight for bold characters: 'normal' or 'bold'
    fontWeightBold: 'bold',
    // line height as a relative unit
    lineHeight: 1,
    // letter spacing as a relative unit
    letterSpacing: 0,
    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: '#FFF',
    // terminal text color under BLOCK cursor
    cursorAccentColor: '#454545',
    // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
    cursorShape: 'BLOCK',
    // set to `true` (without backticks and without quotes) for blinking cursor
    cursorBlink: true,
    css: '',
    // custom CSS to embed in the terminal window
    termCSS: '',
    // set custom startup directory (must be an absolute path)
    workingDirectory: '',
    showHamburgerMenu: 'true',
    // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` (without backticks and without quotes) on Windows and Linux, ignored on macOS
    showWindowControls: '',
    // custom padding (CSS format, i.e.: `top right bottom left`)
    padding: '25px 5px 35px 0px',
    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: '#fff',
      red: '#C51E14',
      green: '#1DC121',
      yellow: '#C7C329',
      blue: '#0A2FC4',
      magenta: '#C839C5',
      cyan: '#20C5C6',
      white: '#C7C7C7',
      lightBlack: '#686868',
      lightRed: '#FD6F6B',
      lightGreen: '#67F86F',
      lightYellow: '#FFFA72',
      lightBlue: '#6A76FB',
      lightMagenta: '#FD7CFC',
      lightCyan: '#68FDFE',
      lightWhite: '#FFFFFF',
      limeGreen: '#32CD32',
      lightCoral: '#F08080',
    },
    shell: 'pwsh.exe',
    shellArgs: ['--login'],
    env: {},
    bell: 'SOUND',
    copyOnSelect: false,
    // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true,
    // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
    // selection is present (`true` by default on Windows and disables the context menu feature)
    quickEdit: false,
    // choose either `'vertical'`, if you want the column mode when Option key is hold during selection (Default)
    // or `'force'`, if you want to force selection regardless of whether the terminal is in mouse events mode
    // (inside tmux or vim with mouse mode enabled for example).
    macOptionSelectionMode: 'vertical',
    // Whether to use the WebGL renderer. Set it to false to use canvas-based
    // rendering (slower, but supports transparent backgrounds)
    webGLRenderer: false,
    // keypress required for weblink activation: [ctrl|alt|meta|shift]
    // todo: does not pick up config changes automatically, need to restart terminal :/
    webLinksActivationKey: 'ctrl+shift+0',
    // if `false` (without backticks and without quotes), Hyper will use ligatures provided by some fonts
    disableLigatures: true,
    // set to true to disable auto updates
    disableAutoUpdates: false,
    // set to true to enable screen reading apps (like NVDA) to read the contents of the terminal
    screenReaderMode: false,
    // set to true to preserve working directory when creating splits or tabs
    preserveCWD: true,
    // for advanced config flags please refer to https://hyper.is/#cfg
    //
    // Pane Navigation 
    opacity: 0.99,
    paneNavigation: {
      debug: false,
      hotkeys: {
        navigation: {
          up: "ctrl+alt+k",
          down: "ctrl+alt+j",
          left: "ctrl+alt+h",
          right: "ctrl+alt+l",
        },
        jump_prefix: 'ctrl+alt', // completed with 1-9 digits
        permutation_modifier: 'shift', // Added to jump and navigation hotkeys for pane permutation
        maximize: 'meta+enter'
      },

      showIndicators: true, // Show pane number
      indicatorPrefix: '⌥',
      indicatorStyle: { // Added to indicator <div>
        position: 'absolute',
        bottom: 0,
        right: 0,
        width: 34,
        height: 20,
        fontSize: '12px',
        fontWeight: "bold",
        dispay: "flex",
        padding: "1px 4px 4px 6px",
        border: "solid 0.5px #BA5A31",
        borderRadius: "3px",
        color: "#BA5A31"

      },
      focusOnMouseHover: false,
      inactivePaneOpacity: 9
    }
  },
  plugins: [
    "hyper-pane",
    "hyper-opacity",
    "hyper-firefox-devtools",
    "hyper-font-ligatures"
  ],
  localPlugins: [],
  keymaps: {
    "tab:next": [
      "alt+l"
    ],
    "tab:prev": [
      "alt+h"
    ],
  },
};
//# sourceMappingURL=config-default.js.map
