" @acidcupcake.vim
" @title: Acid Cupcake Colour Scheme
" @author: Jordan Santell
" @date: May 2011
" @copyright (c) 2011 Jordan Santell, under The MIT License (see LICENSE)
" Vim colour scheme
" Vim template based off of a modified take on Al Budden's Bandit Vim colour scheme
" Visually based off of code snippets from www.impactjs.com


hi clear
if exists("syntax_on")
	syntax reset
endif
let colors_name = "acidcupcake"
set background=dark


" Colour definitions


let Colour = {}
let Colour['BLACK'] = {"GUI" : "#212426", "256term" : "233", "16term" : "8" }
let Colour['WHITE'] = {"GUI" : "#FFFDEB", "256term" : "230", "16term" : "15" }
let Colour['GREEN'] = {"GUI" : "#AAEE22", "256term" : "154", "16term" : "10" }
let Colour['BLUE'] = {"GUI" : "#04DBE5", "256term" : "45", "16term" : "11" }
let Colour['PINK'] = {"GUI" : "#FF0077", "256term" : "198", "16term" : "13" }
let Colour['ORANGE'] = {"GUI" : "#FFB412", "256term" : "214", "16term" : "6" }
let Colour['GREY'] = {"GUI" : "#727879", "256term" : "242", "16term" : "7" }
let Colour['RED'] = {"GUI" : "#f63d4e", "256term" : "196", "16term" : "12" }
let Colour['YELLOW'] = {"GUI" : "#f6c83d","256term" : "220", "16term" : "14" }


" Assignments


let Assignment = {}
let Assignment['Normal'] = {"FG" : Colour['WHITE'], "BG" : Colour['BLACK'] }
let Assignment['Cursor'] = {"FG" : Colour['BLACK'], "BG" : Colour['WHITE'] }
let Assignment['lCursor'] = {"BG" : Colour['PINK'] }
let Assignment['DiffAdd'] = {"BG" : Colour['BLUE'] }
let Assignment['DiffChange'] = {"BG" : Colour['PINK'] }
let Assignment['DiffDelete'] = {"FG" : Colour['WHITE'], "BG" : Colour['PINK'] }
let Assignment['DiffText'] = {"BG" : Colour['RED'], "STYLE" : "Bold"}
let Assignment['Directory'] = {"FG" : Colour['BLUE'] }
let Assignment['ErrorMsg'] = {"FG" : Colour['WHITE'], "BG" : Colour["RED"] }
let Assignment['FoldColumn'] = {"FG" : Colour['BLUE'], "BG" : Colour["GREY"] }
let Assignment['Folded'] = {"FG" : Colour['BLUE'], "BG" : Colour["GREY"] }
let Assignment['IncSearch'] = {"FG" : Colour['BLACK'], "BG" : Colour['WHITE'] }
let Assignment['LineNr'] = {"FG" : Colour['GREY'] }
let Assignment['ModeMsg'] = {"STYLE" : "Bold" }
let Assignment['MoreMsg'] = {"FG" : Colour['GREEN'], "STYLE" : "Bold" }
let Assignment['NonText'] = {"FG" : Colour['GREEN'], "BG" : Colour['BLACK'], "STYLE" : "Bold"}
let Assignment['Pmenu'] = {"BG" : Colour['BLUE'] }
let Assignment['PmenuSel'] = {"FG" : Colour['WHITE'], "BG" : Colour['BLUE'] }
let Assignment['Question'] = {"FG" : Colour['GREEN'], "STYLE" : "Bold" }
let Assignment['Search'] = {"BG" : Colour['YELLOW'] } 
let Assignment['SpecialKey'] = {"FG" : Colour['BLUE'] }
let Assignment['StatusLine'] = {"FG" : Colour['YELLOW'], "BG" : Colour['BLUE'], "STYLE" : "Bold" }
let Assignment['StatusLineNC'] = {"FG" : Colour['BLACK'], "BG" : Colour['WHITE'], "STYLE" : "Bold" }
let Assignment['Title'] = {"FG" : Colour['PINK'], "STYLE" : "Bold" }
let Assignment['VertSplit'] = {"FG" : Colour['BLACK'], "BG" : Colour['WHITE'] }
let Assignment['Visual'] = {"FG" : Colour['GREY'], "BG" : Colour['WHITE'] }
let Assignment['VisualNOS'] = {"STYLE" : "underline,bold" }
let Assignment['WarningMsg'] = {"FG" : Colour['RED'] }
let Assignment['WildMenu'] = {"FG" : Colour['BLACK'], "BG" : Colour['YELLOW'] }


" Syntax 


" Grey
let Assignment['Comment'] = {"FG" : Colour['GREY'] }
" Pink
let Assignment['Function'] = {"FG" : Colour['PINK'] }
let Assignment['PreProc'] = {"FG" : Colour['PINK'] }
let Assignment['Special'] = {"FG" : Colour['PINK'] }
" Blue
let Assignment['Operator'] = {"FG" : Colour['BLUE'] }
" Orange
let Assignment['Constant'] = {"FG" : Colour['ORANGE'] }
let Assignment['Type'] = {"FG" : Colour['ORANGE'] }
let Assignment['Statement'] = {"FG" : Colour['ORANGE'] }
" Green
let Assignment['String'] = {"FG" : Colour['GREEN'] }
let Assignment['Boolean'] = {"FG" : Colour['GREEN'] }
let Assignment['Identifier'] = {"FG" : Colour['GREEN'] }

" Magic!
for key in keys(Assignment)
	let s:colours = Assignment[key]
	if has_key(s:colours, 'STYLE')
		let style = s:colours['STYLE']
	else
		let style = 'NONE'
	endif
	if has_key(s:colours, 'FG')
		let fg_gui = s:colours['FG']['GUI']
		let fg_256 = s:colours['FG']['256term']
		let fg_16 = s:colours['FG']['16term']
	else
		let fg_gui = 'NONE'
		let fg_256 = 'NONE'
		let fg_16 = 'NONE'
	endif
	if has_key(s:colours, 'BG')
		let bg_gui = s:colours['BG']['GUI']
		let bg_256 = s:colours['BG']['256term']
		let bg_16 = s:colours['BG']['16term']
	else
		let bg_gui = 'NONE'
		let bg_256 = 'NONE'
		let bg_16 = 'NONE'
	endif
	execute "hi ".key." cterm=".style." gui=".style." ctermfg=".fg_256." ctermbg=".bg_256." guifg=".fg_gui." guibg=".bg_gui
endfor


" Language-specific Syntax


" HTML
hi link htmlTag         Keyword 
hi link htmlTagName     Conditional 
hi link htmlEndTag      Identifier 

" Javascript
hi link javaScriptBraces Operator
hi link javaScriptParens Operator
hi link javaScriptValue Constant
hi link javaScriptValue Constant

