# Prompt
Import-Module posh-git
Import-Module oh-my-posh


# Load my custom oh-my-posh theme
oh-my-posh init pwsh --config C:\Users\super\dotfiles\.config\powershell\terrnit.omp.json | Invoke-Expression

#Invoke-Expression (&starship init powershell)

# Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Fzf
Import-Module PSFzf
Set-PSFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineReverseHistory 'Ctrl+r'

# Alias
Set-Alias n notion 
Set-Alias vim nvim
Set-Alias ll ls 
Set-Alias g git 
Set-Alias grep findstr
Set-Alias tig 'C:Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:Program Files\Git\usr\bin\less.exe'


# Url-Alias Configuration
echo "                                          ################################  "
echo ""
echo "                                          |  config version: 1.0.0.17  |"
echo "                                          |  last updates: 2022/07/07  |
                                                ------------------------------ "
echo "                                                             by t4rrnit"
echo ""
echo ""
echo "            ###############                        #########################                    #######################                                         "
echo "           #    Ideas    #                        #    URL-ALias-List     #                    #   Commands-List     #                                       "
echo "          ###############                        #########################                    #######################                                       "
echo "    
       -- Create: Notes or to-do:                 |  You can just type in |                  |   last updates: 2022/07/07   |
       -- Upload: cfg dotfiles                    _________________________                  -------------------------------
       -- Make: zsh plugin                            Social Media:                          $ doc - url-alias-list with doc   
       -- Download: Tmux and Tig 		  -------------------------                  a list of documentation for  
       -- ...                                      vk.com - vk                               each programming lan,franmework
                                                   youtube.com - yt                          or something else
						  _________________________                  $ notion - url-alias-list for 
						     Work & Productive:                      notion itself
						  -------------------------
						   notion.com - notion
						   google inbox - gmail 
						   vercel.com - vercel
						   github.com - github
						  _________________________
						     Other & Feature's 
						  -------------------------
						  monkeytype.com - monkeytype
						  StackOverFlow.com - wtf
						  -------------------------"
echo ""


# Url-Alias-List 
# Figma
Function figma-start {Start-Process chrome "https://www.figma.com"}
Set-Alias -Name figma -Value figma-start

# Youtube
Function yt-start {Start-Process chrome "https://www.youtube.com"}
Set-Alias -Name yt -Value yt-start

# Vk.com
Function vk-start {Start-Process chrome "https://www.vk.com"}
Set-Alias -Name vk -Value vk-start

# Stackoverflow
Function sof-start {Start-Process chrome "https://www.stackoverflow.com"}
Set-Alias -Name wtf -Value sof-start

############################### Notion - Main Page ###################################
Function notion-info-echo {
	echo "##############################################"
	echo "<-------------------------------------------->"
	echo "Main page                           --main    "
	echo "My Links                            --links   "
	echo "Journal                             --journal "
	echo "Technology                          --tech    "
	echo "Shopping List                       --shoplist"
	echo "<-------------------------------------------->"
	echo "##############################################"} 

Set-Alias -Name notion -Value notion-info-echo
# Main page
Function notion-main {Start-Process chrome "https://www.notion.so/TerrniT-s-Main-Page-917d2cdd04ad4f658d6017ddc9504334"}
Set-Alias -Name main -Value notion-main

# My Links
Function notion-links {Start-Process chrome "https://www.notion.so/c08f4fad4df9490380208460cd7f35fe?v=19667193230f43d2b04d270650ac90f7"}
Set-Alias -Name links -Value notion-links

# Journal
Function notion-journal {Start-Process chrome "https://www.notion.so/8703886f99f040a5a63b8db03939c1b3?v=aca80fc12d6942e3bd4e0d5d5be44f01"}
Set-Alias -Name journal -Value notion-journal

# Technology
Function notion-tech {Start-Process chrome "https://www.notion.so/Technology-058359b19c634debabd1f87bd6fb1ab0"}
Set-Alias -Name tech -Value notion-tech

# Shopping List
Function notion-shoplist {Start-Process chrome "https://www.notion.so/Shopping-List-43714dee0292403c8351bd81d54d6eb7"}
Set-Alias -Name shoplist -Value notion-shoplist



# Github - Main Page
Function github-start {Start-Process chrome "https://github.com/TerrniT"}
Set-Alias -Name github -Value github-start

# Vercel - Main Page
Function vercel-start {Start-Process chrome "https://www.vercel.com/terrnit"}
Set-Alias -Name vercel -Value vercel-start

# Wakatime Dashboard
Function waka-start {Start-Process chrome "https://wakatime.com/dashboard"}
Set-Alias -Name waka -Value waka-start

# Google Mail - Inbox
Function gmail-start {Start-Process chrome "https://mail.google.com/mail/u/0/?pli=1#inbox"}
Set-Alias -Name gmail -Value gmail-start

# Monkeytype - Typing practice
Function monkey-start {Start-Process chrome "https://monkeytype.com"}
Set-Alias -Name monkeytype -Value monkey-start



#Mention: Download TIG and tmux 
