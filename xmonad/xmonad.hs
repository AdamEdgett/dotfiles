import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run (spawnPipe)
import XMonad.Util.EZConfig (additionalKeysP)
import XMonad.Hooks.EwmhDesktops
import XMonad.Layout.Grid
import System.IO
import Data.List (isInfixOf)

myWorkspaces = ["1","2","3","4","5","6","7","8","9"]

myLayouts = Full ||| tall ||| Grid
          where tall    = Tall nmaster delta ratio
                nmaster = 1
                ratio   = 1/2
                delta   = 3/100

main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig

myBar = "xmobar"

myPP = xmobarPP { ppTitle   = xmobarColor "green" "" . shorten 100
                , ppCurrent = xmobarColor "red"   "" . wrap "[" "]" }

toggleStrutsKey XConfig { XMonad.modMask = modMask } = (modMask, xK_b)

myConfig = defaultConfig
        { workspaces      = myWorkspaces
        , handleEventHook = fullscreenEventHook
        , manageHook      = manageDocks <+> manageHook defaultConfig
        , layoutHook      = avoidStruts $ myLayouts
        , terminal        = "terminator"
        , borderWidth     = 1
        , focusedBorderColor = "grey"
        , normalBorderColor = "black"
        , modMask         = mod4Mask }
        `additionalKeysP`
        [ -- Apps
          ("M-x t",                  spawn "terminator")
        , ("M-x M-t",                spawn "terminator")
        , ("M-x c",                  spawn "google-chrome")
        , ("M-x M-c",                spawn "google-chrome")
        , ("M-x s",                  spawn "subl")
        , ("M-x M-s",                spawn "subl")
        , ("M-x v",                  spawn "gvim")
        , ("M-x M-v",                spawn "gvim")
        , ("M-x y",                  spawn "qsynergy")
        , ("M-x M-y",                spawn "qsynergy")
        , ("M-x b",                  spawn "virtualbox")
        , ("M-x M-b",                spawn "virtualbox")
        , ("M-x l",                  spawn "libreoffice")
        , ("M-x M-l",                spawn "libreoffice")
        -- Power commands
        , ("M-<Escape> M-s",         spawn "sudo pm-suspend")
        , ("M-<Escape> M-r",         spawn "sudo reboot")
        , ("M-<Escape> M-o",         spawn "sudo shutdown now")
        -- Function keys
        , ("<XF86AudioLowerVolume>", spawn "amixer set Master 5%-" )
        , ("<XF86AudioRaiseVolume>", spawn "amixer set Master 5%+" )
        , ("<XF86AudioMute>",        spawn "amixer set Master toggle" )
        , ("<Print>",                spawn "scrot '%Y-%m-%d-%H%M.png' -e 'mv $f ~/Desktop/'")
        , ("S-<Print>",              spawn "sleep 0.3; scrot -s '%Y-%m-%d-%H%M.png' -e 'mv $f ~/Desktop/'") ]

