"=============================================================================
" File: morse.vim ~ script for writing morse code in vim
" Maintainer: Jiri Brezina (brz@centrum.cz)
" Primary URL: http://brz.d2.cz/
" Last Change: $Date: 2002/02/06 06:11:20 $
" Version: $Revision: 1.0 $
"-----------------------------------------------------------------------------
" Just put this file into your $VIMRUNTIME/plugin/ directory,
" or source it directly by command ":so ./path/to/file/morse.vim"

" Type <F5> to start 'morse' in normal or insert mode and type <F5>
" again to stop it. (Remaping this keystroke is on lines 33-34)

" Is possible switch on some 'special' characters like ,;/?.: to morse
" If you want this, please, uncomment next line
"	let g:var_morse_ext = 1

" Maybe is good (?) to treble spaces between words for better reading 
" If you want this, please, uncomment next line
"	let g:var_morse_3spc = 1

"=============================================================================
" Has this already been loaded?
"---------------------------
if exists ( "g:loaded_morse_code" )
    finish
endif
let g:loaded_morse_code = 1

"---------------------------
" Map the function to a key
"---------------------------
	 map <F5> :call Morse()<CR><C-L>
	imap <F5> <C-O>:call Morse()<CR>

"---------------------------
" Function
"---------------------------
function! Morse()
	if exists ("g:var_morse_on")
	     unlet g:var_morse_on
		iu a
		iu A
		iu b
		iu B
		iu c
		iu C
		iu d
		iu D
		iu e
		iu E
		iu f
		iu F
		iu g
		iu G
		iu h
		iu H
		iu i
		iu I
		iu j
		iu J
		iu k
		iu K
		iu l
		iu L
		iu m
		iu M
		iu n
		iu N
		iu o
		iu O
		iu p
		iu P
		iu q
		iu Q
		iu r
		iu R
		iu s
		iu S
		iu t
		iu T
		iu u
		iu U
		iu v
		iu V
		iu w
		iu W
		iu x
		iu X
		iu y
		iu Y
		iu z
		iu Z
		iu 0
		iu 1
		iu 2
		iu 3
		iu 4
		iu 5
		iu 6
		iu 7
		iu 8
		iu 9
			if exists ("g:var_morse_ext")
				iu .
				iu ,
				iu :
				iu ?
				iu '
				iu -
				iu /
				iu (
				iu )
				iu "
			endif
			if exists ("g:var_morse_3spc")
				iu <Space>
			endif
	else
	    let g:var_morse_on = 1
		inoremap a .- 
		inoremap A .- 
		inoremap b -... 
		inoremap B -... 
		inoremap c -.-. 
		inoremap C -.-. 
		inoremap d -.. 
		inoremap D -.. 
		inoremap e . 
		inoremap E . 
		inoremap f ..-. 
		inoremap F ..-. 
		inoremap g --. 
		inoremap G --. 
		inoremap h .... 
		inoremap H .... 
		inoremap i .. 
		inoremap I .. 
		inoremap j .--- 
		inoremap J .--- 
		inoremap k -.- 
		inoremap K -.- 
		inoremap l .-.. 
		inoremap L .-.. 
		inoremap m -- 
		inoremap M -- 
		inoremap n -. 
		inoremap N -. 
		inoremap o --- 
		inoremap O --- 
		inoremap p .--. 
		inoremap P .--. 
		inoremap q --.- 
		inoremap Q --.- 
		inoremap r .-. 
		inoremap R .-. 
		inoremap s ... 
		inoremap S ... 
		inoremap t - 
		inoremap T - 
		inoremap u ..- 
		inoremap U ..- 
		inoremap v ...- 
		inoremap V ...- 
		inoremap w .-- 
		inoremap W .-- 
		inoremap x -..- 
		inoremap X -..- 
		inoremap y -.-- 
		inoremap Y -.-- 
		inoremap z --.. 
		inoremap Z --.. 
		inoremap 0 ----- 
		inoremap 1 .---- 
		inoremap 2 ..--- 
		inoremap 3 ...-- 
		inoremap 4 ....- 
		inoremap 5 ..... 
		inoremap 6 -.... 
		inoremap 7 --... 
		inoremap 8 ---.. 
		inoremap 9 ----. 
			if exists ("g:var_morse_ext")
				"Some next characters, switch it's mapping
				" by uncomment the next line:
				" let g:var_morse_ext = 1
					"Full-stop (period)
				inoremap . .-.-.- 
				 	"Comma
				inoremap , --..-- 
					"Colon
				inoremap : ---... 
					"Question mark (query)
				inoremap ? ..--.. 
					"Apostrophe
				inoremap ' .----. 
					"Hyphen
				inoremap - -....- 
					"Fraction bar
				inoremap / -..-. 
					"Brackets (parentheses)
				inoremap ( -.--.- 
				inoremap ) -.--.- 
					"Quotation marks
				inoremap " .-..-. 
			endif
			if exists ("g:var_morse_3spc")
				inoremap <Space> <Space><Space><Space>
			endif
	endif
endfunction
"------------------------------------------------------------------------------


